.class Landroid/telephony/OplusTelephonyManager$4;
.super Lcom/android/internal/telephony/IOplusTelephonyExtCallback$Stub;
.source "OplusTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/OplusTelephonyManager;->connect(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/OplusTelephonyManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/OplusTelephonyManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/OplusTelephonyManager;

    .line 2595
    iput-object p1, p0, Landroid/telephony/OplusTelephonyManager$4;->this$0:Landroid/telephony/OplusTelephonyManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOplusTelephonyExtCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTelephonyEventReport(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "eventId"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 2598
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager$4;->this$0:Landroid/telephony/OplusTelephonyManager;

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->-$$Nest$fgetmTelephonyExtCbList(Landroid/telephony/OplusTelephonyManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2599
    :try_start_0
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager$4;->this$0:Landroid/telephony/OplusTelephonyManager;

    invoke-static {v1}, Landroid/telephony/OplusTelephonyManager;->-$$Nest$fgetmTelephonyExtCbList(Landroid/telephony/OplusTelephonyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;

    .line 2600
    .local v2, "cb":Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;
    invoke-interface {v2, p1, p2, p3}, Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;->onTelephonyEventReport(IILandroid/os/Bundle;)V

    .line 2601
    .end local v2    # "cb":Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;
    goto :goto_0

    .line 2602
    :cond_0
    monitor-exit v0

    .line 2603
    return-void

    .line 2602
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
