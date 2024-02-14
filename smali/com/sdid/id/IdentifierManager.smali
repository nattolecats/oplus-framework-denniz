.class public Lcom/sdid/id/IdentifierManager;
.super Ljava/lang/Object;
.source "IdentifierManager.java"


# static fields
.field private static final blacklist APPLICATION_ANONYMOUS_ID:Ljava/lang/String; = "AUID"

.field private static final blacklist DUID_URI:Landroid/net/Uri;

.field private static final blacklist KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final blacklist KEY_RESULT:Ljava/lang/String; = "result"

.field private static final blacklist KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final blacklist MEHTOD:Ljava/lang/String; = "getDUID"

.field private static final blacklist OPEN_ANONYMOUS_ID:Ljava/lang/String; = "OUID"

.field private static final blacklist OPEN_ANONYMOUS_ID_AVAILABLE:I = 0x1

.field private static final blacklist OPEN_ANONYMOUS_ID_DISAVAILABLE:I = 0x0

.field private static final blacklist OPEN_ANONYMOUS_ID_SETTING_KEY:Ljava/lang/String; = "openid_toggle"

.field private static final blacklist UNIQUE_DEVICE_ID:Ljava/lang/String; = "GUID"

.field private static final blacklist VENDER_ANONYMOUS_ID:Ljava/lang/String; = "DUID"

.field private static final blacklist sProvider:Lcom/android/id/impl/IdProviderImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    const-string v0, "content://com.oplus.omes.ids_provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sdid/id/IdentifierManager;->DUID_URI:Landroid/net/Uri;

    .line 75
    new-instance v0, Lcom/android/id/impl/IdProviderImpl;

    invoke-direct {v0}, Lcom/android/id/impl/IdProviderImpl;-><init>()V

    sput-object v0, Lcom/sdid/id/IdentifierManager;->sProvider:Lcom/android/id/impl/IdProviderImpl;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    sget-object v0, Lcom/sdid/id/IdentifierManager;->sProvider:Lcom/android/id/impl/IdProviderImpl;

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    sget-object v0, Lcom/sdid/id/IdentifierManager;->sProvider:Lcom/android/id/impl/IdProviderImpl;

    const-string v1, "OUID"

    invoke-virtual {v0, p0, v1}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "sig"    # Landroid/content/pm/Signature;
    .param p1, "type"    # Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 211
    .local v1, "hexBytes":[B
    const/4 v2, 0x0

    .line 213
    .local v2, "fingerprint":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 214
    .local v0, "digest":Ljava/security/MessageDigest;
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 216
    .local v3, "digestBytes":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0xff

    .line 218
    .local v5, "digestByteMask":I
    const/16 v6, 0x100

    .line 219
    .local v6, "orMask":I
    const/4 v7, 0x1

    .line 220
    .local v7, "start":I
    const/4 v8, 0x3

    .line 221
    .local v8, "end":I
    array-length v9, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_0

    aget-byte v11, v3, v10

    .line 222
    .local v11, "digestByte":B
    and-int/lit16 v12, v11, 0xff

    or-int/lit16 v12, v12, 0x100

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    .line 223
    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 222
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    nop

    .end local v11    # "digestByte":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    .line 228
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "digestBytes":[B
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "digestByteMask":I
    .end local v6    # "orMask":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    :cond_1
    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 229
    :goto_1
    return-object v2
.end method

.method private static blacklist getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 202
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    move-object v0, v1

    .line 203
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 204
    :catch_0
    move-exception v1

    .line 206
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getSingInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sdid/id/IdentifierManager;->getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 192
    .local v1, "signs":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_0

    .line 193
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "SHA1"

    invoke-static {v2, v3}, Lcom/sdid/id/IdentifierManager;->getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method public static whitelist getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    sget-object v0, Lcom/sdid/id/IdentifierManager;->sProvider:Lcom/android/id/impl/IdProviderImpl;

    const-string v1, "GUID"

    invoke-virtual {v0, p0, v1}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getVAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    invoke-static {p0}, Lcom/sdid/id/IdentifierManager;->getVAIDInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getVAIDInner(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    const-string v0, ""

    .line 176
    .local v0, "duid":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v1, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Lcom/sdid/id/IdentifierManager;->getSingInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "arg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sdid/id/IdentifierManager;->DUID_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    const-string v4, "getDUID"

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 182
    .local v3, "result":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v4

    .line 185
    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "result":Landroid/os/Bundle;
    goto :goto_1

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static whitelist isLimited(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    invoke-static {p0}, Lcom/sdid/id/IdentifierManager;->isLimitedInner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isLimitedInner(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 161
    return v0

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/android/id/impl/IdProviderImpl;->checkSelfOAIDPermission(Landroid/content/Context;)I

    move-result v1

    .line 164
    .local v1, "selfOAIDStatus":I
    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 166
    .local v2, "userId":I
    nop

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 166
    const-string v5, "openid_toggle"

    invoke-static {v4, v5, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0

    .line 171
    .end local v2    # "userId":I
    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    return v0
.end method

.method public static whitelist isSupported()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method
