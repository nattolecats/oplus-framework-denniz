.class public final synthetic Landroid/os/RpmManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$getPowerStateSubsystemSleepStateCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/RpmManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;

    return-void
.end method


# virtual methods
.method public final blacklist onValues(ILvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;)V
    .locals 1

    iget-object v0, p0, Landroid/os/RpmManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;

    invoke-static {v0, p1, p2}, Landroid/os/RpmManager;->lambda$getPowerStateSubsystemSleepState$0(Landroid/os/RpmManager$PowerStateSubsystemSleepStateResult;ILvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;)V

    return-void
.end method
