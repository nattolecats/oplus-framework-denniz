.class public Lcom/oplus/screenmode/OplusRefreshRateInjector;
.super Ljava/lang/Object;
.source "OplusRefreshRateInjector.java"


# static fields
.field private static final blacklist ALLOW_REFRESH_RATE_OVERRIDE:Z

.field public static final blacklist USE_REFRESH_RATE_V2:Z

.field private static blacklist sFeatureSupport:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    const-string v0, "debug.refresh_rate.v2"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/screenmode/OplusRefreshRateInjector;->USE_REFRESH_RATE_V2:Z

    .line 33
    const-string v0, "debug.refresh_rate.view_override"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/screenmode/OplusRefreshRateInjector;->ALLOW_REFRESH_RATE_OVERRIDE:Z

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjector;->sFeatureSupport:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static blacklist enterPSMode(Z)V
    .locals 0
    .param p0, "enter"    # Z

    .line 77
    return-void
.end method

.method public static blacklist enterPSModeOnRate(ZI)V
    .locals 0
    .param p0, "enter"    # Z
    .param p1, "rate"    # I

    .line 81
    return-void
.end method

.method public static blacklist newInstance(Landroid/content/Context;)Lcom/oplus/screenmode/OplusRefreshRateInjector;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjector;->sFeatureSupport:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/oplus/screenmode/OplusRefreshRateInjector;->supportedRefreshRateFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjector;->sFeatureSupport:Ljava/lang/Boolean;

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    .local v0, "instance":Lcom/oplus/screenmode/OplusRefreshRateInjector;
    sget-boolean v1, Lcom/oplus/screenmode/OplusRefreshRateInjector;->USE_REFRESH_RATE_V2:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oplus/screenmode/OplusRefreshRateInjector;->sFeatureSupport:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/oplus/screenmode/OplusRefreshRateInjector;->ALLOW_REFRESH_RATE_OVERRIDE:Z

    if-eqz v1, :cond_1

    .line 59
    const-string v1, "com.oplus.screenmode.OplusRefreshRateInjectorImpl"

    .line 61
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 62
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/screenmode/OplusRefreshRateInjector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 65
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/oplus/screenmode/OplusRefreshRateInjector;

    invoke-direct {v3}, Lcom/oplus/screenmode/OplusRefreshRateInjector;-><init>()V

    move-object v0, v3

    .line 66
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 67
    :cond_1
    new-instance v1, Lcom/oplus/screenmode/OplusRefreshRateInjector;

    invoke-direct {v1}, Lcom/oplus/screenmode/OplusRefreshRateInjector;-><init>()V

    move-object v0, v1

    .line 69
    :goto_1
    return-object v0
.end method

.method private static blacklist supportedRefreshRateFeature(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 42
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 43
    .local v3, "display":Landroid/view/Display;
    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v1

    .line 44
    .local v1, "supportedModes":[Landroid/view/Display$Mode;
    :goto_1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 45
    .local v4, "validRefreshRates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    if-eqz v1, :cond_2

    .line 46
    array-length v5, v1

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    .line 47
    .local v7, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v7    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 50
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    move v2, v6

    :cond_3
    return v2
.end method


# virtual methods
.method public blacklist setHighTemperatureStatus(II)Z
    .locals 1
    .param p1, "status"    # I
    .param p2, "rate"    # I

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRefreshRateIfNeed(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 73
    return-void
.end method
