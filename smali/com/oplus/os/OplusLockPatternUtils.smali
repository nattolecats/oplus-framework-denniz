.class public Lcom/oplus/os/OplusLockPatternUtils;
.super Ljava/lang/Object;
.source "OplusLockPatternUtils.java"


# static fields
.field private static final blacklist IOplusLockPatternUtilsSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oplus/os/IOplusLockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusLockPatternUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/oplus/os/OplusLockPatternUtils$1;

    invoke-direct {v0}, Lcom/oplus/os/OplusLockPatternUtils$1;-><init>()V

    sput-object v0, Lcom/oplus/os/OplusLockPatternUtils;->IOplusLockPatternUtilsSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getService()Lcom/oplus/os/IOplusLockPatternUtils;
    .locals 1

    .line 41
    sget-object v0, Lcom/oplus/os/OplusLockPatternUtils;->IOplusLockPatternUtilsSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/os/IOplusLockPatternUtils;

    return-object v0
.end method


# virtual methods
.method public whitelist generateDerivedPassword([B[B[B)[B
    .locals 4
    .param p1, "pubKey"    # [B
    .param p2, "ePassword"    # [B
    .param p3, "eSalt"    # [B

    .line 167
    const-string v0, "OplusLockPatternUtils"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    const/4 v1, 0x0

    .line 173
    .local v1, "passwordVerify":[B
    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusLockPatternUtils;->getService()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/oplus/os/IOplusLockPatternUtils;->generateDerivedPassword([B[B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 168
    .end local v1    # "passwordVerify":[B
    :cond_1
    :goto_1
    const-string v1, "Failure to generateDerivedPassword, account or salt byte is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDerivedPasswordInfo([B[B)Ljava/util/Map;
    .locals 4
    .param p1, "pubkeyForPassword"    # [B
    .param p2, "pubkeyForSalt"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 126
    const-string v0, "OplusLockPatternUtils"

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 132
    .local v1, "derivedInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusLockPatternUtils;->getService()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/oplus/os/IOplusLockPatternUtils;->getDerivedPasswordInfo([B[B)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 127
    .end local v1    # "derivedInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_1
    :goto_1
    const-string v1, "Failure to getDerivedPasswordInfo, pubKey is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPublicKey()[B
    .locals 4

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "publicKey":[B
    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusLockPatternUtils;->getService()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/os/IOplusLockPatternUtils;->getPublicKey()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusLockPatternUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist getVersionInfo()[B
    .locals 4

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "versionInfo":[B
    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusLockPatternUtils;->getService()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/os/IOplusLockPatternUtils;->getVersionInfo()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusLockPatternUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist notifySrpLockVerify([B)V
    .locals 3
    .param p1, "eSalt"    # [B

    .line 82
    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusLockPatternUtils;->getService()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/os/IOplusLockPatternUtils;->notifySrpLockVerify([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusLockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist registSrpCredential()V
    .locals 3

    .line 96
    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusLockPatternUtils;->getService()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/os/IOplusLockPatternUtils;->registSrpCredential()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusLockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist unRegistSrpCredential()V
    .locals 3

    .line 110
    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusLockPatternUtils;->getService()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/os/IOplusLockPatternUtils;->unRegistSrpCredential()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusLockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
