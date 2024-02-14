.class Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;
.super Ljava/lang/Object;
.source "OwmCoexistMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmCoexistMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtStaCoexistGameInfo"
.end annotation


# instance fields
.field public blacklist m2GGoodRssiRttBadTimeSec:I

.field public blacklist m2GRttBadEvtCnt:I

.field public blacklist m2GRttBadTimeSec:I

.field public blacklist m2GRttGoodTimeSec:I

.field public blacklist m2GRttNormTimeSec:I

.field public blacklist m2GRttPoorTimeSec:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmCoexistMonitor;)V
    .locals 0

    .line 171
    iput-object p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    .line 173
    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    .line 174
    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    .line 175
    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    .line 176
    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 177
    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadEvtCnt:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmCoexistMonitor;Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;-><init>(Landroid/net/wifi/owm/OwmCoexistMonitor;)V

    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    .line 181
    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    .line 182
    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    .line 183
    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    .line 184
    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 185
    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadEvtCnt:I

    .line 186
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 189
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttGoodTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttNormTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttPoorTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GGoodRssiRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GGoodRssiRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadEvtCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2GRttBadEvtCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
