.class public final synthetic Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/SignalMapManager$IRetryTimeout;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/SignalMapManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/SignalMapManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/SignalMapManager;

    return-void
.end method


# virtual methods
.method public final blacklist getBackOffTime()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/SignalMapManager;

    invoke-virtual {v0}, Landroid/telephony/SignalMapManager;->lambda$new$0$android-telephony-SignalMapManager()I

    move-result v0

    return v0
.end method
