.class public Landroid/os/RpmManager;
.super Ljava/lang/Object;
.source "RpmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;,
        Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "RpmManager"

.field private static volatile blacklist sRpmhService:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Landroid/os/RpmManager;->sRpmhService:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getPowerStateSubsystemSleepState(Ljava/lang/String;)Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;-><init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult-IA;)V

    .line 64
    .local v0, "result":Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;
    :try_start_0
    invoke-static {}, Landroid/os/RpmManager;->getRpmhService()Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;

    move-result-object v1

    .line 65
    .local v1, "service":Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    if-eqz v1, :cond_0

    .line 66
    new-instance v2, Landroid/os/RpmManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/os/RpmManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;)V

    invoke-interface {v1, p0, v2}, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;->getPowerStateSubsystemSleepState(Ljava/lang/String;Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$getPowerStateSubsystemSleepStateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "service":Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    :cond_0
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, v0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;->mPowerStateSubsystemSleepState:Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    return-object v1
.end method

.method public static blacklist getPowerStateSubsystemSleepStateList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;-><init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult-IA;)V

    .line 79
    .local v0, "result":Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;
    :try_start_0
    invoke-static {}, Landroid/os/RpmManager;->getRpmhService()Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;

    move-result-object v1

    .line 80
    .local v1, "service":Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    if-eqz v1, :cond_0

    .line 81
    new-instance v2, Landroid/os/RpmManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/os/RpmManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;)V

    invoke-interface {v1, v2}, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;->getPowerStateSubsystemSleepStateList(Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$getPowerStateSubsystemSleepStateListCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "service":Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, v0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    return-object v1
.end method

.method private static blacklist getRpmhService()Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    .locals 4

    .line 33
    sget-object v0, Landroid/os/RpmManager;->sRpmhService:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Landroid/os/RpmManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Landroid/os/RpmManager;->sRpmhService:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 37
    :try_start_1
    invoke-static {}, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;->getService()Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;

    move-result-object v1

    sput-object v1, Landroid/os/RpmManager;->sRpmhService:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "RpmManager"

    const-string v3, "Failed to get rpmh hal service: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_1
    sget-object v0, Landroid/os/RpmManager;->sRpmhService:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;

    return-object v0
.end method

.method static synthetic blacklist lambda$getPowerStateSubsystemSleepState$0(Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;ILvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;)V
    .locals 0
    .param p0, "result"    # Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;
    .param p1, "ret"    # I
    .param p2, "subsystem"    # Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;->setResult(ILvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;)V

    .line 68
    return-void
.end method

.method static synthetic blacklist lambda$getPowerStateSubsystemSleepStateList$1(Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "result"    # Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;
    .param p1, "ret"    # I
    .param p2, "subsystemList"    # Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;->setResult(ILjava/util/ArrayList;)V

    .line 83
    return-void
.end method

.method public static blacklist triggerDumpType(I)I
    .locals 4
    .param p0, "type"    # I

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "ret":I
    :try_start_0
    invoke-static {}, Landroid/os/RpmManager;->getRpmhService()Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;

    move-result-object v1

    .line 136
    .local v1, "service":Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v1, p0}, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;->triggerDumpType(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 141
    .end local v1    # "service":Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
    :cond_0
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RpmManager"

    const-string v3, "triggerDumpType() failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method
