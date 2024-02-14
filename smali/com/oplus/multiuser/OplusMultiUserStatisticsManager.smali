.class public Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
.super Ljava/lang/Object;
.source "OplusMultiUserStatisticsManager.java"

# interfaces
.implements Lcom/oplus/multiuser/IOplusMultiUserStatisticsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;,
        Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;,
        Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;
    }
.end annotation


# static fields
.field private static final blacklist KeyguardUpdateMonitor:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static final blacklist PermissionPolicyService:Ljava/lang/String; = "com.android.server.policy.PermissionPolicyService"

.field private static final blacklist RoleManagerService:Ljava/lang/String; = "com.android.server.role.RoleManagerService"

.field private static final blacklist StorageManagerService:Ljava/lang/String; = "com.android.server.StorageManagerService"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist WallpaperManagerService:Ljava/lang/String; = "WallpaperManagerService"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sInstance:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;


# instance fields
.field private blacklist DISPATCH_SEND_RESULT_WARNING_TIMEOUT_MS:J

.field private blacklist SERVICE_CALL_WARN_TIME_MS_ONSTART:J

.field private blacklist SERVICE_CALL_WARN_TIME_MS_ONSWITCH:J

.field private blacklist mAmsSwitchUser_EnterTime:J

.field private blacklist mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

.field private blacklist mLockCreateUserEvent:Ljava/lang/Object;

.field private blacklist mLockSwitchUserEvent:Ljava/lang/Object;

.field private blacklist mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

.field private blacklist mOldUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

.field private blacklist mOplusMultiUserDcsUtil:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

.field private blacklist mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

.field private blacklist mUserSwitchUiEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->sInstance:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOplusMultiUserDcsUtil:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    .line 45
    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->SERVICE_CALL_WARN_TIME_MS_ONSTART:J

    .line 46
    iput-wide v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->SERVICE_CALL_WARN_TIME_MS_ONSWITCH:J

    .line 47
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->DISPATCH_SEND_RESULT_WARNING_TIMEOUT_MS:J

    .line 49
    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    .line 50
    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockCreateUserEvent:Ljava/lang/Object;

    .line 55
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mAmsSwitchUser_EnterTime:J

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mUserSwitchUiEnabled:Z

    .line 57
    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOldUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    .line 58
    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    .line 70
    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
    .locals 2

    .line 61
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->sInstance:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    invoke-direct {v1}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;-><init>()V

    sput-object v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->sInstance:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    .line 65
    :cond_0
    sget-object v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->sInstance:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleAddStringForCreateUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "handle":Z
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockCreateUserEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    if-eqz v2, :cond_1

    .line 148
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "flow_1.4.1_onNewUserCreatedEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "flow_1.3.1_createNewUserEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "flow_1.2.1_prepareUserDataEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "flow_1.1.1_createUserKeyEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 162
    :pswitch_0
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->onNewUserCreatedEx:Ljava/lang/String;

    .line 163
    const/4 v0, 0x1

    goto :goto_1

    .line 158
    :pswitch_1
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->createNewUserEx:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    .line 160
    goto :goto_1

    .line 154
    :pswitch_2
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->prepareUserDataEx:Ljava/lang/String;

    .line 155
    const/4 v0, 0x1

    .line 156
    goto :goto_1

    .line 150
    :pswitch_3
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->createUserKeyEx:Ljava/lang/String;

    .line 151
    const/4 v0, 0x1

    .line 167
    :cond_1
    :goto_1
    monitor-exit v1

    .line 168
    return v0

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x3811154e -> :sswitch_3
        -0xe185849 -> :sswitch_2
        0x2ffb636b -> :sswitch_1
        0x7ae06d05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleAddStringForSwitchUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "handle":Z
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v2, :cond_1

    .line 109
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "flow_2.3.1_onBeforeStartUser_prepareUserDataEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "flow_5.2.1_dispatchUserSwitch_WallpaperEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v3, "flow_3.3.1_onStartUser_PermissionPolicyServiceEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "flow_5.1.1_dispatchUserSwitch_KeyguardEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v3, "flow_2.4.1_onBeforeStartUser_reconcileAppsDataEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "flow_3.2.1_onStartUser_RoleManagerServiceEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v3, "flow_3.4.1_onStartUser_StorageManagerServiceEx"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_WallpaperManagerServiceEx:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    goto :goto_1

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_KeyguardUpdateMonitorEx:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    .line 133
    goto :goto_1

    .line 127
    :pswitch_2
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_StorageManagerServiceEx:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    .line 129
    goto :goto_1

    .line 123
    :pswitch_3
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_PermissionPolicyServiceEx:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    .line 125
    goto :goto_1

    .line 119
    :pswitch_4
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_RoleManagerServiceEx:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    .line 121
    goto :goto_1

    .line 115
    :pswitch_5
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_reconcileAppsDataEx:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    .line 117
    goto :goto_1

    .line 111
    :pswitch_6
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-object p2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_prepareUserDataEx:Ljava/lang/String;

    .line 112
    const/4 v0, 0x1

    .line 140
    :cond_1
    :goto_1
    monitor-exit v1

    .line 141
    return v0

    .line 140
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x3231674f -> :sswitch_6
        0xb93cbd8 -> :sswitch_5
        0x167771d8 -> :sswitch_4
        0x244a64ca -> :sswitch_3
        0x3c6ff4a1 -> :sswitch_2
        0x430692c3 -> :sswitch_1
        0x724d3e69 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleServiceOnStart(Ljava/lang/String;JILjava/util/Map;)V
    .locals 10
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "functionCost"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p5, "srcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p2, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_TotalCost:J

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "serviceName":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 354
    .local v1, "serviceCost":J
    const-wide/16 v3, 0x0

    .line 355
    .local v3, "maxCost":J
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 356
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    .line 357
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 358
    if-eqz v0, :cond_3

    .line 359
    cmp-long v7, v3, v1

    if-gez v7, :cond_0

    .line 360
    move-wide v3, v1

    .line 361
    iget-object v7, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_max_service_name_and_cost:Ljava/lang/String;

    .line 363
    :cond_0
    const-string v7, "com.android.server.role.RoleManagerService"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    iget-object v7, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide v1, v7, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_RoleManagerServiceCost:J

    goto :goto_1

    .line 365
    :cond_1
    const-string v7, "com.android.server.policy.PermissionPolicyService"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 366
    iget-object v7, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide v1, v7, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_PermissionPolicyServiceCost:J

    goto :goto_1

    .line 367
    :cond_2
    const-string v7, "com.android.server.StorageManagerService"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 368
    iget-object v7, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide v1, v7, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_StorageManagerServiceCost:J

    .line 371
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_3
    :goto_1
    goto :goto_0

    .line 372
    :cond_4
    return-void
.end method

.method private blacklist handleServiceOnSwitch(Ljava/lang/String;JILjava/util/Map;)V
    .locals 10
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "functionCost"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p5, "srcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p2, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onSwitchUser_TotalCost:J

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "serviceName":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 336
    .local v1, "serviceCost":J
    const-wide/16 v3, 0x0

    .line 337
    .local v3, "maxCost":J
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 338
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    .line 339
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 340
    if-eqz v0, :cond_0

    .line 341
    cmp-long v7, v3, v1

    if-gez v7, :cond_0

    .line 342
    move-wide v3, v1

    .line 343
    iget-object v7, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onSwitchUser_max_service_name_and_cost:Ljava/lang/String;

    .line 346
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 347
    :cond_1
    return-void
.end method

.method private blacklist handleSwitchDone(Lcom/oplus/multiuser/OplusMultiUserStatisticsData;)V
    .locals 2
    .param p1, "args"    # Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    .line 456
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_ToalCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_startUserInternal_ToalCost:Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_freezingCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_1_startUserInternal_freezingCost:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_updateConfigCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_2_startUserInternal_updateConfigurationAndProfileIdsCost:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_prepareUserDataCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_3_onBeforeStartUser_prepareUserDataCost:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_prepareUserDataEx:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_3_1:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_reconcileAppsDataCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_4_onBeforeStartUser_reconcileAppsDataCost:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_reconcileAppsDataEx:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_4_1:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_moveToForegroundCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_5_startUserInternal_moveToForegroundCost:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_TotalCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_onStartUser_ToalCost:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_max_service_name_and_cost:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_1_onStartUser_max_service_name_and_cost:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_RoleManagerServiceCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_2_onStartUser_RoleManagerServiceCost:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_RoleManagerServiceEx:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_2_1:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_PermissionPolicyServiceCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_3_onStartUser_PermissionPolicyServiceCost:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_PermissionPolicyServiceEx:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_3_1:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_StorageManagerServiceCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_4_onStartUser_StorageManagerServiceCost:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_StorageManagerServiceEx:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_4_1:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onSwitchUser_TotalCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_4_onSwitchUser_ToalCost:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onSwitchUser_max_service_name_and_cost:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_4_1_onSwitchUser_max_service_name_and_cost:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_Last_Observer_Name_Cost:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_dispatchUserSwitch_Last_Observer_Name_Cost:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_KeyguardUpdateMonitorCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_1_dispatchUserSwitch_KeyguardUpdateMonitorCost:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_KeyguardUpdateMonitorEx:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_1_1:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_WallpaperManagerServiceCost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_2_dispatchUserSwitch_WallpaperManagerServiceCost:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_WallpaperManagerServiceEx:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_2_1:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_Observers_no_respond:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_6_dispatchUserSwitch_Observers_no_respond:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mOldUserType:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->oldUserType:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mNewUserType:Ljava/lang/String;

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->newUserType:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-boolean v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isSystemClone:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->isSystemclone:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOplusMultiUserDcsUtil:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->postSwitchUserMessage(Lcom/oplus/multiuser/OplusMultiUserStatisticsData;)V

    .line 492
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    .line 493
    return-void
.end method

.method private blacklist isSystemClone(I)Z
    .locals 2
    .param p1, "flags"    # I

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "res":Z
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addString   key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOplusMultiUserDcsUtil:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    if-nez v1, :cond_0

    .line 92
    const-string v1, "addString dcsUtil was NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->handleAddStringForCreateUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "handle":Z
    if-nez v0, :cond_1

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->handleAddStringForSwitchUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "handle":Z
    :cond_1
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist amsSwitchUserEnter(JZIILjava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "functionStartTime"    # J
    .param p3, "userSwitchUiEnabled"    # Z
    .param p4, "oldUserId"    # I
    .param p5, "oldUserFlags"    # I
    .param p6, "oldUserType"    # Ljava/lang/String;
    .param p7, "newUserId"    # I
    .param p8, "newUserFlags"    # I
    .param p9, "newUserType"    # Ljava/lang/String;

    .line 223
    iput-wide p1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mAmsSwitchUser_EnterTime:J

    .line 224
    iput-boolean p3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mUserSwitchUiEnabled:Z

    .line 225
    if-ne p4, p7, :cond_0

    .line 226
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amsSwitchUserEnter  oldUserId == newUserId  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 229
    :cond_0
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    invoke-direct {v0, p0, p4, p5, p6}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;-><init>(Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOldUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    .line 230
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    invoke-direct {v0, p0, p7, p8, p9}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;-><init>(Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    .line 231
    return-void
.end method

.method public blacklist continueUserSwitchEnter(II)V
    .locals 6
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 418
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isMatched(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueSwitch_EnterTime:J

    .line 421
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueSwitch_EnterTime:J

    iget-object v4, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v4, v4, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_EnterTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->switchuser_to_continueCost:J

    .line 422
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-boolean v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isScreenFrozen:Z

    if-nez v1, :cond_0

    .line 424
    new-instance v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    invoke-direct {v1}, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;-><init>()V

    .line 425
    .local v1, "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->switchuser_to_continueCost:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_7_switchUser_to_continueUserSwitch_Cost:Ljava/lang/String;

    .line 426
    invoke-direct {p0, v1}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->handleSwitchDone(Lcom/oplus/multiuser/OplusMultiUserStatisticsData;)V

    .line 429
    .end local v1    # "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    :cond_0
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist createUserEnter(JLjava/lang/String;Ljava/lang/String;IZI)V
    .locals 10
    .param p1, "functionStartTime"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userType"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "preCreate"    # Z
    .param p7, "userId"    # I

    .line 174
    move-object v8, p0

    iget-object v0, v8, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOplusMultiUserDcsUtil:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->TAG:Ljava/lang/String;

    const-string v1, "createUserEnter dcsUtil was NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v9, v8, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockCreateUserEvent:Ljava/lang/Object;

    monitor-enter v9

    .line 179
    :try_start_0
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move/from16 v5, p7

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;-><init>(Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;JILjava/lang/String;I)V

    iput-object v0, v8, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    .line 180
    monitor-exit v9

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist createUserExit(JLjava/lang/String;Ljava/lang/String;IZIJJJJJ)V
    .locals 16
    .param p1, "functionStartTime"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userType"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "preCreate"    # Z
    .param p7, "userId"    # I
    .param p8, "totalTime"    # J
    .param p10, "smCreateKeyCost"    # J
    .param p12, "upPrepareCost"    # J
    .param p14, "pmCreateUserCost"    # J
    .param p16, "pmOnUserCreatedCost"    # J

    .line 187
    move-object/from16 v1, p0

    move/from16 v8, p5

    invoke-direct {v1, v8}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->isSystemClone(I)Z

    move-result v9

    .line 188
    .local v9, "isSystemClone":Z
    iget-object v10, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockCreateUserEvent:Ljava/lang/Object;

    monitor-enter v10

    .line 189
    :try_start_0
    iget-object v0, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    if-eqz v0, :cond_2

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mCreateUser_ExitTime:J

    .line 191
    iget-object v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    move-wide/from16 v3, p1

    move/from16 v5, p7

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->isMatched(JILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    invoke-direct {v0}, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 194
    .local v0, "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    move-object/from16 v2, p4

    :try_start_1
    iput-object v2, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->newUserType:Ljava/lang/String;

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->isSystemclone:Ljava/lang/String;

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v4, p8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_createUser_total_cost:Ljava/lang/String;

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-wide/from16 v6, p10

    :try_start_2
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_1_createUserKey_cost:Ljava/lang/String;

    .line 199
    iget-object v3, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iget-object v3, v3, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->createUserKeyEx:Ljava/lang/String;

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_1_1:Ljava/lang/String;

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v11, p12

    :try_start_3
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_2_prepareUserData_cost:Ljava/lang/String;

    .line 202
    iget-object v3, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iget-object v3, v3, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->prepareUserDataEx:Ljava/lang/String;

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_2_1:Ljava/lang/String;

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v13, p14

    :try_start_4
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_3_createNewUser_cost:Ljava/lang/String;

    .line 205
    iget-object v3, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iget-object v3, v3, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->createNewUserEx:Ljava/lang/String;

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_3_1:Ljava/lang/String;

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide/from16 v4, p16

    :try_start_5
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_4_onNewUserCreated_cost:Ljava/lang/String;

    .line 208
    iget-object v3, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    iget-object v3, v3, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->onNewUserCreatedEx:Ljava/lang/String;

    iput-object v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_4_1:Ljava/lang/String;

    .line 210
    iget-object v3, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOplusMultiUserDcsUtil:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v3, v0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->postCreateUserMessage(Lcom/oplus/multiuser/OplusMultiUserStatisticsData;)V

    goto :goto_0

    .line 216
    .end local v0    # "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 191
    :cond_0
    move-object/from16 v2, p4

    move-wide/from16 v6, p10

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move-wide/from16 v4, p16

    .line 214
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mCreateUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;

    goto :goto_1

    .line 189
    :cond_2
    move-object/from16 v2, p4

    move-wide/from16 v6, p10

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move-wide/from16 v4, p16

    .line 216
    :goto_1
    monitor-exit v10

    .line 217
    return-void

    .line 216
    :catchall_4
    move-exception v0

    move-object/from16 v2, p4

    :goto_2
    move-wide/from16 v6, p10

    :goto_3
    move-wide/from16 v11, p12

    :goto_4
    move-wide/from16 v13, p14

    :goto_5
    move-wide/from16 v4, p16

    :goto_6
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_6
.end method

.method public blacklist dispatchSwitchEnter(JII)V
    .locals 2
    .param p1, "functionStartTime"    # J
    .param p3, "oldUserId"    # I
    .param p4, "newUserId"    # I

    .line 377
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, p4}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isMatched(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_EnterTime:J

    .line 381
    :cond_0
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dispatchSwitchIfTooLong(JLjava/lang/String;II)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "oldUserId"    # I
    .param p5, "newUserId"    # I

    .line 387
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p4, p5}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isMatched(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    if-eqz p3, :cond_1

    iget-wide v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->DISPATCH_SEND_RESULT_WARNING_TIMEOUT_MS:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_Last_Observer_Name_Cost:Ljava/lang/String;

    .line 391
    const-string v1, "KeyguardUpdateMonitor"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_KeyguardUpdateMonitorCost:J

    goto :goto_0

    .line 393
    :cond_0
    const-string v1, "WallpaperManagerService"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_WallpaperManagerServiceCost:J

    .line 398
    :cond_1
    :goto_0
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist handleIfTooLong(Ljava/lang/String;JLjava/lang/String;ILjava/util/Map;)V
    .locals 2
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p6, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_1

    .line 295
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "Switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 302
    :pswitch_0
    if-eqz p4, :cond_1

    iget-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->SERVICE_CALL_WARN_TIME_MS_ONSTART:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 303
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p6, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 297
    :pswitch_1
    if-eqz p4, :cond_1

    iget-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->SERVICE_CALL_WARN_TIME_MS_ONSWITCH:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 298
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p6, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b9f5cac -> :sswitch_1
        0x4c7d442 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onBeforeStartUserExit(IJJJ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "totalCost"    # J
    .param p4, "prepareUserDataCost"    # J
    .param p6, "reconcileAppsDataCost"    # J

    .line 267
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_TargetUserId:I

    if-ne v1, p1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_TotalCost:J

    .line 270
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p4, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_prepareUserDataCost:J

    .line 271
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p6, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_reconcileAppsDataCost:J

    .line 273
    :cond_0
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onUserExit(Ljava/lang/String;JILjava/util/Map;)V
    .locals 3
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "functionCost"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p5, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    if-eqz p5, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_TargetUserId:I

    if-ne v1, p4, :cond_1

    .line 316
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "Start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "Switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 321
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->handleServiceOnStart(Ljava/lang/String;JILjava/util/Map;)V

    goto :goto_1

    .line 318
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->handleServiceOnSwitch(Ljava/lang/String;JILjava/util/Map;)V

    .line 325
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz p5, :cond_2

    .line 327
    invoke-interface {p5}, Ljava/util/Map;->clear()V

    .line 329
    :cond_2
    return-void

    .line 325
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x6b9f5cac -> :sswitch_1
        0x4c7d442 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist screenUnFrozen(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isScreenFrozen:Z

    if-eqz v1, :cond_0

    .line 437
    sget-object v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenUnFrozen   reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isScreenFrozen:Z

    .line 439
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueSwitch_EnterTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->unFrozen_EnterTime:J

    .line 441
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->unFrozen_EnterTime:J

    iget-object v4, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v4, v4, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_EnterTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->switchuser_to_unfrozenCost:J

    .line 442
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->unFrozen_EnterTime:J

    iget-object v4, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v4, v4, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueSwitch_EnterTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueUserSwitch_to_unFrozen_Cost:J

    .line 444
    new-instance v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    invoke-direct {v1}, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;-><init>()V

    .line 445
    .local v1, "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->switchuser_to_unfrozenCost:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_8_switchUser_to_unFrozen_Cost:Ljava/lang/String;

    .line 446
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueUserSwitch_to_unFrozen_Cost:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_8_1_continueUserSwitch_to_unFrozen_Cost:Ljava/lang/String;

    .line 447
    iput-object p1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_8_2_unFrozen_Reason:Ljava/lang/String;

    .line 448
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v2, v2, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->switchuser_to_continueCost:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_7_switchUser_to_continueUserSwitch_Cost:Ljava/lang/String;

    .line 449
    invoke-direct {p0, v1}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->handleSwitchDone(Lcom/oplus/multiuser/OplusMultiUserStatisticsData;)V

    .line 452
    .end local v1    # "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    :cond_0
    monitor-exit v0

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startUserInternalEnter(ZIIJJJZ)V
    .locals 16
    .param p1, "foreground"    # Z
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I
    .param p4, "functionStart"    # J
    .param p6, "freezingStart"    # J
    .param p8, "freezingCost"    # J
    .param p10, "screenFrozen"    # Z

    .line 236
    move-object/from16 v9, p0

    move/from16 v10, p1

    const/4 v0, 0x0

    .line 237
    .local v0, "isSystemCloneSwitch":Z
    iget-object v1, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOldUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    if-eqz v1, :cond_7

    iget-object v2, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    if-nez v2, :cond_0

    move/from16 v14, p2

    move/from16 v15, p3

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p10

    goto/16 :goto_9

    .line 241
    :cond_0
    iget v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mFlags:I

    invoke-direct {v9, v1}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->isSystemClone(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    iget v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mFlags:I

    invoke-direct {v9, v1}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->isSystemClone(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v11, v0

    goto :goto_1

    .line 242
    :cond_2
    :goto_0
    const/4 v0, 0x1

    move v11, v0

    .line 244
    .end local v0    # "isSystemCloneSwitch":Z
    .local v11, "isSystemCloneSwitch":Z
    :goto_1
    iget-object v12, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v12

    .line 245
    :try_start_0
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    .line 246
    iput-object v13, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    .line 248
    :cond_3
    if-eqz v10, :cond_4

    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOldUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    iget v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move/from16 v14, p2

    if-ne v14, v0, :cond_5

    :try_start_1
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    iget v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move/from16 v15, p3

    if-ne v15, v0, :cond_6

    .line 249
    :try_start_2
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v3, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mAmsSwitchUser_EnterTime:J

    iget-boolean v5, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mUserSwitchUiEnabled:Z

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;-><init>(Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;JZIIZ)V

    iput-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    .line 251
    iget-object v1, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOldUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    iget-object v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mUserType:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mOldUserType:Ljava/lang/String;

    .line 252
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-object v1, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    iget-object v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mUserType:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mNewUserType:Ljava/lang/String;

    .line 253
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v1, p4

    :try_start_3
    iput-wide v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_EnterTime:J

    .line 254
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-boolean v10, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mForeground:Z

    .line 255
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v3, p6

    :try_start_4
    iput-wide v3, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_freezingTime:J

    .line 256
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v5, p8

    :try_start_5
    iput-wide v5, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_freezingCost:J

    .line 257
    iget-object v0, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v7, p10

    :try_start_6
    iput-boolean v7, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isScreenFrozen:Z

    goto :goto_2

    .line 259
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    .line 248
    :cond_4
    move/from16 v14, p2

    :cond_5
    move/from16 v15, p3

    :cond_6
    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p10

    .line 259
    :goto_2
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 260
    iput-object v13, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOldUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    .line 261
    iput-object v13, v9, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mNewUserInfo:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;

    .line 262
    return-void

    .line 259
    :catchall_5
    move-exception v0

    move/from16 v14, p2

    :goto_3
    move/from16 v15, p3

    :goto_4
    move-wide/from16 v1, p4

    :goto_5
    move-wide/from16 v3, p6

    :goto_6
    move-wide/from16 v5, p8

    :goto_7
    move/from16 v7, p10

    :goto_8
    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_8

    .line 237
    .end local v11    # "isSystemCloneSwitch":Z
    .restart local v0    # "isSystemCloneSwitch":Z
    :cond_7
    move/from16 v14, p2

    move/from16 v15, p3

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p10

    .line 238
    :goto_9
    sget-object v8, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->TAG:Ljava/lang/String;

    const-string v11, "startUserInternalEnter   no call switchUser  "

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public blacklist startUserInternalExit(JJJIIJ)V
    .locals 3
    .param p1, "functionCost"    # J
    .param p3, "moveToForegroundCost"    # J
    .param p5, "updateConfigCost"    # J
    .param p7, "oldUserId"    # I
    .param p8, "newUserId"    # I
    .param p9, "functionStart"    # J

    .line 280
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_EnterTime:J

    cmp-long v1, v1, p9

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    .line 282
    invoke-virtual {v1, p7, p8}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isMatched(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p5, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_updateConfigCost:J

    .line 284
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p3, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_moveToForegroundCost:J

    .line 285
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iput-wide p1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_ToalCost:J

    .line 287
    :cond_0
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist systemReady(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    invoke-direct {v0, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mOplusMultiUserDcsUtil:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    .line 83
    nop

    .line 86
    return-void
.end method

.method public blacklist timeoutUserSwitchEnter(Landroid/util/ArraySet;II)V
    .locals 6
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 404
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mLockSwitchUserEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p3}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isMatched(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v1, v1, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_EnterTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    iget-wide v3, v3, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_EnterTime:J

    sub-long/2addr v1, v3

    .line 409
    .local v1, "delay":J
    iget-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->mSwitchUserEvent:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_Observers_no_respond:Ljava/lang/String;

    .line 411
    .end local v1    # "delay":J
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 413
    :cond_1
    :goto_0
    return-void
.end method
