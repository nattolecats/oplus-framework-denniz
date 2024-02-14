.class public Landroid/app/IOplusActivityManager$Default;
.super Ljava/lang/Object;
.source "IOplusActivityManager.java"

# interfaces
.implements Landroid/app/IOplusActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IOplusActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist activeGc([I)V
    .locals 0
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    return-void
.end method

.method public blacklist addBackgroundRestrictedInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    .local p2, "targetPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist addFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "replacePkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    return-void
.end method

.method public blacklist addFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "originAppCpn"    # Ljava/lang/String;
    .param p2, "fastAppCpn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    return-void
.end method

.method public blacklist addMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shareAppPkgName"    # Ljava/lang/String;
    .param p2, "miniProgramPkgName"    # Ljava/lang/String;
    .param p3, "miniProgramSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    return-void
.end method

.method public blacklist addOrRemoveOplusVerifyCodeListener(ZLcom/oplus/verifycode/IOplusVerifyCodeListener;)Z
    .locals 1
    .param p1, "add"    # Z
    .param p2, "listener"    # Lcom/oplus/verifycode/IOplusVerifyCodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addPreventIndulgeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V
    .locals 0
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "protectPkg"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "timeout"    # J
    .param p7, "connection"    # Lcom/oplus/app/IOplusProtectConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/oplus/app/IOplusProtectConnection;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    .local p3, "processList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist anrViaTheiaEvent(ILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist asyncReportFrames(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "skippedFrames"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    return-void
.end method

.method public blacklist cleanPackageResources(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    return-void
.end method

.method public blacklist compactProcess(Landroid/os/Bundle;II)V
    .locals 0
    .param p1, "pids"    # Landroid/os/Bundle;
    .param p2, "compactionFlags"    # I
    .param p3, "advice"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    return-void
.end method

.method public blacklist dumpProcPerfData(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enterFastFreezer(Ljava/lang/String;[IJLjava/lang/String;)V
    .locals 0
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "uids"    # [I
    .param p3, "timeout"    # J
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    return-void
.end method

.method public blacklist executeResPreload(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "preloadType"    # I
    .param p4, "preloadReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    return-void
.end method

.method public blacklist exitFastFreezer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    return-void
.end method

.method public blacklist favoriteQueryRule(Ljava/lang/String;Lcom/oplus/favorite/IOplusFavoriteQueryCallback;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/favorite/IOplusFavoriteQueryCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist finishNotOrderReceiver(Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "hasCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "resultAbort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    return-void
.end method

.method public blacklist forceStopPackageAndSaveActivity(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    return-void
.end method

.method public blacklist forceTrimAppMemory(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    return-void
.end method

.method public blacklist getAccidentallyTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllVisibleTasksInfo(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfigInfo(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCpuLimitLatestLogs(Ljava/lang/String;)Landroid/os/SharedMemory;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCpuWorkingStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDarkModeData(Ljava/lang/String;)Lcom/oplus/darkmode/OplusDarkModeData;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayCompatData()Lcom/oplus/util/OplusDisplayCompatData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayOptimizationData()Lcom/oplus/util/OplusDisplayOptimizationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDownloadingList(IZ)Ljava/util/List;
    .locals 1
    .param p1, "thresholdSpeed"    # I
    .param p2, "rough"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/oplus/util/OplusPackageFreezeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFastAppReplacePkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFontVariationAdaptionData(Ljava/lang/String;)I
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGlobalPkgWhiteList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGlobalProcessWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIsSupportMultiApp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiAppAccessMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiAppAllAccessMode(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    return-void
.end method

.method public blacklist getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiAppList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiAppMaxCreateNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPackageFreezeDataInfos(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p1, "pids"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/util/OplusPackageFreezeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPkgPreloadFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreloadIOSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPreloadPkgList()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreloadStatus(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProcCmdline([I)Ljava/util/List;
    .locals 1
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProcCommonInfoList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProcDependency(I)Ljava/util/List;
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oplus/util/OplusProcDependData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProcDependencyByUserId(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/oplus/util/OplusProcDependData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getReflectData()Lcom/oplus/util/OplusReflectData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResPreloadInfo(II)Landroid/os/Bundle;
    .locals 1
    .param p1, "days"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolveData()Lcom/oplus/util/OplusResolveData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningAppProcessInfos(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p1, "pids"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningPidsByUid(I)[I
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/util/OplusPackageFreezeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSecureKeyboardData()Lcom/oplus/util/OplusSecureKeyboardData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStageProtectList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStageProtectListAsUser(II)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStageProtectListFromPkgAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskPkgList(I)Ljava/util/List;
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTerminateObservers()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTopLoadPidsInfos(I)Ljava/util/List;
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTotalCpuLoadPercent()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTrafficBytesList(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "uids"    # Landroid/os/Bundle;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrafficPacketList(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "uids"    # Landroid/os/Bundle;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUXIconData()Lcom/oplus/util/OplusUXIconData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidCpuWorkingStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grantOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist handleAppForNotification(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "otherInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist handleAppFromControlCenter(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public blacklist inDownloading(IIZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "thresholdSpeed"    # I
    .param p3, "rough"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFrozenByHans(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiApp(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNightMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPermissionInterceptEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist killPidForce(I)V
    .locals 0
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist notifyAppKillReason(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    return-void
.end method

.method public blacklist notifyAthenaOnekeyClearRunning(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    return-void
.end method

.method public blacklist notifyProcessTerminate([ILjava/lang/String;)V
    .locals 0
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    return-void
.end method

.method public blacklist notifyProcessTerminateFinish(Lcom/oplus/app/IProcessTerminateObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/oplus/app/IProcessTerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    return-void
.end method

.method public blacklist notifyUiSwitched(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uiInfo"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    return-void
.end method

.method public blacklist onBackPressedOnTheiaMonitor(J)V
    .locals 0
    .param p1, "pressNow"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist putConfigInfo(Ljava/lang/String;Landroid/os/Bundle;II)Z
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "flag"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryProcessNameFromPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist queryUsageStats(IJJ)Ljava/util/List;
    .locals 1
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/eap/IOplusEapDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    return-void
.end method

.method public blacklist registerErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    return-void
.end method

.method public blacklist registerHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z
    .locals 1
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/app/IOplusHansListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/IProcessTerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/ITerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "replacePkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    return-void
.end method

.method public blacklist removeFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "originAppCpn"    # Ljava/lang/String;
    .param p2, "fastAppCpn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    return-void
.end method

.method public blacklist removeMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shareAppPkgName"    # Ljava/lang/String;
    .param p2, "miniProgramPkgName"    # Ljava/lang/String;
    .param p3, "miniProgramSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    return-void
.end method

.method public blacklist removeStageProtectInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "protectPkg"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist reportBindApplicationFinished(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist reportSkippedFrames(JZZJ)V
    .locals 0
    .param p1, "currentTime"    # J
    .param p3, "isAnimation"    # Z
    .param p4, "isForeground"    # Z
    .param p5, "skippedFrames"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    return-void
.end method

.method public blacklist reportSkippedFramesProcName(JZZJLjava/lang/String;)V
    .locals 0
    .param p1, "currentTime"    # J
    .param p3, "isAnimation"    # Z
    .param p4, "isForeground"    # Z
    .param p5, "skippedFrames"    # J
    .param p7, "pckName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    return-void
.end method

.method public blacklist requestDeviceFolded(IZ)Z
    .locals 1
    .param p1, "folded"    # I
    .param p2, "enableSecDisplay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist revokeOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist scanFileIfNeed(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method public blacklist sendFlingTransit(Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    return-void
.end method

.method public blacklist sendTheiaEvent(JLandroid/content/Intent;)V
    .locals 0
    .param p1, "category"    # J
    .param p3, "args"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist setAppFreeze(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAppStartMonitorController(Lcom/oplus/app/IOplusAppStartController;)V
    .locals 0
    .param p1, "watcher"    # Lcom/oplus/app/IOplusAppStartController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    return-void
.end method

.method public blacklist setGameSpaceController(Lcom/oplus/app/IOplusGameSpaceController;)V
    .locals 0
    .param p1, "watcher"    # Lcom/oplus/app/IOplusGameSpaceController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist setGlThreads(II)V
    .locals 0
    .param p1, "glID"    # I
    .param p2, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setHwuiTaskThreads(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setMultiAppAccessMode(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)I
    .locals 1
    .param p1, "config"    # Lcom/oplus/multiapp/OplusMultiAppConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiAppStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPermissionInterceptEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist setPermissionRecordController(Lcom/oplus/app/IOplusPermissionRecordController;)V
    .locals 0
    .param p1, "watcher"    # Lcom/oplus/app/IOplusPermissionRecordController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public blacklist setPreventIndulgeController(Lcom/oplus/app/IOplusAppStartController;)V
    .locals 0
    .param p1, "controller"    # Lcom/oplus/app/IOplusAppStartController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public blacklist setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    return-void
.end method

.method public blacklist syncPermissionRecord()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    return-void
.end method

.method public blacklist unfreezeForKernel(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "callerPid"    # I
    .param p3, "targetUid"    # I
    .param p4, "rpcName"    # Ljava/lang/String;
    .param p5, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist unfreezeForKernelTargetPid(IIIIILjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "targetPid"    # I
    .param p5, "targetUid"    # I
    .param p6, "rpcName"    # Ljava/lang/String;
    .param p7, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist unregisterEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/eap/IOplusEapDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    return-void
.end method

.method public blacklist unregisterErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    return-void
.end method

.method public blacklist unregisterHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z
    .locals 1
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/app/IOplusHansListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/IProcessTerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/ITerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateANRDumpState(Landroid/os/SharedMemory;)V
    .locals 0
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    return-void
.end method

.method public blacklist updateCpuTracker(J)F
    .locals 1
    .param p1, "lastUpdateTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "choice"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist updateUidCpuTracker()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    return-void
.end method
