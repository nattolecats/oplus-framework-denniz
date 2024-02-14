.class public Landroid/app/EmbeddedActivityExtImpl;
.super Ljava/lang/Object;
.source "EmbeddedActivityExtImpl.java"

# interfaces
.implements Landroid/app/IEmbeddedActivityExt;


# static fields
.field private static final blacklist FEATURE_GOOGLE_EXTENSION_EMBEDDING:Z

.field private static final blacklist FEATURE_GOOGLE_EXTENSION_LAYOUT:Z

.field private static volatile blacklist sInstance:Landroid/app/EmbeddedActivityExtImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 6
    const/4 v0, 0x0

    sput-object v0, Landroid/app/EmbeddedActivityExtImpl;->sInstance:Landroid/app/EmbeddedActivityExtImpl;

    .line 9
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.display.google_extension_layout"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/EmbeddedActivityExtImpl;->FEATURE_GOOGLE_EXTENSION_LAYOUT:Z

    .line 10
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.display.google_extension_embedding"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/EmbeddedActivityExtImpl;->FEATURE_GOOGLE_EXTENSION_EMBEDDING:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/app/EmbeddedActivityExtImpl;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    .line 14
    sget-object v0, Landroid/app/EmbeddedActivityExtImpl;->sInstance:Landroid/app/EmbeddedActivityExtImpl;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Landroid/app/EmbeddedActivityExtImpl;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Landroid/app/EmbeddedActivityExtImpl;->sInstance:Landroid/app/EmbeddedActivityExtImpl;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Landroid/app/EmbeddedActivityExtImpl;

    invoke-direct {v1}, Landroid/app/EmbeddedActivityExtImpl;-><init>()V

    sput-object v1, Landroid/app/EmbeddedActivityExtImpl;->sInstance:Landroid/app/EmbeddedActivityExtImpl;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/EmbeddedActivityExtImpl;->sInstance:Landroid/app/EmbeddedActivityExtImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist blockEmbeddingIfNeeded()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->getInstance()Lcom/oplus/compactwindow/OplusCompactWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->blockEmbeddingIfNeeded()Z

    move-result v0

    return v0
.end method

.method public blacklist hasFeatureEmbedding()Z
    .locals 1

    .line 35
    sget-boolean v0, Landroid/app/EmbeddedActivityExtImpl;->FEATURE_GOOGLE_EXTENSION_EMBEDDING:Z

    return v0
.end method

.method public blacklist hasFeatureLayout()Z
    .locals 1

    .line 40
    sget-boolean v0, Landroid/app/EmbeddedActivityExtImpl;->FEATURE_GOOGLE_EXTENSION_LAYOUT:Z

    return v0
.end method
