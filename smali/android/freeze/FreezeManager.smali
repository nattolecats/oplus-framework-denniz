.class public Landroid/freeze/FreezeManager;
.super Ljava/lang/Object;
.source "FreezeManager.java"


# static fields
.field public static final whitelist FREEZE_SETTING_CAN_REEZE:I = 0x1

.field public static final whitelist FREEZE_SETTING_NOMAL:I = 0x0

.field public static final whitelist FREEZE_SETTING_UNKNOW:I = -0x1

.field public static final whitelist FREEZE_STATE_FREEZED:I = 0x1

.field public static final whitelist FREEZE_STATE_NOMAL:I = 0x0

.field public static final whitelist FREEZE_STATE_UNKNOW:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FreezeManager"

.field private static volatile blacklist sFreezeManager:Landroid/freeze/FreezeManager;

.field private static volatile blacklist sFreezeSupport:Ljava/lang/Boolean;


# instance fields
.field private blacklist mOplusPackageManager:Landroid/content/pm/OplusPackageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/freeze/FreezeManager;->sFreezeSupport:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    iput-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    .line 52
    return-void
.end method

.method public static whitelist getInstance()Landroid/freeze/FreezeManager;
    .locals 2

    .line 55
    sget-object v0, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Landroid/freeze/FreezeManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Landroid/freeze/FreezeManager;

    invoke-direct {v1}, Landroid/freeze/FreezeManager;-><init>()V

    sput-object v1, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Landroid/freeze/FreezeManager;->sFreezeManager:Landroid/freeze/FreezeManager;

    return-object v0
.end method

.method public static whitelist isFreezeSupport(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Landroid/freeze/FreezeManager;->sFreezeSupport:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Landroid/freeze/FreezeManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Landroid/freeze/FreezeManager;->sFreezeSupport:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v2, "oplus.software.forwardly_freeze"

    invoke-virtual {v1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 70
    .local v1, "support":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Landroid/freeze/FreezeManager;->sFreezeSupport:Ljava/lang/Boolean;

    .line 72
    .end local v1    # "support":Z
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Landroid/freeze/FreezeManager;->sFreezeSupport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    if-nez p1, :cond_0

    .line 135
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageFreezeState(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 87
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p0, p1, v0}, Landroid/freeze/FreezeManager;->getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    return v1
.end method

.method public whitelist getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public whitelist getPackageFreezeUserSetting(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 98
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 99
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p0, p1, v0}, Landroid/freeze/FreezeManager;->getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    return v1
.end method

.method public whitelist getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 103
    if-nez p2, :cond_0

    .line 104
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public whitelist getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    if-nez p1, :cond_0

    .line 142
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isFreezeEnabled()Z
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->isFreezeEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist setFreezeEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 82
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->setFreezeEnable(Z)V

    .line 83
    return-void
.end method

.method public whitelist setPackageFreezeState(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 110
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 111
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p0, p1, p2, v0}, Landroid/freeze/FreezeManager;->setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 112
    return-void
.end method

.method public whitelist setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 115
    if-nez p3, :cond_0

    .line 116
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/OplusPackageManager;->setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 119
    return-void
.end method

.method public whitelist setPackageFreezeUserSetting(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "setting"    # I

    .line 122
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 123
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p0, p1, p2, v0}, Landroid/freeze/FreezeManager;->setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 124
    return-void
.end method

.method public whitelist setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "setting"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 127
    if-nez p3, :cond_0

    .line 128
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/freeze/FreezeManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/OplusPackageManager;->setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 131
    return-void
.end method
