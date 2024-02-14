.class public Landroid/telephony/SignalMapCallback;
.super Ljava/lang/Object;
.source "SignalMapCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;,
        Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;,
        Landroid/telephony/SignalMapCallback$GeoFenceStateListener;,
        Landroid/telephony/SignalMapCallback$QoSPredictListener;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_GEO_FENCE_STATE_CHANGED:I = 0x2

.field public static final blacklist EVENT_GEO_FENCE_STATE_CHANGED_SECONDLY:I = 0x3

.field public static final blacklist EVENT_QOS_PREDICTION_STATE_CHANGED:I = 0x1


# instance fields
.field public blacklist mCallback:Lcom/android/internal/telephony/signalMap/ISignalMapCallback;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 106
    if-eqz p1, :cond_0

    .line 109
    new-instance v0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;-><init>(Landroid/telephony/SignalMapCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/SignalMapCallback;->mCallback:Lcom/android/internal/telephony/signalMap/ISignalMapCallback;

    .line 110
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignalMapCallback must had a executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
