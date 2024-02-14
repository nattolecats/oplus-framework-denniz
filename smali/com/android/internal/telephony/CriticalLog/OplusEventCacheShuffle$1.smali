.class Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$1;
.super Landroid/content/BroadcastReceiver;
.source "OplusEventCacheShuffle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$1;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$1;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    const-string v1, "date change"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->-$$Nest$muploadAllMsg(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method
