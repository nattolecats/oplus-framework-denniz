.class public final synthetic Landroid/os/RpmManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$getPowerStateSubsystemSleepStateListCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/RpmManager$$ExternalSyntheticLambda1;->f$0:Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;

    return-void
.end method


# virtual methods
.method public final blacklist onValues(ILjava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Landroid/os/RpmManager$$ExternalSyntheticLambda1;->f$0:Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;

    invoke-static {v0, p1, p2}, Landroid/os/RpmManager;->lambda$getPowerStateSubsystemSleepStateList$1(Landroid/os/RpmManager$PowerStateSubsystemSleepStateListResult;ILjava/util/ArrayList;)V

    return-void
.end method
