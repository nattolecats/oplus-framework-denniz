.class public Lcom/android/id/impl/IdProviderImpl;
.super Ljava/lang/Object;
.source "IdProviderImpl.java"


# static fields
.field private static final blacklist ACTION_REQUEST_OAID_PERMISSION:Ljava/lang/String; = "com.oplus.omes.REQUEST_OAID_PERMISSION"

.field private static final blacklist ANDROID_REQUEST_PERMISSIONS_WHO:Ljava/lang/String; = "@android:requestPermissions:"

.field private static final blacklist CLASSNAME_GRANT_OAID_PERM_ACTIVITY:Ljava/lang/String; = "com.heytap.openid.oaidcontrolled.view.GrantOAIDPermissionActivity"

.field private static final blacklist OMES_CHECK_OAID_PERMISSION_METHOD:Ljava/lang/String; = "checkSelfOAIDPermission"

.field private static final blacklist OMES_CHECK_OAID_RESULT_KEY:Ljava/lang/String; = "oaidStatus"

.field private static final blacklist OMES_GET_OAID_METHOD:Ljava/lang/String; = "OUID"

.field private static final blacklist OMES_OAID_STATUS_URI:Landroid/net/Uri;

.field private static final blacklist OPENID_PKG_NAME:Ljava/lang/String; = "com.heytap.openid"

.field private static final blacklist PERMISSION_DENIED:I = -0x1

.field private static final blacklist PERMISSION_GRANTED:I = 0x0

.field private static final blacklist PERMISSION_NOT_SUPPORT:I = -0x2

.field private static final blacklist PERMISSION_OAID_NAME:Ljava/lang/String; = "com.oplus.permission.OBTAIN_OAID"

.field private static final blacklist TAG:Ljava/lang/String; = "IdProviderImpl"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    const-string v0, "content://com.oplus.omes.oaid_status_provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/id/impl/IdProviderImpl;->OMES_OAID_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static whitelist checkSelfOAIDPermission(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    const-string v0, "IdProviderImpl"

    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/id/impl/IdProviderImpl;->OMES_OAID_STATUS_URI:Landroid/net/Uri;

    .line 135
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_1

    .line 137
    :try_start_1
    const-string v3, "check oaid failed: client is null."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    nop

    .line 146
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    :cond_0
    return v1

    .line 140
    :cond_1
    :try_start_3
    const-string v3, "checkSelfOAIDPermission"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 141
    .local v3, "result":Landroid/os/Bundle;
    if-nez v3, :cond_3

    .line 142
    const-string v4, "check oaid failed: result is null."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    nop

    .line 146
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    :cond_2
    return v1

    .line 145
    :cond_3
    :try_start_5
    const-string v4, "oaidStatus"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 145
    :cond_4
    return v4

    .line 134
    .end local v3    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    :cond_5
    :goto_0
    throw v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 146
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check oaid remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method private static blacklist getOUIDByOpenIDApk(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 230
    const-string v0, "OUID"

    const-string v1, "IdProviderImpl"

    const-string v2, ""

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v3, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/id/impl/IdProviderImpl;->OMES_OAID_STATUS_URI:Landroid/net/Uri;

    .line 232
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v4, "client":Landroid/content/ContentProviderClient;
    if-nez v4, :cond_1

    .line 234
    :try_start_1
    const-string v0, "get oaid failed: client is null."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    nop

    .line 243
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    :cond_0
    return-object v2

    .line 237
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v5, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 238
    .local v5, "result":Landroid/os/Bundle;
    if-nez v5, :cond_3

    .line 239
    const-string v0, "get oaid failed: result is null."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    nop

    .line 243
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 240
    :cond_2
    return-object v2

    .line 242
    :cond_3
    :try_start_5
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 242
    :cond_4
    return-object v0

    .line 231
    .end local v5    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local p0    # "context":Landroid/content/Context;
    :cond_5
    :goto_0
    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 243
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get oaid remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method private static blacklist getOUIDInner(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 216
    invoke-static {}, Lcom/android/id/impl/IdProviderImpl;->isOpenIDApkCalling()Z

    move-result v0

    .line 217
    .local v0, "isOpenIDApkCall":Z
    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Landroid/app/OplusNotificationManager;

    invoke-direct {v1}, Landroid/app/OplusNotificationManager;-><init>()V

    .line 219
    .local v1, "onm":Landroid/app/OplusNotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v4, "OUID"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/OplusNotificationManager;->getStdid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 222
    .end local v1    # "onm":Landroid/app/OplusNotificationManager;
    :cond_0
    invoke-static {p0}, Lcom/android/id/impl/IdProviderImpl;->getOUIDByOpenIDApk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "sig"    # Landroid/content/pm/Signature;
    .param p1, "type"    # Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 271
    .local v1, "hexBytes":[B
    const/4 v2, 0x0

    .line 273
    .local v2, "fingerprint":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 274
    .local v0, "digest":Ljava/security/MessageDigest;
    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 276
    .local v3, "digestBytes":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0xff

    .line 278
    .local v5, "digestByteMask":I
    const/16 v6, 0x100

    .line 279
    .local v6, "orMask":I
    const/4 v7, 0x1

    .line 280
    .local v7, "start":I
    const/4 v8, 0x3

    .line 281
    .local v8, "end":I
    array-length v9, v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_0

    aget-byte v11, v3, v10

    .line 282
    .local v11, "digestByte":B
    and-int/lit16 v12, v11, 0xff

    or-int/lit16 v12, v12, 0x100

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    .line 283
    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 282
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    nop

    .end local v11    # "digestByte":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    .line 288
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "digestBytes":[B
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "digestByteMask":I
    .end local v6    # "orMask":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    :cond_1
    goto :goto_1

    .line 287
    :catch_0
    move-exception v0

    .line 289
    :goto_1
    return-object v2
.end method

.method private static blacklist getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 262
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    move-object v0, v1

    .line 263
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 264
    :catch_0
    move-exception v1

    .line 266
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getSingInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/id/impl/IdProviderImpl;->getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 252
    .local v1, "signs":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_0

    .line 253
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "SHA1"

    invoke-static {v2, v3}, Lcom/android/id/impl/IdProviderImpl;->getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    return-object v0
.end method

.method private static blacklist isOpenIDApkCalling()Z
    .locals 2

    .line 226
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.openid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist requestOAIDPermission(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.omes.REQUEST_OAID_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oplus.permission.OBTAIN_OAID"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "permissions":[Ljava/lang/String;
    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.oaidcontrolled.view.GrantOAIDPermissionActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 186
    const-string v2, "IdProviderImpl"

    const-string v3, "can not resolve oaid activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 189
    :cond_0
    const/4 v2, 0x0

    const-string v3, "@android:requestPermissions:"

    invoke-virtual {p0, v3, v0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 190
    return-void
.end method


# virtual methods
.method public whitelist checkGetAPID(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    const-string v0, "APID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->checkGetStdid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist checkGetGUID(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    const-string v0, "GUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->checkGetStdid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist checkGetOpenid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/id/impl/IdProviderImpl;->checkGetStdid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist checkGetStdid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    new-instance v0, Landroid/app/OplusNotificationManager;

    invoke-direct {v0}, Landroid/app/OplusNotificationManager;-><init>()V

    .line 106
    .local v0, "onm":Landroid/app/OplusNotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/OplusNotificationManager;->checkGetStdid(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist getAPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    const-string v0, "APID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    const-string v0, "AUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const-string v0, "DUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    const-string v0, "GUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    const-string v0, "OUID"

    invoke-virtual {p0, p1, v0}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOpenid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/id/impl/IdProviderImpl;->getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStdid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .line 54
    const-string v0, "OUID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1}, Lcom/android/id/impl/IdProviderImpl;->getOUIDInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Landroid/app/OplusNotificationManager;

    invoke-direct {v0}, Landroid/app/OplusNotificationManager;-><init>()V

    .line 59
    .local v0, "onm":Landroid/app/OplusNotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/OplusNotificationManager;->getStdid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
