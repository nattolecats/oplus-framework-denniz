.class Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;
.super Ljava/lang/Object;
.source "OplusMultiUserStatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchUserEvent"
.end annotation


# instance fields
.field blacklist continueSwitch_EnterTime:J

.field blacklist continueUserSwitch_to_unFrozen_Cost:J

.field blacklist dispatchUserSwitch_EnterTime:J

.field blacklist dispatchUserSwitch_KeyguardUpdateMonitorCost:J

.field blacklist dispatchUserSwitch_KeyguardUpdateMonitorEx:Ljava/lang/String;

.field blacklist dispatchUserSwitch_Last_Observer_Name_Cost:Ljava/lang/String;

.field blacklist dispatchUserSwitch_Observers_no_respond:Ljava/lang/String;

.field blacklist dispatchUserSwitch_WallpaperManagerServiceCost:J

.field blacklist dispatchUserSwitch_WallpaperManagerServiceEx:Ljava/lang/String;

.field blacklist isScreenFrozen:Z

.field blacklist isSystemClone:Z

.field blacklist mAmsSwitchUser_CurrentUserId:I

.field blacklist mAmsSwitchUser_EnterTime:J

.field blacklist mAmsSwitchUser_TargetUserId:I

.field blacklist mForeground:Z

.field blacklist mNewUserType:Ljava/lang/String;

.field blacklist mOldUserType:Ljava/lang/String;

.field blacklist mUserSwitchUiEnabled:Z

.field blacklist onBeforeStartUser_TotalCost:J

.field blacklist onBeforeStartUser_prepareUserDataCost:J

.field blacklist onBeforeStartUser_prepareUserDataEx:Ljava/lang/String;

.field blacklist onBeforeStartUser_reconcileAppsDataCost:J

.field blacklist onBeforeStartUser_reconcileAppsDataEx:Ljava/lang/String;

.field blacklist onStartUser_PermissionPolicyServiceCost:J

.field public blacklist onStartUser_PermissionPolicyServiceEx:Ljava/lang/String;

.field blacklist onStartUser_RoleManagerServiceCost:J

.field public blacklist onStartUser_RoleManagerServiceEx:Ljava/lang/String;

.field blacklist onStartUser_StorageManagerServiceCost:J

.field public blacklist onStartUser_StorageManagerServiceEx:Ljava/lang/String;

.field blacklist onStartUser_TotalCost:J

.field blacklist onStartUser_max_service_name_and_cost:Ljava/lang/String;

.field blacklist onSwitchUser_TotalCost:J

.field blacklist onSwitchUser_max_service_name_and_cost:Ljava/lang/String;

.field blacklist startUserInternal_EnterTime:J

.field blacklist startUserInternal_ToalCost:J

.field blacklist startUserInternal_freezingCost:J

.field blacklist startUserInternal_freezingTime:J

.field blacklist startUserInternal_moveToForegroundCost:J

.field blacklist startUserInternal_updateConfigCost:J

.field blacklist switchuser_to_continueCost:J

.field blacklist switchuser_to_unfrozenCost:J

.field final synthetic blacklist this$0:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

.field blacklist unFrozen_EnterTime:J


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;JZIIZ)V
    .locals 6
    .param p1, "this$0"    # Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
    .param p2, "functionStart"    # J
    .param p4, "userSwitchUiEnabled"    # Z
    .param p5, "currentUserId"    # I
    .param p6, "targetUserId"    # I
    .param p7, "systemclone"    # Z

    .line 585
    iput-object p1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->this$0:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_EnterTime:J

    .line 525
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mUserSwitchUiEnabled:Z

    .line 526
    iput v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_CurrentUserId:I

    .line 527
    iput v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_TargetUserId:I

    .line 528
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mOldUserType:Ljava/lang/String;

    .line 529
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mNewUserType:Ljava/lang/String;

    .line 532
    iput-boolean v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isSystemClone:Z

    .line 533
    iput-boolean v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mForeground:Z

    .line 534
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_EnterTime:J

    .line 536
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_TotalCost:J

    .line 537
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_prepareUserDataCost:J

    .line 538
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_reconcileAppsDataCost:J

    .line 539
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_prepareUserDataEx:Ljava/lang/String;

    .line 540
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onBeforeStartUser_reconcileAppsDataEx:Ljava/lang/String;

    .line 542
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_freezingTime:J

    .line 543
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_freezingCost:J

    .line 544
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_updateConfigCost:J

    .line 545
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_moveToForegroundCost:J

    .line 546
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->startUserInternal_ToalCost:J

    .line 549
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_max_service_name_and_cost:Ljava/lang/String;

    .line 550
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_TotalCost:J

    .line 551
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_RoleManagerServiceCost:J

    .line 552
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_PermissionPolicyServiceCost:J

    .line 553
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_StorageManagerServiceCost:J

    .line 555
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_RoleManagerServiceEx:Ljava/lang/String;

    .line 556
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_PermissionPolicyServiceEx:Ljava/lang/String;

    .line 557
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onStartUser_StorageManagerServiceEx:Ljava/lang/String;

    .line 560
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onSwitchUser_TotalCost:J

    .line 561
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->onSwitchUser_max_service_name_and_cost:Ljava/lang/String;

    .line 564
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_EnterTime:J

    .line 565
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_Last_Observer_Name_Cost:Ljava/lang/String;

    .line 566
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_KeyguardUpdateMonitorCost:J

    .line 567
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_WallpaperManagerServiceCost:J

    .line 568
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_KeyguardUpdateMonitorEx:Ljava/lang/String;

    .line 569
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_WallpaperManagerServiceEx:Ljava/lang/String;

    .line 571
    iput-object v3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->dispatchUserSwitch_Observers_no_respond:Ljava/lang/String;

    .line 574
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueSwitch_EnterTime:J

    .line 575
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->switchuser_to_continueCost:J

    .line 578
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->unFrozen_EnterTime:J

    .line 579
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->switchuser_to_unfrozenCost:J

    .line 580
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->continueUserSwitch_to_unFrozen_Cost:J

    .line 581
    iput-boolean v2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isScreenFrozen:Z

    .line 586
    iput-boolean p7, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->isSystemClone:Z

    .line 587
    iput-wide p2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_EnterTime:J

    .line 588
    iput-boolean p4, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mUserSwitchUiEnabled:Z

    .line 589
    iput p5, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_CurrentUserId:I

    .line 590
    iput p6, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_TargetUserId:I

    .line 591
    return-void
.end method


# virtual methods
.method public blacklist isMatched(II)Z
    .locals 2
    .param p1, "currentUserId"    # I
    .param p2, "targetUserId"    # I

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "res":Z
    iget v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_CurrentUserId:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_TargetUserId:I

    if-ne v1, p2, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 599
    :cond_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchUserEvent{from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_CurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$SwitchUserEvent;->mAmsSwitchUser_TargetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "res":Ljava/lang/String;
    return-object v0
.end method
