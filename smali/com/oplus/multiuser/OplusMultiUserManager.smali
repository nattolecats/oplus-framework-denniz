.class public Lcom/oplus/multiuser/OplusMultiUserManager;
.super Ljava/lang/Object;
.source "OplusMultiUserManager.java"


# static fields
.field public static final whitelist FLAG_MULTI_SYSTEM:I = 0x20000000

.field private static final greylist IOplusMultiUserManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oplus/multiuser/IOplusMultiUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist TAG:Ljava/lang/String;

.field private static final blacklist sForbiddenPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sHasCheckClone:Z

.field private static blacklist sMultiSystemUserId:I

.field private static final blacklist sOplusMultiUserManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oplus/multiuser/OplusMultiUserManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 51
    const-string v0, "OplusMultiUserManager"

    sput-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sHasCheckClone:Z

    .line 55
    const/16 v0, -0x2710

    sput v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sMultiSystemUserId:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sForbiddenPkgList:Ljava/util/List;

    .line 60
    const-string v1, "com.heytap.cloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserManager$1;

    invoke-direct {v0}, Lcom/oplus/multiuser/OplusMultiUserManager$1;-><init>()V

    sput-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sOplusMultiUserManagerSingleton:Landroid/util/Singleton;

    .line 80
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserManager$2;

    invoke-direct {v0}, Lcom/oplus/multiuser/OplusMultiUserManager$2;-><init>()V

    sput-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->IOplusMultiUserManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getForbiddenPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sForbiddenPkgList:Ljava/util/List;

    return-object v0
.end method

.method public static whitelist getInstance()Lcom/oplus/multiuser/OplusMultiUserManager;
    .locals 1

    .line 108
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sOplusMultiUserManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/multiuser/OplusMultiUserManager;

    return-object v0
.end method

.method private blacklist getMultiSystemUserIdNoCheck()I
    .locals 5

    .line 175
    const/16 v0, -0x2710

    .line 177
    .local v0, "res":I
    :try_start_0
    invoke-static {}, Lcom/oplus/multiuser/OplusMultiUserManager;->getService()Lcom/oplus/multiuser/IOplusMultiUserManager;

    move-result-object v1

    .line 178
    .local v1, "service":Lcom/oplus/multiuser/IOplusMultiUserManager;
    invoke-interface {v1}, Lcom/oplus/multiuser/IOplusMultiUserManager;->getMultiSystemUserIdNoCheck()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 183
    .end local v1    # "service":Lcom/oplus/multiuser/IOplusMultiUserManager;
    :goto_0
    goto :goto_1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oplus/multiuser/OplusMultiUserManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/oplus/multiuser/OplusMultiUserManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMultiSystemUserIdNoCheck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 184
    :goto_1
    sget-object v1, Lcom/oplus/multiuser/OplusMultiUserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiSystemUserIdNoCheck res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v0
.end method

.method public static greylist getService()Lcom/oplus/multiuser/IOplusMultiUserManager;
    .locals 1

    .line 76
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->IOplusMultiUserManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/multiuser/IOplusMultiUserManager;

    return-object v0
.end method

.method public static blacklist isMultiSystemForbiddenPkg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sForbiddenPkgList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isSystemUserOrMultiSystemUserInSimpleState(Landroid/content/ContentResolver;I)Z
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .line 207
    const-string v0, "simple_mode_enabled"

    .line 208
    .local v0, "simpleModeEnableKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 209
    .local v1, "simpleModeDisableValue":I
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 212
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    return v2

    .line 217
    :cond_1
    :goto_0
    return v4
.end method


# virtual methods
.method public blacklist adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "currentUserId"    # I

    .line 228
    invoke-virtual {p0, p3}, Lcom/oplus/multiuser/OplusMultiUserManager;->isMultiSystemUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sput p3, Lcom/oplus/multiuser/OplusMultiUserManager;->sMultiSystemUserId:I

    .line 230
    const/high16 v0, 0x3f800000    # 1.0f

    .line 231
    .local v0, "defValue":F
    invoke-direct {p0, p1, p3}, Lcom/oplus/multiuser/OplusMultiUserManager;->isSystemUserOrMultiSystemUserInSimpleState(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const/4 v1, 0x0

    const-string v2, "font_scale"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->fontScale:F

    .line 235
    .end local v0    # "defValue":F
    :cond_0
    return-void
.end method

.method public whitelist getMultiSystemUserId()I
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserManager;->getMultiSystemUserIdNoCheck()I

    move-result v0

    return v0
.end method

.method public whitelist hasMultiSystemUser()Z
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserManager;->getMultiSystemUserIdNoCheck()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMultiSystemUser(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .line 158
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMultiSystemUserHandle(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 150
    if-nez p1, :cond_0

    .line 151
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/multiuser/OplusMultiUserManager;->isMultiSystemUserId(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiSystemUserId(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 136
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserManager;->getMultiSystemUserIdNoCheck()I

    move-result v0

    .line 137
    .local v0, "id":I
    const/16 v1, -0x2710

    if-eq v1, v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 138
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "userId"    # I

    .line 192
    sget-boolean v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sHasCheckClone:Z

    const/4 v1, 0x1

    const/16 v2, -0x2710

    if-nez v0, :cond_0

    sget v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sMultiSystemUserId:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/oplus/multiuser/OplusMultiUserManager;->getMultiSystemUserId()I

    move-result v0

    sput v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sMultiSystemUserId:I

    .line 194
    sput-boolean v1, Lcom/oplus/multiuser/OplusMultiUserManager;->sHasCheckClone:Z

    .line 196
    :cond_0
    sget v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sMultiSystemUserId:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-eqz p3, :cond_1

    if-ne p3, v0, :cond_2

    .line 198
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/oplus/multiuser/OplusMultiUserManager;->isSystemUserOrMultiSystemUserInSimpleState(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 200
    sget v0, Lcom/oplus/multiuser/OplusMultiUserManager;->sMultiSystemUserId:I

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 201
    return v1

    .line 203
    :cond_2
    return v3
.end method
