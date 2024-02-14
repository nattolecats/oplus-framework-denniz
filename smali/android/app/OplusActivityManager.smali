.class public Landroid/app/OplusActivityManager;
.super Ljava/lang/Object;
.source "OplusActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;,
        Landroid/app/OplusActivityManager$TaskSnapshotWrapper;,
        Landroid/app/OplusActivityManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final blacklist IOplusActivityManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IOplusActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusActivityManager"


# instance fields
.field private final blacklist mOplusAtm:Landroid/app/OplusActivityTaskManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Landroid/app/OplusActivityManager$1;

    invoke-direct {v0}, Landroid/app/OplusActivityManager$1;-><init>()V

    sput-object v0, Landroid/app/OplusActivityManager;->IOplusActivityManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    .line 232
    return-void
.end method

.method private blacklist StringToSpareArrayLong(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 7
    .param p1, "spareArrayStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2415
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2416
    .local v0, "sparray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    const-string v1, "empty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 2420
    :cond_0
    :try_start_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2421
    .local v1, "spStrs":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2422
    return-object v0

    .line 2424
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 2425
    aget-object v3, v1, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2426
    .local v3, "keyValue":[Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2427
    goto :goto_1

    .line 2429
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    .end local v3    # "keyValue":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2432
    .end local v1    # "spStrs":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 2431
    :catch_0
    move-exception v1

    .line 2433
    :goto_2
    return-object v0

    .line 2417
    :cond_4
    :goto_3
    return-object v0
.end method

.method public static whitelist getFilteredTasks(IZ)Ljava/util/List;
    .locals 1
    .param p0, "num"    # I
    .param p1, "filterOnlyVisibleRecents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 963
    const/4 v0, 0x0

    .line 969
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    return-object v0
.end method

.method public static whitelist getInstance()Landroid/app/OplusActivityManager;
    .locals 1

    .line 237
    invoke-static {}, Landroid/app/OplusActivityManager$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/app/OplusActivityManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getService()Landroid/app/IOplusActivityManager;
    .locals 1

    .line 199
    sget-object v0, Landroid/app/OplusActivityManager;->IOplusActivityManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusActivityManager;

    return-object v0
.end method

.method public static whitelist registerTaskStackListener(Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;)V
    .locals 4
    .param p0, "listener"    # Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;

    .line 935
    new-instance v0, Landroid/app/OplusActivityManager$2;

    invoke-direct {v0, p0}, Landroid/app/OplusActivityManager$2;-><init>(Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;)V

    .line 953
    .local v0, "taskStackListener":Landroid/app/TaskStackListener;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    goto :goto_0

    .line 954
    :catch_0
    move-exception v1

    .line 955
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusActivityManager"

    const-string v3, "registerTaskStackListener failed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist activeGc([I)V
    .locals 2
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2201
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2202
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->activeGc([I)V

    goto :goto_0

    .line 2204
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getProcCmdline failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :goto_0
    return-void
.end method

.method public whitelist addBackgroundRestrictedInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    .line 1940
    .local p2, "targetPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->addBackgroundRestrictedInfo(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1943
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "removeFastAppThirdLogin failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :goto_0
    return-void
.end method

.method public blacklist addBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2816
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->addBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist addFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "replacePkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1910
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1911
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->addFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1913
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "addFastAppThirdLogin failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :goto_0
    return-void
.end method

.method public whitelist addFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "originAppCpn"    # Ljava/lang/String;
    .param p2, "fastAppCpn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1867
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1868
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->addFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1870
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "addFastAppWCPay failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :goto_0
    return-void
.end method

.method public blacklist addFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusFreeformConfigChangedListener;

    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "shareAppPkgName"    # Ljava/lang/String;
    .param p2, "miniProgramPkgName"    # Ljava/lang/String;
    .param p3, "miniProgramSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1820
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->addMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "addMiniProgramShare failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :goto_0
    return-void
.end method

.method public blacklist addOrRemoveOplusVerifyCodeListener(ZLcom/oplus/verifycode/IOplusVerifyCodeListener;)Z
    .locals 2
    .param p1, "add"    # Z
    .param p2, "listener"    # Lcom/oplus/verifycode/IOplusVerifyCodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2735
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2736
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->addOrRemoveOplusVerifyCodeListener(ZLcom/oplus/verifycode/IOplusVerifyCodeListener;)Z

    move-result v0

    return v0

    .line 2738
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "addOrRemoveOplusVerifyCodeListener failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addPreventIndulgeList(Ljava/util/List;)V
    .locals 2
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

    .line 1960
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->addPreventIndulgeList(Ljava/util/List;)V

    goto :goto_0

    .line 1963
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "addPreventIndulgeList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :goto_0
    return-void
.end method

.method public whitelist addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "fromPkg"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to add self-protect, pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSelfProtectManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-void
.end method

.method public whitelist addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V
    .locals 9
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

    .line 1608
    .local p3, "processList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1609
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/IOplusActivityManager;->addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V

    goto :goto_0

    .line 1612
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "addStageProtectInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :goto_0
    return-void
.end method

.method public blacklist addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist anrViaTheiaEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2558
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2559
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->anrViaTheiaEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 2561
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "anrViaTheiaEvent failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :goto_0
    return-void
.end method

.method public blacklist asyncReportFrames(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "skippedFrames"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2913
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2914
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->asyncReportFrames(Ljava/lang/String;I)V

    goto :goto_0

    .line 2916
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "asyncReportFrames failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :goto_0
    return-void
.end method

.method public whitelist callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "param1"    # I
    .param p4, "param2"    # Z
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "object"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2762
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusActivityTaskManager;->callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist cleanPackageResources(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2940
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2941
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->cleanPackageResources(Ljava/lang/String;I)V

    goto :goto_0

    .line 2943
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "cleanPackageResources failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    :goto_0
    return-void
.end method

.method public whitelist clientTransactionComplete(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2515
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->clientTransactionComplete(Landroid/os/IBinder;I)V

    .line 2516
    return-void
.end method

.method public whitelist compactProcess(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "compactionFlags"    # I
    .param p3, "advice"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2644
    .local p1, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2646
    .local v0, "inBundle":Landroid/os/Bundle;
    const-string v1, "compactProcess"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2647
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Landroid/app/IOplusActivityManager;->compactProcess(Landroid/os/Bundle;II)V

    .line 2648
    .end local v0    # "inBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 2649
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "compactProcess failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :goto_0
    return-void
.end method

.method public whitelist createMirageDisplay(Landroid/view/Surface;)I
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1254
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager createMirageDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->createMirageDisplay(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method public blacklist createMirageWindowSession(Lcom/oplus/miragewindow/IOplusMirageSessionCallback;)Lcom/oplus/miragewindow/IOplusMirageWindowSession;
    .locals 2
    .param p1, "callback"    # Lcom/oplus/miragewindow/IOplusMirageSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager createMirageWindowSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->createMirageWindowSession(Lcom/oplus/miragewindow/IOplusMirageSessionCallback;)Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dismissSplitScreenMode(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->dismissSplitScreenMode(I)Z

    move-result v0

    return v0
.end method

.method public whitelist dumpProcPerfData(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2106
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->dumpProcPerfData(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2108
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "dumpProcPerfData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enterFastFreezer(Ljava/lang/String;[IJLjava/lang/String;)V
    .locals 7
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "uids"    # [I
    .param p3, "timeout"    # J
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2390
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2391
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IOplusActivityManager;->enterFastFreezer(Ljava/lang/String;[IJLjava/lang/String;)V

    goto :goto_0

    .line 2393
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "enterFastFreezer failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :goto_0
    return-void
.end method

.method public whitelist executeResPreload(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "preloadType"    # I
    .param p4, "preloadReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2330
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2331
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityManager;->executeResPreload(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 2333
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "executeResPreload failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :goto_0
    return-void
.end method

.method public whitelist exitCompactWindow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2777
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->exitCompactWindow()I

    move-result v0

    return v0
.end method

.method public whitelist exitFastFreezer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2398
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2399
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->exitFastFreezer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2401
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "exitFastFreezer failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :goto_0
    return-void
.end method

.method public final whitelist exitOplusosFreeform(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 750
    return-void
.end method

.method public whitelist expandToFullScreen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1299
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager expandTofullscreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->expandToFullScreen()V

    .line 1301
    return-void
.end method

.method public whitelist favoriteQueryRule(Ljava/lang/String;Lcom/oplus/favorite/IOplusFavoriteQueryCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/favorite/IOplusFavoriteQueryCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1930
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1931
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->favoriteQueryRule(Ljava/lang/String;Lcom/oplus/favorite/IOplusFavoriteQueryCallback;)V

    goto :goto_0

    .line 1933
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "favoriteQueryRule failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :goto_0
    return-void
.end method

.method public whitelist feedbackUserSelection(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "selection"    # I
    .param p3, "extension"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager feedbackUserSelection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->feedbackUserSelection(IILandroid/os/Bundle;)V

    .line 1350
    return-void
.end method

.method public whitelist finishNotOrderReceiver(Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8
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

    .line 2212
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2213
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/app/IOplusActivityManager;->finishNotOrderReceiver(Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 2215
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getProcCmdline failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    :goto_0
    return-void
.end method

.method public whitelist forceStopPackageAndSaveActivity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2948
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2949
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->forceStopPackageAndSaveActivity(Ljava/lang/String;I)V

    goto :goto_0

    .line 2951
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "forceStopPackageAndSaveActivity failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :goto_0
    return-void
.end method

.method public whitelist forceTrimAppMemory(I)V
    .locals 2
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2060
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2061
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->forceTrimAppMemory(I)V

    goto :goto_0

    .line 2063
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "forceTrimAppMemory failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :goto_0
    return-void
.end method

.method public blacklist getAccidentallyTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1555
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getAccidentallyTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;

    move-result-object v0

    return-object v0

    .line 1557
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getAccidentallyTouchData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAllTopAppInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusAppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAllTopPkgName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAllVisibleTasksInfo(I)Ljava/util/List;
    .locals 2
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

    .line 2546
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2547
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getAllVisibleTasksInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2549
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getTrafficPacketList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "change"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2637
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3016
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3017
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    return-object v0

    .line 3019
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getCompatModeSession failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConfigInfo(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 2
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1982
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1983
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->getConfigInfo(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 1985
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "putConfigInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public whitelist getConfineMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getConfineMode()I

    move-result v0

    return v0
.end method

.method public whitelist getCpuLimitLatestInfos(Ljava/lang/String;)Landroid/os/SharedMemory;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2019
    const/4 v0, 0x0

    .line 2020
    .local v0, "infos":Landroid/os/SharedMemory;
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2021
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IOplusActivityManager;->getCpuLimitLatestLogs(Ljava/lang/String;)Landroid/os/SharedMemory;

    move-result-object v0

    goto :goto_0

    .line 2023
    :cond_0
    const-string v1, "OplusActivityManager"

    const-string v2, "getCpuLimitLatestLogs failed because service has not been created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :goto_0
    return-object v0
.end method

.method public whitelist getCpuTotalLoad()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    const-wide/16 v0, 0x1

    .line 2035
    .local v0, "percent":J
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2036
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IOplusActivityManager;->getTotalCpuLoadPercent()J

    move-result-wide v0

    goto :goto_0

    .line 2038
    :cond_0
    const-string v2, "OplusActivityManager"

    const-string v3, "getTotalCpuLoadPercent failed because service has not been created"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :goto_0
    return-wide v0
.end method

.method public whitelist getCpuWorkingStats()Ljava/util/List;
    .locals 2
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

    .line 2006
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2007
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getCpuWorkingStats()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2009
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "putConfigInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDarkModeData(Ljava/lang/String;)Lcom/oplus/darkmode/OplusDarkModeData;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2092
    const/4 v0, 0x0

    .line 2093
    .local v0, "darkModeData":Lcom/oplus/darkmode/OplusDarkModeData;
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2094
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IOplusActivityManager;->getDarkModeData(Ljava/lang/String;)Lcom/oplus/darkmode/OplusDarkModeData;

    move-result-object v0

    goto :goto_0

    .line 2096
    :cond_0
    const-string v1, "OplusActivityManager"

    const-string v2, "getDarkModeData failed because service has not been created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :goto_0
    return-object v0
.end method

.method public whitelist getDisplayCompatData()Lcom/oplus/util/OplusDisplayCompatData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1678
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1679
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getDisplayCompatData()Lcom/oplus/util/OplusDisplayCompatData;

    move-result-object v0

    return-object v0

    .line 1681
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getDisplayCompatData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    new-instance v0, Lcom/oplus/util/OplusDisplayCompatData;

    invoke-direct {v0}, Lcom/oplus/util/OplusDisplayCompatData;-><init>()V

    return-object v0
.end method

.method public whitelist getDisplayOptimizationData()Lcom/oplus/util/OplusDisplayOptimizationData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1629
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getDisplayOptimizationData()Lcom/oplus/util/OplusDisplayOptimizationData;

    move-result-object v0

    return-object v0

    .line 1632
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getDisplayOptimizationData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    new-instance v0, Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-direct {v0}, Lcom/oplus/util/OplusDisplayOptimizationData;-><init>()V

    return-object v0
.end method

.method public whitelist getDockTopAppName()Landroid/content/ComponentName;
    .locals 1

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "cn":Landroid/content/ComponentName;
    return-object v0
.end method

.method public whitelist getDownloadingList(IZ)Ljava/util/List;
    .locals 2
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

    .line 2666
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2667
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->getDownloadingList(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2669
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getDownloadingList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFastAppReplacePkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3175
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3176
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getFastAppReplacePkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3178
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getFastAppReplacePkg failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFocusBounds(Z)Landroid/graphics/Rect;
    .locals 1
    .param p1, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2750
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getFocusBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusComponent(Z)Landroid/content/ComponentName;
    .locals 1
    .param p1, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2754
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getFocusComponent(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2746
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getFocusMode()I

    move-result v0

    return v0
.end method

.method public whitelist getFontVariationAdaption(Ljava/lang/String;)I
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    invoke-virtual {p0, p1}, Landroid/app/OplusActivityManager;->getFontVariationAdaptionData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getFontVariationAdaptionData(Ljava/lang/String;)I
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2271
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getFontVariationAdaptionData(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2273
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getFontVariationAdaptionData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFreeFormAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 737
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFreeformConfigList(I)Ljava/util/List;
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

    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getGetDisplayIdForPackageName(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager getGetDisplayIdForPackageName"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getGetDisplayIdForPackageName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getGlobalDragAndDropConfig()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getGlobalDragAndDropConfig()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGlobalPkgWhiteList(I)Ljava/util/List;
    .locals 2
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

    .line 1579
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1580
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getGlobalPkgWhiteList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1582
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getGlobalPkgWhiteList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGlobalProcessWhiteList()Ljava/util/List;
    .locals 2
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

    .line 1588
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1589
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getGlobalProcessWhiteList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1591
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getGlobalProcessWhiteList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIsSupportMultiApp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getIsSupportMultiApp()Z

    move-result v0

    return v0

    .line 1691
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getIsSupportMultiApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLeftRightBoundsForIme()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getLeftRightBoundsForIme()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinimizedBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "dockedSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getMinimizedBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMirageDisplayCastMode(I)I
    .locals 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager getMirageDisplayCastMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getMirageDisplayCastMode(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager getMirageWindowInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMultiAppAccessMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getMultiAppAccessMode(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1756
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getMultiAppAccessMode failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1706
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1709
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getMultiAppAlias failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getMultiAppAllAccessMode()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1763
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1764
    .local v0, "resMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1765
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1766
    .local v1, "outBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IOplusActivityManager;->getMultiAppAllAccessMode(Landroid/os/Bundle;)V

    .line 1767
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1768
    .local v2, "valList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1769
    .local v3, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1770
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1771
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1773
    .end local v1    # "outBundle":Landroid/os/Bundle;
    .end local v2    # "valList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 1774
    :cond_1
    const-string v1, "OplusActivityManager"

    const-string v2, "getMultiAppAllAccessMode failed because service has not been created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :goto_1
    return-object v0
.end method

.method public whitelist getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1724
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1725
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;

    move-result-object v0

    return-object v0

    .line 1727
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getMultiAppConfig failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    new-instance v0, Lcom/oplus/multiapp/OplusMultiAppConfig;

    invoke-direct {v0}, Lcom/oplus/multiapp/OplusMultiAppConfig;-><init>()V

    return-object v0
.end method

.method public whitelist getMultiAppList(I)Ljava/util/List;
    .locals 2
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

    .line 1697
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1698
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1700
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getMultiAppList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMultiAppMaxCreateNum()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1801
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getMultiAppMaxCreateNum()I

    move-result v0

    return v0

    .line 1803
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getMultiAppMaxCreateNum failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiSearchSession()Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2539
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getMultiSearchSession()Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPWAppInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2801
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getPWAppInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageFreezeDataInfos(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
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

    .line 2705
    .local p1, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2707
    .local v0, "inBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 2708
    .local v1, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 2709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 2710
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2712
    :cond_0
    const-string v2, "getPackageFreezeDataInfos"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2713
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IOplusActivityManager;->getPackageFreezeDataInfos(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2715
    .end local v0    # "inBundle":Landroid/os/Bundle;
    .end local v1    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const-string v0, "OplusActivityManager"

    const-string v1, "getPackageFreezeDataInfos failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPkgPreloadFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 2376
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2377
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getPkgPreloadFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2379
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getPkgPreloadFiles failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreloadIOSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2346
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2347
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getPreloadIOSize()J

    move-result-wide v0

    return-wide v0

    .line 2349
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getResPreloadInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getPreloadPkgList()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2367
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2368
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getPreloadPkgList()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2370
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getPreloadPkgList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public whitelist getPreloadStatus(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2355
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2356
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->getPreloadStatus(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2358
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getResPreloadInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProcCmdline([I)Ljava/util/List;
    .locals 2
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

    .line 2186
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2187
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getProcCmdline([I)Ljava/util/List;

    move-result-object v0

    .line 2188
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    return-object v0

    .line 2191
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 2192
    :cond_1
    const-string v0, "OplusActivityManager"

    const-string v1, "getProcCmdline failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProcCommonInfoList(I)Ljava/util/List;
    .locals 2
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

    .line 2118
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2119
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getProcCommonInfoList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2121
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getProcCommonInfoList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProcDependency(I)Ljava/util/List;
    .locals 2
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

    .line 2130
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2131
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getProcDependency(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2133
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getProcDependency failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProcDependency(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
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

    .line 2139
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2140
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->getProcDependencyByUserId(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2142
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getProcDependency failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRealSize()Landroid/graphics/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2758
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReflectData()Lcom/oplus/util/OplusReflectData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1855
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1856
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getReflectData()Lcom/oplus/util/OplusReflectData;

    move-result-object v0

    return-object v0

    .line 1858
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getReflectData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResPreloadInfo(II)Landroid/os/Bundle;
    .locals 2
    .param p1, "days"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2338
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2339
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->getResPreloadInfo(II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2341
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getResPreloadInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public whitelist getResolveData()Lcom/oplus/util/OplusResolveData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1842
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getResolveData()Lcom/oplus/util/OplusResolveData;

    move-result-object v0

    return-object v0

    .line 1844
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getResolveData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRunningAppProcessInfos(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
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

    .line 2688
    .local p1, "pids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2690
    .local v0, "inBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 2691
    .local v1, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 2692
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 2693
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2695
    :cond_0
    const-string v2, "getRunningAppProcessInfos"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2696
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IOplusActivityManager;->getRunningAppProcessInfos(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2698
    .end local v0    # "inBundle":Landroid/os/Bundle;
    .end local v1    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const-string v0, "OplusActivityManager"

    const-string v1, "getRunningAppProcessInfos failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRunningPidsByUid(I)[I
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2956
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2957
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getRunningPidsByUid(I)[I

    move-result-object v0

    return-object v0

    .line 2959
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getRunningPidsByUid failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRunningProcesses()Ljava/util/List;
    .locals 2
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

    .line 1887
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1888
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getRunningProcesses()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1890
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "removeFastAppWCPay failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSecureKeyboardData()Lcom/oplus/util/OplusSecureKeyboardData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getSecureKeyboardData()Lcom/oplus/util/OplusSecureKeyboardData;

    move-result-object v0

    return-object v0

    .line 1647
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getSecureKeyboardData failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSecurityFlagCurrentPage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2579
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager getSecurityFlagCurrentPage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getSecurityFlagCurrentPage()Z

    move-result v0

    return v0
.end method

.method public blacklist getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSplitScreenState(Landroid/content/Intent;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public whitelist getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStageProtectList(I)Ljava/util/List;
    .locals 2
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

    .line 2596
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2597
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getStageProtectList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2599
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getStageProtectList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStageProtectListAsUser(II)Ljava/util/List;
    .locals 2
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

    .line 2605
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2606
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->getStageProtectListAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2608
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getStageProtectListAsUser failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
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

    .line 1656
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1657
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1659
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getStageProtectListFromPkg failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStageProtectListFromPkgAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
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

    .line 2588
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2589
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->getStageProtectListFromPkgAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2591
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getStageProtectListFromPkgAsUser failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTaskPkgList(I)Ljava/util/List;
    .locals 2
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

    .line 2148
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2149
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->getTaskPkgList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2151
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getTaskPkgList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTerminateObservers()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3128
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3129
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getTerminateObservers()[I

    move-result-object v0

    return-object v0

    .line 3131
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getTerminateObservers failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTopApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getTopApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTopPidsLoadInfos(I)Ljava/util/List;
    .locals 3
    .param p1, "topNum"    # I
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

    .line 2046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2048
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IOplusActivityManager;->getTopLoadPidsInfos(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2050
    :cond_0
    const-string v1, "OplusActivityManager"

    const-string v2, "getTopLoadPidsInfos failed because service has not been created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :goto_0
    return-object v0
.end method

.method public whitelist getTrafficBytesList(Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2438
    .local v0, "inBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2439
    .local v1, "outBundle":Landroid/os/Bundle;
    const-string v2, "getTrafficBytesList"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2440
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/app/IOplusActivityManager;->getTrafficBytesList(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 2441
    .local v2, "spareArrayStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/app/OplusActivityManager;->StringToSpareArrayLong(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    return-object v3

    .line 2443
    .end local v0    # "inBundle":Landroid/os/Bundle;
    .end local v1    # "outBundle":Landroid/os/Bundle;
    .end local v2    # "spareArrayStr":Ljava/lang/String;
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getTrafficBytesList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTrafficPacketList(Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2449
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2451
    .local v0, "inBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2452
    .local v1, "outBundle":Landroid/os/Bundle;
    const-string v2, "getTrafficPacketList"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2453
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/app/IOplusActivityManager;->getTrafficPacketList(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 2454
    .local v2, "spareArrayStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/app/OplusActivityManager;->StringToSpareArrayLong(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    return-object v3

    .line 2456
    .end local v0    # "inBundle":Landroid/os/Bundle;
    .end local v1    # "outBundle":Landroid/os/Bundle;
    .end local v2    # "spareArrayStr":Ljava/lang/String;
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getTrafficPacketList failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUXIconData()Lcom/oplus/util/OplusUXIconData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2619
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getUXIconData()Lcom/oplus/util/OplusUXIconData;

    move-result-object v0

    return-object v0

    .line 2621
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getStageProtectListAsUser failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUidCpuWorkingStats()Ljava/util/List;
    .locals 2
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

    .line 2176
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2177
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->getUidCpuWorkingStats()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2179
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "getUidCpuWorkingStats failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getZoomAppConfigList(I)Ljava/util/List;
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

    .line 794
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getZoomAppConfigList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object v0

    return-object v0
.end method

.method public whitelist grantOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1526
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1527
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->grantOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1529
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "grantOplusPermissionByGroup failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :goto_0
    return-void
.end method

.method public whitelist handleAppForNotification(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "otherInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1543
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->handleAppForNotification(Ljava/lang/String;II)V

    goto :goto_0

    .line 1545
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "revokeOplusPermissionByGroup failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_0
    return-void
.end method

.method public whitelist handleAppFromControlCenter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1668
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->handleAppFromControlCenter(Ljava/lang/String;I)V

    goto :goto_0

    .line 1670
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "handleAppFromControlCenter failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :goto_0
    return-void
.end method

.method public whitelist handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;
    .param p4, "extension"    # Landroid/os/Bundle;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/OplusActivityTaskManager;->handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasLargeScreenFeature()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->hasLargeScreenFeature()Z

    move-result v0

    return v0
.end method

.method public whitelist hideZoomWindow(I)V
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->hideZoomWindow(I)V

    .line 791
    return-void
.end method

.method public whitelist inDownloading(IIZ)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "thresholdSpeed"    # I
    .param p3, "rough"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2657
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2658
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->inDownloading(IIZ)Z

    move-result v0

    return v0

    .line 2660
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "inDownloading failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "object"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2766
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityTaskManager;->invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isAppCallRefuseMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    invoke-virtual {p0}, Landroid/app/OplusActivityManager;->getConfineMode()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isCurrentAppSupportCompactMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2781
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isCurrentAppSupportCompactMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isFolderInnerScreen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isFolderInnerScreen()Z

    move-result v0

    return v0
.end method

.method public whitelist isFreeformEnabled()Z
    .locals 1

    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFrozenByHans(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2406
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2407
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->isFrozenByHans(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 2409
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "isFrozenByHans failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInSplitScreenMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isInSplitScreenMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isMirageWindowShow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager isMirageWindowShow"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isMirageWindowShow()Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiApp(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1782
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->isMultiApp(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1784
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "isMultiApp failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNightMode()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2080
    const/4 v0, 0x0

    .line 2081
    .local v0, "success":Z
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2082
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IOplusActivityManager;->isNightMode()Z

    move-result v0

    goto :goto_0

    .line 2084
    :cond_0
    const-string v1, "OplusActivityManager"

    const-string v2, "isNightMode failed because service has not been created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :goto_0
    return v0
.end method

.method public whitelist isPermissionInterceptEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1454
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1455
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->isPermissionInterceptEnabled()Z

    move-result v0

    return v0

    .line 1457
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "isPermissionInterceptEnabled failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSupportEdgeTouchPrevent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isSupportEdgeTouchPrevent()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportMirageWindowMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager isSupportMirageWindowMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isSupportMirageWindowMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;
    .param p4, "extension"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityTaskManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportZoomWindowMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isSupportZoomWindowMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isTouchNodeSupport(II)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->isTouchNodeSupport(II)Z

    move-result v0

    return v0
.end method

.method public whitelist isZoomSimpleModeEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isZoomSimpleModeEnable()Z

    move-result v0

    return v0
.end method

.method public whitelist killPidForce(I)V
    .locals 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1498
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->killPidForce(I)V

    goto :goto_0

    .line 1501
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "killPidForce failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :goto_0
    return-void
.end method

.method public whitelist moveCompactWindowToLeft()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2785
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->moveCompactWindowToLeft()I

    move-result v0

    return v0
.end method

.method public whitelist moveCompactWindowToRight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2789
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->moveCompactWindowToRight()I

    move-result v0

    return v0
.end method

.method public whitelist notifyAppKillReason(IIIILjava/lang/String;)V
    .locals 7
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

    .line 2258
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2259
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IOplusActivityManager;->notifyAppKillReason(IIIILjava/lang/String;)V

    goto :goto_0

    .line 2261
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "queryProcessNameFromPid failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :goto_0
    return-void
.end method

.method public whitelist notifyAthenaOnekeyClearRunning(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2318
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2319
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->notifyAthenaOnekeyClearRunning(I)V

    goto :goto_0

    .line 2321
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "notifyAthenaOnekeyClearRunning failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :goto_0
    return-void
.end method

.method public blacklist notifyProcessTerminate([ILjava/lang/String;)V
    .locals 2
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3139
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3140
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->notifyProcessTerminate([ILjava/lang/String;)V

    goto :goto_0

    .line 3142
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "notifyProcessTerminate failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    :goto_0
    return-void
.end method

.method public whitelist notifyProcessTerminateFinish(Lcom/oplus/app/OplusProcessTerminateObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/oplus/app/OplusProcessTerminateObserver;

    .line 3089
    if-nez p1, :cond_0

    .line 3090
    return-void

    .line 3092
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/app/OplusProcessTerminateObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IProcessTerminateObserver;

    move-result-object v0

    .line 3093
    .local v0, "iptObserver":Lcom/oplus/app/IProcessTerminateObserver;
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3094
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IOplusActivityManager;->notifyProcessTerminateFinish(Lcom/oplus/app/IProcessTerminateObserver;)V

    goto :goto_0

    .line 3096
    :cond_1
    const-string v1, "OplusActivityManager"

    const-string v2, "notifyProcessTerminateFinish failed because service has not been created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3100
    .end local v0    # "iptObserver":Lcom/oplus/app/IProcessTerminateObserver;
    :goto_0
    nop

    .line 3101
    return-void

    .line 3098
    :catch_0
    move-exception v0

    .line 3099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "broadcast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1098
    return-void
.end method

.method public whitelist notifyUiSwitched(Ljava/lang/String;I)V
    .locals 2
    .param p1, "uiInfo"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2723
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2724
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->notifyUiSwitched(Ljava/lang/String;I)V

    goto :goto_0

    .line 2726
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "notifyUiSwitched failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :goto_0
    return-void
.end method

.method public blacklist notifyZoomStateChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->notifyZoomStateChange(Ljava/lang/String;I)V

    .line 882
    return-void
.end method

.method public blacklist onBackPressedOnTheiaMonitor(J)V
    .locals 2
    .param p1, "pressNow"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2859
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2860
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->onBackPressedOnTheiaMonitor(J)V

    goto :goto_0

    .line 2862
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "onBackPressedOnTheiaMonitor failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :goto_0
    return-void
.end method

.method public whitelist onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 1
    .param p1, "cvInfo"    # Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    .line 803
    return-void
.end method

.method public whitelist onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V
    .locals 1
    .param p1, "floatHandleInfo"    # Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V

    .line 808
    return-void
.end method

.method public whitelist onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 1
    .param p1, "inputEventInfo"    # Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 799
    return-void
.end method

.method public whitelist onProtocolUpdated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2805
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->onProtocolUpdated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist putConfigInfo(Ljava/lang/String;Landroid/os/Bundle;II)Z
    .locals 2
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "flag"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1972
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityManager;->putConfigInfo(Ljava/lang/String;Landroid/os/Bundle;II)Z

    move-result v0

    return v0

    .line 1974
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "putConfigInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist queryProcessNameFromPid(I)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2246
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2247
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->queryProcessNameFromPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2249
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "queryProcessNameFromPid failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    const-string v0, ""

    return-object v0
.end method

.method public whitelist queryUsageStats(IJJ)Ljava/util/List;
    .locals 7
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

    .line 2675
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2676
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/IOplusActivityManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2678
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "queryUsageStats failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist readNodeFile(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->readNodeFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readNodeFileByDevice(II)Ljava/lang/String;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->readNodeFileByDevice(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist rebindDisplayIfNeeded(II)Z
    .locals 2
    .param p1, "castDisplayId"    # I
    .param p2, "mirageDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1358
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager rebindDisplayIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->rebindDisplayIfNeeded(II)Z

    move-result v0

    return v0
.end method

.method public blacklist registerAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/oplus/app/IOplusAppSwitchObserver;
    .param p3, "config"    # Lcom/oplus/app/OplusAppSwitchConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->registerAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2793
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/confinemode/IOplusConfineModeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oplus/eap/IOplusEapDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2470
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2471
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->registerEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V

    goto :goto_0

    .line 2473
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "registerEapDataCallback failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :goto_0
    return-void
.end method

.method public whitelist registerErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2495
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2496
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->registerErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V

    goto :goto_0

    .line 2498
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "registerErrorInfoCallback failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    :goto_0
    return-void
.end method

.method public blacklist registerHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/app/IOplusHansListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2286
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->registerHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z

    move-result v0

    return v0

    .line 2288
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "registerHansListener failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerKeyEventInterceptor(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;Ljava/util/Map;)Z
    .locals 1
    .param p1, "interceptorFingerPrint"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/IOplusKeyEventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/IOplusKeyEventObserver;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->registerKeyEventInterceptor(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerKeyEventObserver(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;I)Z
    .locals 1
    .param p1, "observerFingerPrint"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/IOplusKeyEventObserver;
    .param p3, "listenFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->registerKeyEventObserver(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist registerLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager registerMirageDisplayObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager registerMirageWindowObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/app/ISecurityPageController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2569
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager registerSecurityPageCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observerId"    # I
    .param p2, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->registerSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/datasync/ISysStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->registerSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/app/IProcessTerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3106
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3107
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->registerTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z

    move-result v0

    return v0

    .line 3109
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "registerTerminateObserver failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerTerminateObserver(Lcom/oplus/app/OplusProcessTerminateObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/app/OplusProcessTerminateObserver;

    .line 3040
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3041
    return v0

    .line 3043
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/app/OplusProcessTerminateObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IProcessTerminateObserver;

    move-result-object v1

    .line 3044
    .local v1, "iptObserver":Lcom/oplus/app/IProcessTerminateObserver;
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3045
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/app/IOplusActivityManager;->registerTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z

    move-result v0

    return v0

    .line 3047
    :cond_1
    const-string v2, "OplusActivityManager"

    const-string v3, "registerTerminateObserver failed because service has not been created"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    return v0

    .line 3050
    .end local v1    # "iptObserver":Lcom/oplus/app/IProcessTerminateObserver;
    :catch_0
    move-exception v0

    .line 3051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/app/ITerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3149
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3150
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->registerTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z

    move-result v0

    return v0

    .line 3152
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "registerTerminateStateObserver failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2823
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->removeBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist removeFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "replacePkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1919
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1920
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->removeFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1922
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "removeFastAppThirdLogin failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :goto_0
    return-void
.end method

.method public whitelist removeFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "originAppCpn"    # Ljava/lang/String;
    .param p2, "fastAppCpn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1876
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1877
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->removeFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1879
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "removeFastAppWCPay failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :goto_0
    return-void
.end method

.method public blacklist removeFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusFreeformConfigChangedListener;

    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "shareAppPkgName"    # Ljava/lang/String;
    .param p2, "miniProgramPkgName"    # Ljava/lang/String;
    .param p3, "miniProgramSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1829
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1830
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->addMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "addMiniProgramShare failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :goto_0
    return-void
.end method

.method public whitelist removeStageProtectInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "protectPkg"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1617
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1618
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->removeStageProtectInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "removeStageProtectInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :goto_0
    return-void
.end method

.method public blacklist removeZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->removeZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v0

    return v0
.end method

.method public blacklist reportBindApplicationFinished(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2884
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2885
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->reportBindApplicationFinished(Ljava/lang/String;II)V

    goto :goto_0

    .line 2887
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "reportBindApplicationFinished failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    :goto_0
    return-void
.end method

.method public whitelist reportSkippedFrames(JJ)V
    .locals 7
    .param p1, "currentTime"    # J
    .param p3, "skippedFrames"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusActivityManager;->reportSkippedFrames(JZZJ)V

    .line 2222
    return-void
.end method

.method public whitelist reportSkippedFrames(JZZJ)V
    .locals 8
    .param p1, "currentTime"    # J
    .param p3, "isAnimation"    # Z
    .param p4, "isForeground"    # Z
    .param p5, "skippedFrames"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2227
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2228
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/app/IOplusActivityManager;->reportSkippedFrames(JZZJ)V

    goto :goto_0

    .line 2230
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "reportSkippedFrames failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :goto_0
    return-void
.end method

.method public whitelist reportSkippedFrames(JZZJLjava/lang/String;)V
    .locals 9
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

    .line 2236
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2237
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/IOplusActivityManager;->reportSkippedFramesProcName(JZZJLjava/lang/String;)V

    goto :goto_0

    .line 2239
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "reportSkippedFrames failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :goto_0
    return-void
.end method

.method public whitelist requestDeviceFolded(IZ)Z
    .locals 2
    .param p1, "folded"    # I
    .param p2, "enableSecDisplay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2979
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2980
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->requestDeviceFolded(IZ)Z

    move-result v0

    return v0

    .line 2982
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "requestDeviceFolded failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetDefaultEdgeTouchPreventParam(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->resetDefaultEdgeTouchPreventParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist revokeOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1534
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1535
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->revokeOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1537
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "revokeOplusPermissionByGroup failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :goto_0
    return-void
.end method

.method public whitelist scanFileIfNeed(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1809
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1810
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->scanFileIfNeed(ILjava/lang/String;)V

    goto :goto_0

    .line 1812
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "scanFileIfNeed failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :goto_0
    return-void
.end method

.method public blacklist sendFlingTransit(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2992
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2993
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->sendFlingTransit(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 2995
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "sendFlingTransit failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    :goto_0
    return-void
.end method

.method public blacklist sendTheiaEvent(JLandroid/content/Intent;)V
    .locals 2
    .param p1, "category"    # J
    .param p3, "args"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2870
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2871
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->sendTheiaEvent(JLandroid/content/Intent;)V

    goto :goto_0

    .line 2873
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "sendTheiaEvent failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :goto_0
    return-void
.end method

.method public whitelist setAllowLaunchApps(Ljava/util/List;)V
    .locals 3
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

    .line 1027
    .local p1, "allowLaunchApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/app/OplusActivityManager;->setPermitList(IILjava/util/List;Z)V

    .line 1031
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/app/OplusActivityManager;->setPermitList(IILjava/util/List;Z)V

    .line 1034
    return-void
.end method

.method public whitelist setAppCallRefuseMode(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/OplusActivityManager;->setConfineMode(IZ)V

    .line 1020
    return-void
.end method

.method public whitelist setAppFreeze(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2306
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2307
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->setAppFreeze(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2309
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setAppFreeze failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAppStartMonitorController(Lcom/oplus/app/IOplusAppStartController;)V
    .locals 2
    .param p1, "watcher"    # Lcom/oplus/app/IOplusAppStartController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1899
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->setAppStartMonitorController(Lcom/oplus/app/IOplusAppStartController;)V

    goto :goto_0

    .line 1901
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setAppStartMonitorController failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :goto_0
    return-void
.end method

.method public whitelist setChildSpaceMode(Z)V
    .locals 1
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/OplusActivityManager;->setConfineMode(IZ)V

    .line 1024
    return-void
.end method

.method public whitelist setConfineMode(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->setConfineMode(IZ)V

    .line 1038
    return-void
.end method

.method public whitelist setDefaultEdgeTouchPreventParam(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
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

    .line 980
    .local p2, "paramCmdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->setDefaultEdgeTouchPreventParam(Ljava/lang/String;Ljava/util/List;)V

    .line 981
    return-void
.end method

.method public whitelist setEdgeTouchCallRules(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    .local p2, "rulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->setEdgeTouchCallRules(Ljava/lang/String;Ljava/util/Map;)V

    .line 993
    return-void
.end method

.method public whitelist setGameSpaceController(Lcom/oplus/app/IOplusGameSpaceController;)V
    .locals 2
    .param p1, "watcher"    # Lcom/oplus/app/IOplusGameSpaceController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1569
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1570
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->setGameSpaceController(Lcom/oplus/app/IOplusGameSpaceController;)V

    goto :goto_0

    .line 1572
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setGameSpaceController failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :goto_0
    return-void
.end method

.method public whitelist setGimbalLaunchPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setGimbalLaunchPkg(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public blacklist setGlThreads(II)V
    .locals 2
    .param p1, "glID"    # I
    .param p2, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2846
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2847
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->setGlThreads(II)V

    goto :goto_0

    .line 2849
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setGlThreads failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :goto_0
    return-void
.end method

.method public whitelist setGlobalDragAndDropConfig(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setGlobalDragAndDropConfig(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V

    .line 1230
    return-void
.end method

.method public blacklist setHwuiTaskThreads(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2835
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2836
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->setHwuiTaskThreads(II)V

    goto :goto_0

    .line 2838
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setHwuiTaskThreads failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    :goto_0
    return-void
.end method

.method public blacklist setIMECrop(I)V
    .locals 1
    .param p1, "imeCropY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setIMECrop(I)V

    .line 816
    return-void
.end method

.method public whitelist setMirageDisplaySurfaceById(ILandroid/view/Surface;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1284
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager setMirageDisplaySurfaceById"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->setMirageDisplaySurfaceById(ILandroid/view/Surface;)V

    .line 1286
    return-void
.end method

.method public whitelist setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager setMirageDisplaySurfaceByMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V

    .line 1291
    return-void
.end method

.method public whitelist setMirageWindowSilent(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1304
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager setMirageWindowSilent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setMirageWindowSilent(Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method public whitelist setMultiAppAccessMode(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1743
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1744
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->setMultiAppAccessMode(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1746
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setMultiAppAccessMode failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1734
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1736
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setMultiAppAlias failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)I
    .locals 2
    .param p1, "config"    # Lcom/oplus/multiapp/OplusMultiAppConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1715
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1716
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)I

    move-result v0

    return v0

    .line 1718
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setMultiAppConfig failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setMultiAppStatus(Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1791
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1792
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->setMultiAppStatus(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1794
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setMultiAppStatus failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPackagesState(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    .local p1, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setPackagesState(Ljava/util/Map;)V

    .line 1074
    return-void
.end method

.method public whitelist setPermissionInterceptEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1446
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1447
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->setPermissionInterceptEnable(Z)V

    goto :goto_0

    .line 1449
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setPermissionInterceptEnable failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :goto_0
    return-void
.end method

.method public whitelist setPermissionRecordController(Lcom/oplus/app/IOplusPermissionRecordController;)V
    .locals 2
    .param p1, "watcher"    # Lcom/oplus/app/IOplusPermissionRecordController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2070
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2071
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->setPermissionRecordController(Lcom/oplus/app/IOplusPermissionRecordController;)V

    goto :goto_0

    .line 2073
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setPermissionRecordController failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :goto_0
    return-void
.end method

.method public whitelist setPermitList(IILjava/util/List;Z)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "type"    # I
    .param p4, "isMultiApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    .local p3, "permits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityTaskManager;->setPermitList(IILjava/util/List;Z)V

    .line 1046
    return-void
.end method

.method public whitelist setPreventIndulgeController(Lcom/oplus/app/IOplusAppStartController;)V
    .locals 2
    .param p1, "controller"    # Lcom/oplus/app/IOplusAppStartController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1951
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1952
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->setPreventIndulgeController(Lcom/oplus/app/IOplusAppStartController;)V

    goto :goto_0

    .line 1954
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setPreventIndulgeController failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :goto_0
    return-void
.end method

.method public blacklist setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3003
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3004
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 3006
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "setSceneActionTransit failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :goto_0
    return-void
.end method

.method public blacklist setSecureController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setSecureController(Landroid/app/IActivityController;)V

    .line 645
    return-void
.end method

.method public whitelist setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "properties"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1475
    return-void
.end method

.method public blacklist setTaskWindowingModeSplitScreen(I)I
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setTaskWindowingModeSplitScreen(I)I

    move-result v0

    return v0
.end method

.method public whitelist setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    .line 843
    return-void
.end method

.method public blacklist shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "down"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2532
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist splitScreenForEdgePanel(Landroid/content/Intent;I)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->splitScreenForEdgePanel(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method

.method public whitelist splitScreenForEdgePanel(Landroid/content/Intent;ZI)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "launchToPrimary"    # Z
    .param p3, "launchArea"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->splitScreenForEdgePanelExt(Landroid/content/Intent;ZI)Z

    move-result v0

    return v0
.end method

.method public whitelist splitScreenForRecentTasks(I)Z
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->splitScreenForRecentTasks(I)Z

    move-result v0

    return v0
.end method

.method public whitelist splitScreenForTopApp(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->splitScreenForTopApp(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist startActivityForFreeform(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bOptions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "callPkg"    # Ljava/lang/String;

    .line 744
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist startCompactWindow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2773
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->startCompactWindow()I

    move-result v0

    return v0
.end method

.method public whitelist startMiniZoomFromZoom(I)V
    .locals 1
    .param p1, "startWay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->startMiniZoomFromZoom(I)V

    .line 835
    return-void
.end method

.method public whitelist startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager startMirageWindowMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public whitelist startMirageWindowMode(Landroid/content/ComponentName;IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "cpnName"    # Landroid/content/ComponentName;
    .param p2, "taskId"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager startMirageWindowMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityTaskManager;->startMirageWindowModeWithName(Landroid/content/ComponentName;IILandroid/os/Bundle;)V

    .line 1261
    return-void
.end method

.method public whitelist startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityTaskManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist stopMirageWindowMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1274
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager stopMirageWindowMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->stopMirageWindowModeOld()V

    .line 1276
    return-void
.end method

.method public whitelist stopMirageWindowMode(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager stopMirageWindowMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->stopMirageWindowMode(Landroid/os/Bundle;)V

    .line 1281
    return-void
.end method

.method public whitelist swapDockedFullscreenStack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    return-void
.end method

.method public whitelist syncPermissionRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2159
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2160
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->syncPermissionRecord()V

    goto :goto_0

    .line 2162
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "syncPermissionRecord failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :goto_0
    return-void
.end method

.method public blacklist unfreezeForKernel(IIILjava/lang/String;I)V
    .locals 7
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

    .line 2899
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2900
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IOplusActivityManager;->unfreezeForKernel(IIILjava/lang/String;I)V

    goto :goto_0

    .line 2902
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "unfreezeForKernel failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    :goto_0
    return-void
.end method

.method public blacklist unfreezeForKernelTargetPid(IIIIILjava/lang/String;I)V
    .locals 9
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

    .line 2930
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2931
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/IOplusActivityManager;->unfreezeForKernelTargetPid(IIIIILjava/lang/String;I)V

    goto :goto_0

    .line 2933
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "unfreezeForKernelTargetPid failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    :goto_0
    return-void
.end method

.method public whitelist unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/oplus/app/OplusAppSwitchConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2797
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/confinemode/IOplusConfineModeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oplus/eap/IOplusEapDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2478
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2479
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->unregisterEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V

    goto :goto_0

    .line 2481
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "unregisterEapDataCallback failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :goto_0
    return-void
.end method

.method public whitelist unregisterErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2503
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2504
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->unregisterErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V

    goto :goto_0

    .line 2506
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "unregisterErrorInfoCallback failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :goto_0
    return-void
.end method

.method public blacklist unregisterHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/app/IOplusHansListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2297
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2298
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityManager;->unregisterHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z

    move-result v0

    return v0

    .line 2300
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "unregisterHansListener failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterKeyEventInterceptor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "interceptorFingerPrint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterKeyEventInterceptor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterKeyEventObserver(Ljava/lang/String;)Z
    .locals 1
    .param p1, "observerFingerPrint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterKeyEventObserver(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/app/ISecurityPageController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2574
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager unregisterSecurityPageCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observerId"    # I
    .param p2, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->unregisterSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/datasync/ISysStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->unregisterSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/app/IProcessTerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3117
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3118
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->unregisterTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z

    move-result v0

    return v0

    .line 3120
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "unregisterTerminateObserver failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterTerminateObserver(Lcom/oplus/app/OplusProcessTerminateObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/app/OplusProcessTerminateObserver;

    .line 3065
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3066
    return v0

    .line 3068
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/app/OplusProcessTerminateObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IProcessTerminateObserver;

    move-result-object v1

    .line 3069
    .local v1, "iptObserver":Lcom/oplus/app/IProcessTerminateObserver;
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3070
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/app/IOplusActivityManager;->unregisterTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z

    move-result v0

    return v0

    .line 3072
    :cond_1
    const-string v2, "OplusActivityManager"

    const-string v3, "unregisterTerminateObserver failed because service has not been created"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3073
    return v0

    .line 3075
    .end local v1    # "iptObserver":Lcom/oplus/app/IProcessTerminateObserver;
    :catch_0
    move-exception v0

    .line 3076
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z
    .locals 2
    .param p1, "observer"    # Lcom/oplus/app/ITerminateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3160
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3161
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->unregisterTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z

    move-result v0

    return v0

    .line 3163
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "unregisterTerminateStateObserver failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateANRDumpState(Landroid/os/SharedMemory;)V
    .locals 2
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2486
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2487
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityManager;->updateANRDumpState(Landroid/os/SharedMemory;)V

    goto :goto_0

    .line 2489
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "updateANRDumpState failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :goto_0
    return-void
.end method

.method public whitelist updateAppData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->updateAppData(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager updateCarModeMultiLaunchWhiteList"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateCpuTracker(J)F
    .locals 3
    .param p1, "lastUpdateTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1995
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1996
    .local v0, "percent":F
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1997
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IOplusActivityManager;->updateCpuTracker(J)F

    move-result v1

    return v1

    .line 1999
    :cond_0
    const-string v1, "OplusActivityManager"

    const-string v2, "putConfigInfo failed because service has not been created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    return v0
.end method

.method public whitelist updateDeferStartingWindowApps(Ljava/util/List;Z)V
    .locals 1
    .param p2, "removeImmdiately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2630
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->updateDeferStartingWindowApps(Ljava/util/List;Z)V

    .line 2631
    return-void
.end method

.method public whitelist updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "castFlag"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager updateMirageWindowCastFlag"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "choice"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1438
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityManager;->updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1441
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "updatePermissionChoice failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :goto_0
    return-void
.end method

.method public whitelist updatePrivacyProtectionList(Ljava/util/List;Z)Z
    .locals 2
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager updatePrivacyProtectionList"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->updatePrivacyProtectionList(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist updatePrivacyProtectionList(Ljava/util/List;ZZLandroid/os/Bundle;)Z
    .locals 2
    .param p2, "append"    # Z
    .param p3, "isDefault"    # Z
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1329
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "MirageDisplayWindow"

    const-string v1, "OplusActivityManager default updatePrivacyProtectionList"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityTaskManager;->updatePrivacyProtectionListWithBundle(Ljava/util/List;ZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateUidCpuTracker()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2169
    invoke-static {}, Landroid/app/OplusActivityManager;->getService()Landroid/app/IOplusActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityManager;->updateUidCpuTracker()V

    goto :goto_0

    .line 2171
    :cond_0
    const-string v0, "OplusActivityManager"

    const-string v1, "updateUidCpuTracker failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :goto_0
    return-void
.end method

.method public whitelist updateUntrustedTouchConfig(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "configData"    # Ljava/lang/String;
    .param p2, "isRus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2522
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->updateUntrustedTouchConfig(Ljava/lang/String;Z)V

    .line 2523
    return-void
.end method

.method public whitelist writeEdgeTouchPreventParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .param p2, "scenePkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    .local p3, "paramCmdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->writeEdgeTouchPreventParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeNodeFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "nodeFlag"    # I
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->writeNodeFile(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeNodeFileByDevice(IILjava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .param p3, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1404
    iget-object v0, p0, Landroid/app/OplusActivityManager;->mOplusAtm:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->writeNodeFileByDevice(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
