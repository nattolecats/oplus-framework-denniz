.class Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;
.super Ljava/lang/Object;
.source "RpmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RpmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerStateSubsystemSleepStateListResult"
.end annotation


# instance fields
.field public blacklist mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mReturnCode:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;->mReturnCode:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setResult(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "ret"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p2, "subsystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;>;"
    iput p1, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;->mReturnCode:I

    .line 121
    iput-object p2, p0, Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    .line 122
    return-void
.end method
