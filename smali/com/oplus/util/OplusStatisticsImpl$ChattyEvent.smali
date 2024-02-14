.class Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;
.super Ljava/lang/Object;
.source "OplusStatisticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusStatisticsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChattyEvent"
.end annotation


# instance fields
.field private final blacklist mAppId:Ljava/lang/String;

.field private blacklist mCount:I

.field private final blacklist mEventId:Ljava/lang/String;

.field private final blacklist mLogTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppId(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCount(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)I
    .locals 0

    iget p0, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventId(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogTag(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mLogTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mAppId:Ljava/lang/String;

    .line 412
    iput-object p2, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mLogTag:Ljava/lang/String;

    .line 413
    iput-object p3, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mEventId:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mCount:I

    .line 415
    return-void
.end method


# virtual methods
.method public blacklist increment()I
    .locals 2

    .line 418
    iget v0, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->mCount:I

    return v0
.end method
