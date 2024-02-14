.class public Lcom/oplus/app/OPlusAccessControlManager;
.super Ljava/lang/Object;
.source "OPlusAccessControlManager.java"


# static fields
.field public static final whitelist ACCESS_CONTROL_LOCK_ENABLED:Ljava/lang/String; = "access_control_lock_enabled"

.field public static final whitelist ACCESS_CONTROL_LOCK_MODE:Ljava/lang/String; = "access_control_lock_mode"

.field public static final whitelist ACCESS_CONTROL_PACKAGE_NAME:Ljava/lang/String; = "Access_Control_Package_Name"

.field public static final whitelist ACCESS_CONTROL_PACKAGE_USERID:Ljava/lang/String; = "Access_Control_Package_UserId"

.field public static final whitelist FLAG_ENCRYPTED:I = 0x8

.field public static final whitelist FLAG_HIDE_ICON:I = 0x1

.field public static final whitelist FLAG_HIDE_IN_RECENT:I = 0x2

.field public static final whitelist FLAG_HIDE_NOTICE:I = 0x4

.field public static final blacklist LAUNCH_ACTIVITY_OPTIONS:Ljava/lang/String; = "Launch_Activity_Options"

.field public static final whitelist LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "Launch_Windowing_Mode"

.field public static final whitelist MODE_EACH:I = 0x0

.field public static final whitelist MODE_LOCK_SCREEN:I = 0x1

.field public static final whitelist RUS_TYPE_FILTER:I = 0x0

.field public static final whitelist RUS_TYPE_HIDE_KEYGUARD_LOCK:I = 0x1

.field public static final whitelist SHOW_WHEN_LOCK:Ljava/lang/String; = "show_when_lock"

.field private static final blacklist TAG:Ljava/lang/String; = "OPlusAccessControlManager"

.field public static final whitelist TASK_ID:Ljava/lang/String; = "task_id"

.field public static final whitelist TYPE_ENCRYPT:Ljava/lang/String; = "type_encrypt"

.field public static final whitelist TYPE_ENCRYPT_IGNORE_ENABLE:Ljava/lang/String; = "type_encrypt_ignore_enable"

.field public static final whitelist TYPE_HIDE:Ljava/lang/String; = "type_hide"

.field public static final whitelist TYPE_HIDE_IGNORE_ENABLE:Ljava/lang/String; = "type_hide_ignore_enable"

.field public static final whitelist USER_CURRENT:I

.field public static final whitelist USER_XSPACE:I = 0x3e7

.field private static volatile blacklist sInstance:Lcom/oplus/app/OPlusAccessControlManager;


# instance fields
.field private final blacklist mService:Lcom/oplus/app/IOplusAccessControlManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/app/OPlusAccessControlManager;->sInstance:Lcom/oplus/app/OPlusAccessControlManager;

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    nop

    .line 81
    const-string v0, "oplus_accesscontrol"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/oplus/app/IOplusAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusAccessControlManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    .line 82
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/app/OPlusAccessControlManager;
    .locals 2

    .line 89
    sget-object v0, Lcom/oplus/app/OPlusAccessControlManager;->sInstance:Lcom/oplus/app/OPlusAccessControlManager;

    if-nez v0, :cond_1

    .line 90
    const-class v0, Lcom/oplus/app/OPlusAccessControlManager;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/oplus/app/OPlusAccessControlManager;->sInstance:Lcom/oplus/app/OPlusAccessControlManager;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/oplus/app/OPlusAccessControlManager;

    invoke-direct {v1}, Lcom/oplus/app/OPlusAccessControlManager;-><init>()V

    sput-object v1, Lcom/oplus/app/OPlusAccessControlManager;->sInstance:Lcom/oplus/app/OPlusAccessControlManager;

    .line 94
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 96
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/app/OPlusAccessControlManager;->sInstance:Lcom/oplus/app/OPlusAccessControlManager;

    return-object v0
.end method


# virtual methods
.method public whitelist addAccessControlPassForUser(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "windowMode"    # I
    .param p3, "userId"    # I

    .line 265
    return-void
.end method

.method public whitelist addEncryptPass(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "windowMode"    # I
    .param p3, "userId"    # I

    .line 165
    const/16 v0, 0x3e7

    if-eq p3, v0, :cond_0

    .line 166
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move p3, v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/app/IOplusAccessControlManager;->addEncryptPass(Ljava/lang/String;II)V

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "OPlusAccessControlManager"

    const-string v1, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    nop

    .line 176
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "addEncryptPass exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_0

    .line 117
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move p2, v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0, p1, p2}, Lcom/oplus/app/IOplusAccessControlManager;->getAccessControlAppsInfo(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    const-string v0, "OPlusAccessControlManager"

    const-string v1, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "getAccessControlAppsInfo exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getAccessControlEnabled(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "enable":Z
    const/16 v1, 0x3e7

    if-eq p2, v1, :cond_0

    .line 150
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move p2, v1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v1, p1, p2}, Lcom/oplus/app/IOplusAccessControlManager;->getAccessControlEnabled(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 155
    :cond_1
    const-string v1, "OPlusAccessControlManager"

    const-string v2, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    nop

    .line 160
    return v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAccessControlEnabled exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPrivacyAppInfo(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v0, "accessControlInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public whitelist isAccessControlPassForUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEncryptPass(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "pass":Z
    const/16 v1, 0x3e7

    if-eq p2, v1, :cond_0

    .line 182
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move p2, v1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v1, p1, p2}, Lcom/oplus/app/IOplusAccessControlManager;->isEncryptPass(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 187
    :cond_1
    const-string v1, "OPlusAccessControlManager"

    const-string v2, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    nop

    .line 192
    return v0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "isEncryptPass exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist isEncryptedPackage(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "isEncrypted":Z
    const/16 v1, 0x3e7

    if-eq p2, v1, :cond_0

    .line 199
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move p2, v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v1, :cond_1

    .line 202
    invoke-interface {v1, p1, p2}, Lcom/oplus/app/IOplusAccessControlManager;->isEncryptedPackage(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 204
    :cond_1
    const-string v1, "OPlusAccessControlManager"

    const-string v2, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    nop

    .line 209
    return v0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "isEncryptedPackage remoteException "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist registerAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/oplus/app/IOplusAccessControlObserver;

    .line 214
    const-string v0, "OPlusAccessControlManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v2, :cond_0

    .line 215
    invoke-interface {v2, p1, p2}, Lcom/oplus/app/IOplusAccessControlManager;->registerAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z

    move-result v0

    return v0

    .line 217
    :cond_0
    const-string v2, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return v1

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "registerAccessControlObserver remoteException "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 224
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist setAccessControlAppsInfo(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 101
    .local p2, "accessControlInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v0, 0x3e7

    if-eq p3, v0, :cond_0

    .line 102
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move p3, v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/app/IOplusAccessControlManager;->setAccessControlAppsInfo(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "OPlusAccessControlManager"

    const-string v1, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    nop

    .line 112
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setAccessControlAppsInfo exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setAccessControlEnabled(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 133
    const/16 v0, 0x3e7

    if-eq p3, v0, :cond_0

    .line 134
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move p3, v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/app/IOplusAccessControlManager;->setAccessControlEnabled(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "OPlusAccessControlManager"

    const-string v1, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    nop

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setAccessControlEnabled exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setPrivacyAppsInfoForUser(Ljava/util/Map;ZI)V
    .locals 0
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 257
    .local p1, "privacyInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public whitelist unregisterAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/oplus/app/IOplusAccessControlObserver;

    .line 229
    const-string v0, "OPlusAccessControlManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v2, :cond_0

    .line 230
    invoke-interface {v2, p1, p2}, Lcom/oplus/app/IOplusAccessControlManager;->unregisterAccessControlObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAccessControlObserver;)Z

    move-result v0

    return v0

    .line 232
    :cond_0
    const-string v2, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    return v1

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "unregisterAccessControlObserver remoteException "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 239
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist updateRusList(ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p2, "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OPlusAccessControlManager;->mService:Lcom/oplus/app/IOplusAccessControlManager;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/app/IOplusAccessControlManager;->updateRusList(ILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 247
    :cond_0
    const-string v0, "OPlusAccessControlManager"

    const-string v1, "setAccessControlAppsInfo: AccessControl Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    nop

    .line 252
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "updateRusList exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
