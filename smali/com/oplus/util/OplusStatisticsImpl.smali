.class public Lcom/oplus/util/OplusStatisticsImpl;
.super Ljava/lang/Object;
.source "OplusStatisticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;,
        Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;
    }
.end annotation


# static fields
.field private static final blacklist APP_ID:Ljava/lang/String; = "appId"

.field private static final blacklist APP_NAME:Ljava/lang/String; = "appName"

.field private static final blacklist APP_PACKAGE:Ljava/lang/String; = "appPackage"

.field private static final blacklist APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final blacklist ATOM_DELEGATE:Landroid/net/Uri;

.field private static final blacklist CHATTY_EVENT_APP_ID:I = 0x5208

.field private static final blacklist CHATTY_EVENT_ID:Ljava/lang/String; = "chatty_event"

.field private static final blacklist CHATTY_EVENT_LOG_TAG:Ljava/lang/String; = "001"

.field private static final blacklist DATA_LIST:Ljava/lang/String; = "dataList"

.field private static final blacklist DATA_TYPE:Ljava/lang/String; = "dataType"

.field private static final blacklist DATA_TYPE_COMMON_MIX_LIST:I = 0x7d0

.field private static final blacklist DCS_URI:Landroid/net/Uri;

.field private static final blacklist EVENT_ID:Ljava/lang/String; = "eventID"

.field private static final blacklist FIRE_WALL_LIMIT:I = 0x78

.field private static final blacklist FIRE_WALL_PERIOD:J = 0x1d4c0L

.field private static final blacklist FLAG_SEND_TO_ATOM:I = 0x2

.field private static final blacklist FLAG_SEND_TO_DATA_CENTER:I = 0x1

.field private static final blacklist GAP_TIME_LIMIT:J = 0x2710L

.field private static final blacklist LOG_MAP:Ljava/lang/String; = "logMap"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "logTag"

.field private static final blacklist MAP_KEY_APP_ID:Ljava/lang/String; = "app_id"

.field private static final blacklist MAP_KEY_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final blacklist MAP_KEY_LOG_TAG:Ljava/lang/String; = "log_tag"

.field private static final blacklist MAP_KEY_TIMES:Ljava/lang/String; = "times"

.field private static final blacklist SINGLE_MSG_MAX_LENGTH:J = 0x40000L

.field private static final blacklist SYSTEM:Ljava/lang/String; = "system"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusStatistics--"

.field private static final blacklist THREAD_NAME:Ljava/lang/String; = "OplusStatisticsCommonThread"


# instance fields
.field private final blacklist mChattyEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEventDataCachePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loplus/util/OplusStatistics$EventData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFireWall:Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;

.field private blacklist mHasFlushJob:Z

.field private final blacklist mSingleThreadScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic blacklist $r8$lambda$q7ImggZK89A0sdwQehr-oFFLy8A(Lcom/oplus/util/OplusStatisticsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusStatisticsImpl;->pollChattyEvent()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 89
    const-string v0, "content://com.oplus.statistics.provider/track_event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusStatisticsImpl;->DCS_URI:Landroid/net/Uri;

    .line 90
    const-string v0, "content://com.oplus.atom.db_sys/atom_delegate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusStatisticsImpl;->ATOM_DELEGATE:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mEventDataCachePool:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/oplus/util/OplusStatisticsImpl$1;

    invoke-direct {v0, p0}, Lcom/oplus/util/OplusStatisticsImpl$1;-><init>(Lcom/oplus/util/OplusStatisticsImpl;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mSingleThreadScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 119
    new-instance v0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;

    const/16 v1, 0x78

    const-wide/32 v2, 0x1d4c0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;-><init>(IJLcom/oplus/util/OplusStatisticsImpl$RequestFireWall-IA;)V

    iput-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mFireWall:Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mChattyEventMap:Ljava/util/Map;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mHasFlushJob:Z

    return-void
.end method

.method private blacklist addJobToWorkThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 153
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mSingleThreadScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method private blacklist flushInternal(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 217
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mEventDataCachePool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "OplusStatistics--"

    if-nez v0, :cond_0

    .line 218
    const-string v0, "flushInternal failed. Has no data."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 222
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 223
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 224
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, ""

    .line 225
    .local v3, "mapStr":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 226
    .local v4, "jsonStrSize":J
    iget-object v6, p0, Lcom/oplus/util/OplusStatisticsImpl;->mEventDataCachePool:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Loplus/util/OplusStatistics$EventData;

    .line 228
    .local v7, "eventData":Loplus/util/OplusStatistics$EventData;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v8

    .line 229
    const-string v8, "appId"

    iget v9, v7, Loplus/util/OplusStatistics$EventData;->appId:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v8, "logTag"

    iget-object v9, v7, Loplus/util/OplusStatistics$EventData;->logTag:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v8, "eventId"

    iget-object v9, v7, Loplus/util/OplusStatistics$EventData;->eventId:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v8, "eventTimeMs"

    iget-wide v9, v7, Loplus/util/OplusStatistics$EventData;->eventTimeMs:J

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    iget-object v8, v7, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    invoke-direct {p0, v8}, Lcom/oplus/util/OplusStatisticsImpl;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 234
    const-string v8, "logMap"

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    const-wide/32 v10, 0x40000

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 238
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flushInternal, send: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/oplus/util/OplusStatisticsImpl;->sendDataToDCS(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move-object v0, v8

    .line 241
    const-wide/16 v4, 0x0

    .line 244
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 245
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_1

    .line 246
    :catch_0
    move-exception v8

    .line 247
    .local v8, "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flushInternal, create json failed. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v7    # "eventData":Loplus/util/OplusStatistics$EventData;
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_1
    goto/16 :goto_0

    .line 250
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oplus/util/OplusStatisticsImpl;->sendDataToDCS(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/oplus/util/OplusStatisticsImpl;->mEventDataCachePool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 253
    return-void
.end method

.method private blacklist handleData(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Loplus/util/OplusStatistics$EventData;
    .param p3, "flagSendTo"    # I
    .param p4, "isSyncFlush"    # Z

    .line 160
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusStatistics--"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 165
    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/util/OplusStatisticsImpl;->handleDcsData(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;Z)V

    .line 168
    :cond_1
    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/oplus/util/OplusStatisticsImpl;->sendDataToAtom(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;)V

    .line 171
    :cond_2
    return-void
.end method

.method private blacklist handleDcsData(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Loplus/util/OplusStatistics$EventData;
    .param p3, "isSyncFlush"    # Z

    .line 174
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mFireWall:Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Loplus/util/OplusStatistics$EventData;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Loplus/util/OplusStatistics$EventData;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Loplus/util/OplusStatistics$EventData;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->handleRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intercept frequent events(>120/2min): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusStatistics--"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v0, p2, Loplus/util/OplusStatistics$EventData;->appId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Loplus/util/OplusStatistics$EventData;->logTag:Ljava/lang/String;

    iget-object v2, p2, Loplus/util/OplusStatistics$EventData;->eventId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/util/OplusStatisticsImpl;->onChattyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mEventDataCachePool:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    if-eqz p3, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusStatisticsImpl;->flushInternal(Landroid/content/Context;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusStatisticsImpl;->setDelayFlushJobIfNeed(Landroid/content/Context;)V

    .line 186
    :goto_0
    return-void
.end method

.method private blacklist handleDcsDataList(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Loplus/util/OplusStatistics$EventData;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Loplus/util/OplusStatistics$EventData;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "OplusStatistics--"

    if-nez v0, :cond_0

    .line 190
    const-string v0, "dataList size is empty."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loplus/util/OplusStatistics$EventData;

    .line 195
    .local v0, "data":Loplus/util/OplusStatistics$EventData;
    iget-object v2, p0, Lcom/oplus/util/OplusStatisticsImpl;->mFireWall:Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Loplus/util/OplusStatistics$EventData;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Loplus/util/OplusStatistics$EventData;->logTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Loplus/util/OplusStatistics$EventData;->eventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->handleRequest(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intercept frequent events: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v1, v0, Loplus/util/OplusStatistics$EventData;->appId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Loplus/util/OplusStatistics$EventData;->logTag:Ljava/lang/String;

    iget-object v3, v0, Loplus/util/OplusStatistics$EventData;->eventId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/util/OplusStatisticsImpl;->onChattyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/oplus/util/OplusStatisticsImpl;->mEventDataCachePool:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusStatisticsImpl;->setDelayFlushJobIfNeed(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method private blacklist mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 288
    .local p1, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 289
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    nop

    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 296
    :cond_0
    goto :goto_1

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommonObject Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusStatistics--"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist onChattyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mSingleThreadScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/util/OplusStatisticsImpl;)V

    const-wide/32 v2, 0x1d4c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/util/OplusStatisticsImpl;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;

    .line 327
    .local v1, "event":Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;
    if-nez v1, :cond_1

    .line 328
    new-instance v2, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;

    invoke-direct {v2, p1, p2, p3}, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 329
    invoke-virtual {v1}, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->increment()I

    .line 330
    iget-object v2, p0, Lcom/oplus/util/OplusStatisticsImpl;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->increment()I

    .line 334
    :goto_0
    return-void
.end method

.method private blacklist pollChattyEvent()V
    .locals 6

    .line 302
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;

    .line 307
    .local v1, "chattyEvent":Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;
    new-instance v2, Loplus/util/OplusStatistics$EventData;

    const/16 v3, 0x5208

    const-string v4, "001"

    const-string v5, "chatty_event"

    invoke-direct {v2, v3, v4, v5}, Loplus/util/OplusStatistics$EventData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    .local v2, "eventData":Loplus/util/OplusStatistics$EventData;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    .line 309
    iget-object v3, v2, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->-$$Nest$fgetmAppId(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v3, v2, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->-$$Nest$fgetmLogTag(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "log_tag"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v3, v2, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->-$$Nest$fgetmEventId(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v3, v2, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;->-$$Nest$fgetmCount(Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "times"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lcom/oplus/util/OplusStatisticsImpl;->mEventDataCachePool:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v1    # "chattyEvent":Lcom/oplus/util/OplusStatisticsImpl$ChattyEvent;
    .end local v2    # "eventData":Loplus/util/OplusStatistics$EventData;
    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 317
    return-void
.end method

.method private blacklist sendDataToAtom(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Loplus/util/OplusStatistics$EventData;

    .line 256
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v0, "values":Landroid/content/ContentValues;
    iget v1, p2, Loplus/util/OplusStatistics$EventData;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v1, "appPackage"

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p2, Loplus/util/OplusStatistics$EventData;->logTag:Ljava/lang/String;

    const-string v2, "logTag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p2, Loplus/util/OplusStatistics$EventData;->eventId:Ljava/lang/String;

    const-string v2, "eventID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p2, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusStatisticsImpl;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logMap"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oplus/util/OplusStatisticsImpl;->ATOM_DELEGATE:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist sendDataToDCS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataListJson"    # Ljava/lang/String;

    .line 270
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "appPackage"

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "appName"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "appVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v1, "dataList"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 281
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/oplus/util/OplusStatisticsImpl;->DCS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusStatistics--"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private blacklist setDelayFlushJobIfNeed(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    iget-boolean v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mHasFlushJob:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mSingleThreadScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/util/OplusStatisticsImpl;Landroid/content/Context;)V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mHasFlushJob:Z

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist flush(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    new-instance v0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda4;-><init>(Lcom/oplus/util/OplusStatisticsImpl;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusStatisticsImpl;->addJobToWorkThread(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method synthetic blacklist lambda$flush$3$com-oplus-util-OplusStatisticsImpl(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusStatisticsImpl;->flushInternal(Landroid/content/Context;)V

    return-void
.end method

.method synthetic blacklist lambda$onCommon$1$com-oplus-util-OplusStatisticsImpl(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Loplus/util/OplusStatistics$EventData;
    .param p3, "flagSendTo"    # I

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/util/OplusStatisticsImpl;->handleData(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;IZ)V

    return-void
.end method

.method synthetic blacklist lambda$onCommon$2$com-oplus-util-OplusStatisticsImpl(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataList"    # Ljava/util/List;

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/oplus/util/OplusStatisticsImpl;->handleDcsDataList(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method synthetic blacklist lambda$onCommonSync$0$com-oplus-util-OplusStatisticsImpl(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Loplus/util/OplusStatistics$EventData;
    .param p3, "flagSendTo"    # I

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/util/OplusStatisticsImpl;->handleData(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;IZ)V

    return-void
.end method

.method synthetic blacklist lambda$setDelayFlushJobIfNeed$4$com-oplus-util-OplusStatisticsImpl(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/util/OplusStatisticsImpl;->mHasFlushJob:Z

    .line 208
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusStatisticsImpl;->flushInternal(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public whitelist onCommon(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "flagSendTo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Loplus/util/OplusStatistics$EventData;",
            ">;I)V"
        }
    .end annotation

    .line 144
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Loplus/util/OplusStatistics$EventData;>;"
    new-instance v0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/oplus/util/OplusStatisticsImpl;Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusStatisticsImpl;->addJobToWorkThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public whitelist onCommon(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Loplus/util/OplusStatistics$EventData;
    .param p3, "flagSendTo"    # I

    .line 137
    new-instance v0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda3;-><init>(Lcom/oplus/util/OplusStatisticsImpl;Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusStatisticsImpl;->addJobToWorkThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public whitelist onCommonSync(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Loplus/util/OplusStatistics$EventData;
    .param p3, "flagSendTo"    # I

    .line 130
    new-instance v0, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/util/OplusStatisticsImpl$$ExternalSyntheticLambda5;-><init>(Lcom/oplus/util/OplusStatisticsImpl;Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusStatisticsImpl;->addJobToWorkThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
