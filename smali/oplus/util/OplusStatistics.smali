.class public Loplus/util/OplusStatistics;
.super Ljava/lang/Object;
.source "OplusStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loplus/util/OplusStatistics$EventData;,
        Loplus/util/OplusStatistics$Dummy;,
        Loplus/util/OplusStatistics$IOplusStatistics;
    }
.end annotation


# static fields
.field private static final blacklist APP_ID_FRAMEWORK:I = 0x4e98

.field public static final blacklist FLAG_SEND_TO_ATOM:I = 0x2

.field public static final blacklist FLAG_SEND_TO_DCS:I = 0x1

.field private static final blacklist IMPL_OPLUS:Ljava/lang/String; = "com.oplus.util.OplusStatisticsImpl"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusStatistics--"

.field private static volatile blacklist sInstance:Lcom/oplus/util/OplusStatisticsImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Loplus/util/OplusStatistics;->sInstance:Lcom/oplus/util/OplusStatisticsImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getInstance()Lcom/oplus/util/OplusStatisticsImpl;
    .locals 2

    .line 220
    sget-object v0, Loplus/util/OplusStatistics;->sInstance:Lcom/oplus/util/OplusStatisticsImpl;

    if-nez v0, :cond_1

    .line 221
    const-class v0, Lcom/oplus/util/OplusStatisticsImpl;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v1, Loplus/util/OplusStatistics;->sInstance:Lcom/oplus/util/OplusStatisticsImpl;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/oplus/util/OplusStatisticsImpl;

    invoke-direct {v1}, Lcom/oplus/util/OplusStatisticsImpl;-><init>()V

    sput-object v1, Loplus/util/OplusStatistics;->sInstance:Lcom/oplus/util/OplusStatisticsImpl;

    .line 226
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 228
    :cond_1
    :goto_0
    sget-object v0, Loplus/util/OplusStatistics;->sInstance:Lcom/oplus/util/OplusStatisticsImpl;

    return-object v0
.end method

.method public static blacklist onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # I
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "uploadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 144
    .local p4, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 145
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Loplus/util/OplusStatistics$EventData;>;"
    if-nez p4, :cond_0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    goto :goto_2

    .line 148
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 150
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 151
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Loplus/util/OplusStatistics$EventData;

    invoke-direct {v3, p1, p2, p3}, Loplus/util/OplusStatistics$EventData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v3, "eventData":Loplus/util/OplusStatistics$EventData;
    if-nez v2, :cond_1

    .line 153
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    goto :goto_1

    .line 155
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, v3, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    .line 158
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "eventData":Loplus/util/OplusStatistics$EventData;
    goto :goto_0

    .line 162
    :cond_2
    :goto_2
    invoke-static {}, Loplus/util/OplusStatistics;->getInstance()Lcom/oplus/util/OplusStatisticsImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/oplus/util/OplusStatisticsImpl;->onCommon(Landroid/content/Context;Ljava/util/List;I)V

    .line 163
    return-void
.end method

.method private static blacklist onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # I
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "flagSendTo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 209
    .local p4, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Loplus/util/OplusStatistics$EventData;

    invoke-direct {v0, p1, p2, p3}, Loplus/util/OplusStatistics$EventData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "eventData":Loplus/util/OplusStatistics$EventData;
    if-nez p4, :cond_0

    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    goto :goto_0

    .line 213
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    .line 216
    :goto_0
    invoke-static {}, Loplus/util/OplusStatistics;->getInstance()Lcom/oplus/util/OplusStatisticsImpl;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p5}, Lcom/oplus/util/OplusStatisticsImpl;->onCommon(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V

    .line 217
    return-void
.end method

.method public static blacklist onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # I
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "uploadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 102
    .local p4, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 103
    return-void
.end method

.method public static blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdStr"    # Ljava/lang/String;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "uploadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 120
    .local p4, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OplusStatistics--"

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "onCommon: appId is null."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 124
    :cond_0
    const/4 v0, -0x1

    .line 126
    .local v0, "appId":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCommon: illegal appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 132
    return-void

    .line 134
    :cond_1
    move-object v4, p0

    move v5, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-static/range {v4 .. v9}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 135
    return-void
.end method

.method public static blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdStr"    # Ljava/lang/String;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "uploadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 68
    .local p4, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OplusStatistics--"

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "onCommon: appId is null."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 73
    :cond_0
    const/4 v0, -0x1

    .line 75
    .local v0, "appId":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCommon: illegal appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 81
    return-void

    .line 84
    :cond_1
    const/4 v9, 0x1

    move-object v4, p0

    move v5, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v4 .. v9}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 85
    return-void
.end method

.method public static blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p4, "uploadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 110
    .local p3, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v1, 0x4e98

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 111
    return-void
.end method

.method public static blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p4, "uploadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    .local p3, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x4e98

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 60
    return-void
.end method

.method public static blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p4, "uploadNow"    # Z
    .param p5, "flagSendTo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 182
    .local p3, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x4e98

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 183
    return-void
.end method

.method public static blacklist onCommonSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p4, "upLoadNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 193
    .local p3, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Loplus/util/OplusStatistics$EventData;

    const/16 v1, 0x4e98

    invoke-direct {v0, v1, p1, p2}, Loplus/util/OplusStatistics$EventData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v0, "eventData":Loplus/util/OplusStatistics$EventData;
    if-nez p3, :cond_0

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    goto :goto_0

    .line 197
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Loplus/util/OplusStatistics$EventData;->logMap:Ljava/util/Map;

    .line 200
    :goto_0
    invoke-static {}, Loplus/util/OplusStatistics;->getInstance()Lcom/oplus/util/OplusStatisticsImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/oplus/util/OplusStatisticsImpl;->onCommonSync(Landroid/content/Context;Loplus/util/OplusStatistics$EventData;I)V

    .line 201
    return-void
.end method
