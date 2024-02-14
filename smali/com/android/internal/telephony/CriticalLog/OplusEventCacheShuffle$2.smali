.class Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$2;
.super Ljava/lang/Object;
.source "OplusEventCacheShuffle.java"

# interfaces
.implements Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;-><init>()V
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

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$2;->this$0:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist eventUpload(Ljava/lang/Object;)V
    .locals 6
    .param p1, "mObject"    # Ljava/lang/Object;

    .line 61
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;

    .line 62
    .local v0, "mCLInfo":Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;
    iget-object v1, v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "NETWORK"

    iput-object v1, v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mTag:Ljava/lang/String;

    .line 65
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mType:I

    iget-object v2, v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mLog:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mIssue:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mDesc:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/OplusManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
