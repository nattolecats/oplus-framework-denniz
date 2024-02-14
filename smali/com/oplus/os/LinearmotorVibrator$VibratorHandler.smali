.class final Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;
.super Landroid/os/Handler;
.source "LinearmotorVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/LinearmotorVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/os/LinearmotorVibrator;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/os/LinearmotorVibrator;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 67
    iput-object p1, p0, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;->this$0:Lcom/oplus/os/LinearmotorVibrator;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;->this$0:Lcom/oplus/os/LinearmotorVibrator;

    invoke-static {v0}, Lcom/oplus/os/LinearmotorVibrator;->-$$Nest$fgetmLock(Lcom/oplus/os/LinearmotorVibrator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;->this$0:Lcom/oplus/os/LinearmotorVibrator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/os/WaveformEffect;

    invoke-static {v1, v2}, Lcom/oplus/os/LinearmotorVibrator;->-$$Nest$mvibrateInnerLocked(Lcom/oplus/os/LinearmotorVibrator;Lcom/oplus/os/WaveformEffect;)V

    .line 77
    monitor-exit v0

    .line 78
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
