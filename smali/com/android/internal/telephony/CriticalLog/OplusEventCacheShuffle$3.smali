.class Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;
.super Ljava/lang/Object;
.source "OplusEventCacheShuffle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->uploadAllMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

.field final synthetic blacklist val$reason:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    iput-object p2, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadAllMsg for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->val$reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->logd(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-static {v0}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->-$$Nest$fgetmList(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-static {v1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->-$$Nest$fgetmList(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-static {v1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->-$$Nest$fgetmList(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 103
    .local v2, "i":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-static {v3}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->-$$Nest$fgetmCb(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;->eventUpload(Ljava/lang/Object;)V

    .line 104
    .end local v2    # "i":Ljava/lang/Object;
    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-static {v1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->-$$Nest$fgetmList(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
