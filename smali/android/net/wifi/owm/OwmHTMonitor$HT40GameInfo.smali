.class Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;
.super Ljava/lang/Object;
.source "OwmHTMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmHTMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HT40GameInfo"
.end annotation


# instance fields
.field public blacklist m2GGoodRssiRttBadTimeSec:I

.field public blacklist m2GRttBadEvtCnt:I

.field public blacklist m2GRttBadTimeSec:I

.field public blacklist m2GRttGoodTimeSec:I

.field public blacklist m2GRttNormTimeSec:I

.field public blacklist m2GRttPoorTimeSec:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmHTMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmHTMonitor;)V
    .locals 0

    .line 63
    iput-object p1, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->this$0:Landroid/net/wifi/owm/OwmHTMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    .line 65
    iput p1, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    .line 66
    iput p1, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    .line 67
    iput p1, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    .line 68
    iput p1, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 69
    iput p1, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadEvtCnt:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmHTMonitor;Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;-><init>(Landroid/net/wifi/owm/OwmHTMonitor;)V

    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    .line 73
    iput v0, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    .line 74
    iput v0, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    .line 75
    iput v0, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    .line 76
    iput v0, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 77
    iput v0, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadEvtCnt:I

    .line 78
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttGoodTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttNormTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttPoorTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GGoodRssiRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GGoodRssiRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadEvtCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2GRttBadEvtCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
