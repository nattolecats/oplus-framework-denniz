.class Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$CacheLogHandler;
.super Landroid/os/Handler;
.source "OplusEventCacheShuffle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheLogHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$CacheLogHandler;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    .line 35
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    return-void
.end method
