.class public Lcom/oplus/multiuser/OplusMultiUserDcsUtil;
.super Ljava/lang/Object;
.source "OplusMultiUserDcsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;
    }
.end annotation


# static fields
.field private static final blacklist ALARM_HOUR:I = 0x17

.field private static final blacklist ALARM_MIN:I = 0xa

.field private static final blacklist ALARM_SEC:I = 0xa

.field private static final blacklist DCS_APP_ID:Ljava/lang/String; = "20225"

.field private static final blacklist DCS_LOG_TAG:Ljava/lang/String; = "20225003"

.field private static final blacklist EVENT_ID_CREATE_USER:Ljava/lang/String; = "create_user_flow_statistics"

.field private static final blacklist EVENT_ID_DEFAULT_ACCESS_MODE:Ljava/lang/String; = "default_access_mode_statistics"

.field private static final blacklist EVENT_ID_SWITCH_USER:Ljava/lang/String; = "switch_user_flow_statistics"

.field private static final blacklist FLOW_1_1_1_CREATE_USERKEY_EX:Ljava/lang/String; = "flow_1.1.1_createUserKeyEx"

.field private static final blacklist FLOW_1_1_CREATE_USERKEY_COST:Ljava/lang/String; = "flow_1.1_createUserKey_cost"

.field private static final blacklist FLOW_1_2_1_PREPARE_USERDATA_Ex:Ljava/lang/String; = "flow_1.2.1_prepareUserDataEx"

.field private static final blacklist FLOW_1_2_PREPARE_USERDATA_COST:Ljava/lang/String; = "flow_1.2_prepareUserData_cost"

.field private static final blacklist FLOW_1_3_1_CREATE_NEW_USER_Ex:Ljava/lang/String; = "flow_1.3.1_createNewUserEx"

.field private static final blacklist FLOW_1_3_CREATE_NEW_USER_COST:Ljava/lang/String; = "flow_1.3_createNewUser_cost"

.field private static final blacklist FLOW_1_4_1_ON_USER_CREATED_Ex:Ljava/lang/String; = "flow_1.4.1_onNewUserCreatedEx"

.field private static final blacklist FLOW_1_4_ON_USER_CREATED_COST:Ljava/lang/String; = "flow_1.4_onNewUserCreated_cost"

.field private static final blacklist FLOW_1_CREATE_USER_TOTAL_COST:Ljava/lang/String; = "flow_1_createUser_total_cost"

.field private static final blacklist FLOW_2_1_STARTUSERINTERNAL_FREEZING_COST:Ljava/lang/String; = "flow_2.1_startUserInternal_freezingCost"

.field private static final blacklist FLOW_2_2_STARTUSERINTERNAL_UPDATECONFIGANDPROFILEIDS_COST:Ljava/lang/String; = "flow_2.2_startUserInternal_updateConfigurationAndProfileIdsCost"

.field private static final blacklist FLOW_2_3_1_ONBEFORESTARTUSER_PREPARE_EX:Ljava/lang/String; = "flow_2.3.1_onBeforeStartUser_prepareUserDataEx"

.field private static final blacklist FLOW_2_3_ONBEFORESTARTUSER_PREPARE_USERDATA_COST:Ljava/lang/String; = "flow_2.3_onBeforeStartUser_prepareUserDataCost"

.field private static final blacklist FLOW_2_4_1_ONBEFORESTARTUSER_RECONCILEAPPDATA_EX:Ljava/lang/String; = "flow_2.4.1_onBeforeStartUser_reconcileAppsDataEx"

.field private static final blacklist FLOW_2_4_ONBEFORESTARTUSER_RECONCILEAPPDATA_COST:Ljava/lang/String; = "flow_2.4_onBeforeStartUser_reconcileAppsDataCost"

.field private static final blacklist FLOW_2_5_STARTUSERINTERNAL_MOVETOFOREGROUND_COST:Ljava/lang/String; = "flow_2.5_startUserInternal_moveToForegroundCost"

.field private static final blacklist FLOW_2_STARTUSERINTERNAL_TOTAL_COST:Ljava/lang/String; = "flow_2_startUserInternal_ToalCost"

.field private static final blacklist FLOW_3_1_ONSTARTUSER_MAX_SERVICE_NAME_AND_COST:Ljava/lang/String; = "flow_3.1_onStartUser_max_service_name_and_cost"

.field private static final blacklist FLOW_3_2_1_ONSTARTUSER_ROLEMANAGER_EX:Ljava/lang/String; = "flow_3.2.1_onStartUser_RoleManagerServiceEx"

.field private static final blacklist FLOW_3_2_ONSTARTUSER_ROLEMANAGER_COST:Ljava/lang/String; = "flow_3.2_onStartUser_RoleManagerServiceCost"

.field private static final blacklist FLOW_3_3_1_ONSTARTUSER_PERMISSIONPOLICY_EX:Ljava/lang/String; = "flow_3.3.1_onStartUser_PermissionPolicyServiceEx"

.field private static final blacklist FLOW_3_3_ONSTARTUSER_PERMISSIONPOLICY_COST:Ljava/lang/String; = "flow_3.3_onStartUser_PermissionPolicyServiceCost"

.field private static final blacklist FLOW_3_4_1_ONSTARTUSER_STORAGEMANAGER_EX:Ljava/lang/String; = "flow_3.4.1_onStartUser_StorageManagerServiceEx"

.field private static final blacklist FLOW_3_4_ONSTARTUSER_STORAGEMANAGER_COST:Ljava/lang/String; = "flow_3.4_onStartUser_StorageManagerServiceCost"

.field private static final blacklist FLOW_3_ONSTARTUSER_TOAL_COST:Ljava/lang/String; = "flow_3_onStartUser_ToalCost"

.field private static final blacklist FLOW_4_1_ONSWITCHUSER_MAX_SERVICE_NAME_AND_COST:Ljava/lang/String; = "flow_4.1_onSwitchUser_max_service_name_and_cost"

.field private static final blacklist FLOW_4_ONSWITCHUSER_TOAL_COST:Ljava/lang/String; = "flow_4_onSwitchUser_ToalCost"

.field private static final blacklist FLOW_5_1_1_DISPATCHUSERSWITCH_KEYGUARD_EX:Ljava/lang/String; = "flow_5.1.1_dispatchUserSwitch_KeyguardEx"

.field private static final blacklist FLOW_5_1_DISPATCHUSERSWITCH_KEYGUARD_COST:Ljava/lang/String; = "flow_5.1_dispatchUserSwitch_KeyguardUpdateMonitorCost"

.field private static final blacklist FLOW_5_2_1_DISPATCHUSERSWITCH_WALLPAPER_EX:Ljava/lang/String; = "flow_5.2.1_dispatchUserSwitch_WallpaperEx"

.field private static final blacklist FLOW_5_2_DISPATCHUSERSWITCH_WALLPAPER_COST:Ljava/lang/String; = "flow_5.2_dispatchUserSwitch_WallpaperManagerServiceCost"

.field private static final blacklist FLOW_5_DISPATCHUSERSWITCH_LAST_OBSERVER_NAME_AND_COST:Ljava/lang/String; = "flow_5_dispatchUserSwitch_Last_Observer_name_and_cost"

.field private static final blacklist FLOW_6_DISPATCHUSERSWITCH_OBSERVER_NO_RESPOND:Ljava/lang/String; = "flow_6_dispatchUserSwitch_Observers_no_respond"

.field private static final blacklist FLOW_7_SWITCHUSER_TO_CONTINUESWITCH_COST:Ljava/lang/String; = "flow_7_switchUser_to_continueUserSwitch_Cost"

.field private static final blacklist FLOW_8_1_CONTINUESWITCH_TO_UNFROZEN_COST:Ljava/lang/String; = "flow_8.1_continueUserSwitch_to_unFrozen_Cost"

.field private static final blacklist FLOW_8_2_UNFROZEN_REASON:Ljava/lang/String; = "flow_8.2_unFrozen_Reason"

.field private static final blacklist FLOW_8_SWITCHUSER_TO_UNFROZEN_COST:Ljava/lang/String; = "flow_8_switchUser_to_unFrozen_Cost"

.field private static final blacklist KEY_IS_SYSTEMCLONE:Ljava/lang/String; = "isSystemClone"

.field private static final blacklist KEY_NEW_USER_TYPE:Ljava/lang/String; = "newUserType"

.field private static final blacklist KEY_OLD_USER_TYPE:Ljava/lang/String; = "oldUserType"

.field private static final blacklist MSG_REPORT_CREATE_USER:I = 0x1

.field private static final blacklist MSG_REPORT_DEFAULT_ACCESS_MODE:I = 0x3

.field private static final blacklist MSG_REPORT_SWITCH_USER:I = 0x2

.field private static final blacklist MULTIAPP_ACCESS_MODE:Ljava/lang/String; = "access_mode"

.field private static final blacklist MULTIAPP_DCS_LOG_TAG:Ljava/lang/String; = "20225007"

.field private static final blacklist MULTIAPP_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final blacklist PERIOD_DAY_HOUR:I = 0x18

.field private static final blacklist PERIOD_DAY_MILLIS:I = 0x5265c00

.field private static final blacklist PERIOD_HOUR_MIN:I = 0x3c

.field private static final blacklist PERIOD_MIN_SEC:I = 0x3c

.field private static final blacklist PERIOD_SEC_MILLIS:I = 0x3e8


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentDcsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDcsEventHandle:Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mNextAlarmTime:J

.field private final blacklist mUploadAccessModeAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleAccessModeMessage(Lcom/oplus/multiuser/OplusMultiUserDcsUtil;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->handleAccessModeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mContext:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mDcsEventHandle:Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

    .line 60
    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mAlarmManager:Landroid/app/AlarmManager;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mNextAlarmTime:J

    .line 136
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/multiuser/OplusMultiUserDcsUtil;)V

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mUploadAccessModeAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 144
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    .line 170
    iput-object p1, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OplusMultiUserDcsUtil_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;-><init>(Lcom/oplus/multiuser/OplusMultiUserDcsUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mDcsEventHandle:Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

    .line 174
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->initAlarmForDcs()V

    .line 175
    return-void
.end method

.method private blacklist fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 261
    if-nez p2, :cond_0

    .line 262
    const-string p2, "blank"

    .line 264
    :cond_0
    if-eqz p1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_1
    return-void
.end method

.method private blacklist getNextTime()J
    .locals 11

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, "currentDate":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 291
    .local v1, "currentMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 292
    .local v10, "targetDate":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 293
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 294
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 292
    const/16 v7, 0x17

    const/16 v8, 0xa

    const/16 v9, 0xa

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 298
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 299
    .local v3, "expectedMillis":J
    const-wide/16 v5, 0x3e8

    add-long/2addr v5, v1

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 300
    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    .line 303
    :cond_0
    return-wide v3
.end method

.method private blacklist handleAccessModeMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 312
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 313
    .local v0, "modeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "uploadList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 315
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 317
    .local v5, "accessMode":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 318
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "pkg_name"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "access_mode"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "accessMode":Ljava/lang/Integer;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 325
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->TAG:Ljava/lang/String;

    const-string v3, "uploadList is empty!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v3, "20225"

    const-string v4, "20225007"

    const-string v5, "default_access_mode_statistics"

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 330
    const-string v2, "handleAccessModeMessage"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->printMapList(Ljava/lang/String;Ljava/util/List;)V

    .line 331
    return-void
.end method

.method private blacklist initAlarmForDcs()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mAlarmManager:Landroid/app/AlarmManager;

    .line 280
    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->TAG:Ljava/lang/String;

    const-string v1, " can not get AlarmManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->getNextTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mNextAlarmTime:J

    .line 285
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->scheduleAccessModeAlarmForDcs()V

    .line 286
    return-void
.end method

.method private blacklist printMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 271
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "()   key=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]  value=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method private blacklist printMapList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 334
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 335
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->printMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 336
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method private blacklist scheduleAccessModeAlarmForDcs()V
    .locals 7

    .line 307
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mNextAlarmTime:J

    iget-object v5, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mUploadAccessModeAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mDcsEventHandle:Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

    const/4 v1, 0x0

    const-string v4, "multiUserDcsUploader.accessMode"

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 309
    return-void
.end method


# virtual methods
.method public blacklist handleCreateUserMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 188
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    .line 192
    .local v0, "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_createUser_total_cost:Ljava/lang/String;

    const-string v2, "flow_1_createUser_total_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_1_createUserKey_cost:Ljava/lang/String;

    const-string v2, "flow_1.1_createUserKey_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_1_1:Ljava/lang/String;

    const-string v2, "flow_1.1.1_createUserKeyEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_2_prepareUserData_cost:Ljava/lang/String;

    const-string v2, "flow_1.2_prepareUserData_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_2_1:Ljava/lang/String;

    const-string v2, "flow_1.2.1_prepareUserDataEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_3_createNewUser_cost:Ljava/lang/String;

    const-string v2, "flow_1.3_createNewUser_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_3_1:Ljava/lang/String;

    const-string v2, "flow_1.3.1_createNewUserEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_4_onNewUserCreated_cost:Ljava/lang/String;

    const-string v2, "flow_1.4_onNewUserCreated_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_1_4_1:Ljava/lang/String;

    const-string v2, "flow_1.4.1_onNewUserCreatedEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->newUserType:Ljava/lang/String;

    const-string v2, "newUserType"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->isSystemclone:Ljava/lang/String;

    .end local v0    # "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    const-string v1, "isSystemClone"

    invoke-direct {p0, v1, v0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    const/4 v7, 0x0

    const-string v3, "20225"

    const-string v4, "20225003"

    const-string v5, "create_user_flow_statistics"

    invoke-static/range {v2 .. v7}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 206
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    const-string v1, "handleCreateUserMessage"

    invoke-direct {p0, v1, v0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->printMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    :cond_0
    return-void
.end method

.method public blacklist handleSwitchUserMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 212
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 213
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    .line 216
    .local v0, "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_8_switchUser_to_unFrozen_Cost:Ljava/lang/String;

    const-string v2, "flow_8_switchUser_to_unFrozen_Cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_8_1_continueUserSwitch_to_unFrozen_Cost:Ljava/lang/String;

    const-string v2, "flow_8.1_continueUserSwitch_to_unFrozen_Cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_8_2_unFrozen_Reason:Ljava/lang/String;

    const-string v2, "flow_8.2_unFrozen_Reason"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_7_switchUser_to_continueUserSwitch_Cost:Ljava/lang/String;

    const-string v2, "flow_7_switchUser_to_continueUserSwitch_Cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_startUserInternal_ToalCost:Ljava/lang/String;

    const-string v2, "flow_2_startUserInternal_ToalCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_1_startUserInternal_freezingCost:Ljava/lang/String;

    const-string v2, "flow_2.1_startUserInternal_freezingCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_2_startUserInternal_updateConfigurationAndProfileIdsCost:Ljava/lang/String;

    const-string v2, "flow_2.2_startUserInternal_updateConfigurationAndProfileIdsCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_3_onBeforeStartUser_prepareUserDataCost:Ljava/lang/String;

    const-string v2, "flow_2.3_onBeforeStartUser_prepareUserDataCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_3_1:Ljava/lang/String;

    const-string v2, "flow_2.3.1_onBeforeStartUser_prepareUserDataEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_4_onBeforeStartUser_reconcileAppsDataCost:Ljava/lang/String;

    const-string v2, "flow_2.4_onBeforeStartUser_reconcileAppsDataCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_4_1:Ljava/lang/String;

    const-string v2, "flow_2.4.1_onBeforeStartUser_reconcileAppsDataEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_2_5_startUserInternal_moveToForegroundCost:Ljava/lang/String;

    const-string v2, "flow_2.5_startUserInternal_moveToForegroundCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_onStartUser_ToalCost:Ljava/lang/String;

    const-string v2, "flow_3_onStartUser_ToalCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_1_onStartUser_max_service_name_and_cost:Ljava/lang/String;

    const-string v2, "flow_3.1_onStartUser_max_service_name_and_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_2_onStartUser_RoleManagerServiceCost:Ljava/lang/String;

    const-string v2, "flow_3.2_onStartUser_RoleManagerServiceCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_2_1:Ljava/lang/String;

    const-string v2, "flow_3.2.1_onStartUser_RoleManagerServiceEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_3_onStartUser_PermissionPolicyServiceCost:Ljava/lang/String;

    const-string v2, "flow_3.3_onStartUser_PermissionPolicyServiceCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_3_1:Ljava/lang/String;

    const-string v2, "flow_3.3.1_onStartUser_PermissionPolicyServiceEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_4_onStartUser_StorageManagerServiceCost:Ljava/lang/String;

    const-string v2, "flow_3.4_onStartUser_StorageManagerServiceCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_3_4_1:Ljava/lang/String;

    const-string v2, "flow_3.4.1_onStartUser_StorageManagerServiceEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_4_onSwitchUser_ToalCost:Ljava/lang/String;

    const-string v2, "flow_4_onSwitchUser_ToalCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_4_1_onSwitchUser_max_service_name_and_cost:Ljava/lang/String;

    const-string v2, "flow_4.1_onSwitchUser_max_service_name_and_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_dispatchUserSwitch_Last_Observer_Name_Cost:Ljava/lang/String;

    const-string v2, "flow_5_dispatchUserSwitch_Last_Observer_name_and_cost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_1_dispatchUserSwitch_KeyguardUpdateMonitorCost:Ljava/lang/String;

    const-string v2, "flow_5.1_dispatchUserSwitch_KeyguardUpdateMonitorCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_1_1:Ljava/lang/String;

    const-string v2, "flow_5.1.1_dispatchUserSwitch_KeyguardEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_2_dispatchUserSwitch_WallpaperManagerServiceCost:Ljava/lang/String;

    const-string v2, "flow_5.2_dispatchUserSwitch_WallpaperManagerServiceCost"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_5_2_1:Ljava/lang/String;

    const-string v2, "flow_5.2.1_dispatchUserSwitch_WallpaperEx"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->flow_6_dispatchUserSwitch_Observers_no_respond:Ljava/lang/String;

    const-string v2, "flow_6_dispatchUserSwitch_Observers_no_respond"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->oldUserType:Ljava/lang/String;

    const-string v2, "oldUserType"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->newUserType:Ljava/lang/String;

    const-string v2, "newUserType"

    invoke-direct {p0, v2, v1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, v0, Lcom/oplus/multiuser/OplusMultiUserStatisticsData;->isSystemclone:Ljava/lang/String;

    .end local v0    # "args":Lcom/oplus/multiuser/OplusMultiUserStatisticsData;
    const-string v1, "isSystemClone"

    invoke-direct {p0, v1, v0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->fillMapAndCheckNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    const/4 v7, 0x0

    const-string v3, "20225"

    const-string v4, "20225003"

    const-string v5, "switch_user_flow_statistics"

    invoke-static/range {v2 .. v7}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 255
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mCurrentDcsMap:Ljava/util/Map;

    const-string v1, "handleSwitchUserMessage"

    invoke-direct {p0, v1, v0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->printMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-oplus-multiuser-OplusMultiUserDcsUtil()V
    .locals 3

    .line 137
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->getNextTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mNextAlarmTime:J

    .line 138
    invoke-direct {p0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->scheduleAccessModeAlarmForDcs()V

    .line 140
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppAllAccessMode()Ljava/util/Map;

    move-result-object v0

    .line 141
    .local v0, "modeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mDcsEventHandle:Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public blacklist postCreateUserMessage(Lcom/oplus/multiuser/OplusMultiUserStatisticsData;)V
    .locals 2
    .param p1, "args"    # Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    .line 179
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mDcsEventHandle:Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method

.method public blacklist postSwitchUserMessage(Lcom/oplus/multiuser/OplusMultiUserStatisticsData;)V
    .locals 2
    .param p1, "args"    # Lcom/oplus/multiuser/OplusMultiUserStatisticsData;

    .line 183
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->mDcsEventHandle:Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method
