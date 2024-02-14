.class Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;
.super Ljava/lang/Object;
.source "RpmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RpmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerStateSubsystemSleepStateResult"
.end annotation


# instance fields
.field public blacklist mPowerStateSubsystemSleepState:Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

.field public blacklist mReturnCode:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;->mReturnCode:I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;->mPowerStateSubsystemSleepState:Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setResult(ILvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;)V
    .locals 0
    .param p1, "ret"    # I
    .param p2, "subsystem"    # Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 110
    iput p1, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;->mReturnCode:I

    .line 111
    iput-object p2, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;->mPowerStateSubsystemSleepState:Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 112
    return-void
.end method
