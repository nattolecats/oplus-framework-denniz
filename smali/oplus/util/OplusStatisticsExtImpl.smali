.class public Loplus/util/OplusStatisticsExtImpl;
.super Ljava/lang/Object;
.source "OplusStatisticsExtImpl.java"

# interfaces
.implements Loplus/util/IOplusStatisticsExt;


# static fields
.field private static final blacklist IMPL_OPLUS:Ljava/lang/String; = "com.oplus.util.OplusStatisticsImpl"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusStatistics--"

.field private static volatile blacklist sInstance:Loplus/util/OplusStatisticsExtImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Loplus/util/OplusStatisticsExtImpl;->sInstance:Loplus/util/OplusStatisticsExtImpl;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Loplus/util/OplusStatisticsExtImpl;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 50
    sget-object v0, Loplus/util/OplusStatisticsExtImpl;->sInstance:Loplus/util/OplusStatisticsExtImpl;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Loplus/util/OplusStatisticsExtImpl;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Loplus/util/OplusStatisticsExtImpl;->sInstance:Loplus/util/OplusStatisticsExtImpl;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Loplus/util/OplusStatisticsExtImpl;

    invoke-direct {v1, p0}, Loplus/util/OplusStatisticsExtImpl;-><init>(Ljava/lang/Object;)V

    sput-object v1, Loplus/util/OplusStatisticsExtImpl;->sInstance:Loplus/util/OplusStatisticsExtImpl;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Loplus/util/OplusStatisticsExtImpl;->sInstance:Loplus/util/OplusStatisticsExtImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "eventId"    # Ljava/lang/String;
    .param p6, "uploadNow"    # Z
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

    .line 129
    .local p5, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 130
    return-void
.end method

.method public blacklist onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "eventId"    # Ljava/lang/String;
    .param p6, "uploadNow"    # Z
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

    .line 98
    .local p5, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 99
    return-void
.end method

.method public blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appIdStr"    # Ljava/lang/String;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "eventId"    # Ljava/lang/String;
    .param p6, "uploadNow"    # Z
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

    .line 117
    .local p5, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 118
    return-void
.end method

.method public blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appIdStr"    # Ljava/lang/String;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "eventId"    # Ljava/lang/String;
    .param p6, "uploadNow"    # Z
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

    .line 78
    .local p5, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 79
    return-void
.end method

.method public blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "uploadNow"    # Z
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

    .line 107
    .local p4, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1, p2, p3, p4, p5}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 108
    return-void
.end method

.method public blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "uploadNow"    # Z
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

    .line 67
    .local p4, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3, p4, p5}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 68
    return-void
.end method

.method public blacklist onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "uploadNow"    # Z
    .param p6, "flagSendTo"    # I
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

    .line 150
    .local p4, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZI)V

    .line 151
    return-void
.end method

.method public blacklist onCommonSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p5, "upLoadNow"    # Z
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

    .line 163
    .local p4, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3, p4, p5}, Loplus/util/OplusStatistics;->onCommonSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 164
    return-void
.end method
