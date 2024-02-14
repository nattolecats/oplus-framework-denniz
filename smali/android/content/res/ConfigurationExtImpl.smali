.class public Landroid/content/res/ConfigurationExtImpl;
.super Ljava/lang/Object;
.source "ConfigurationExtImpl.java"

# interfaces
.implements Landroid/content/res/IConfigurationExt;


# instance fields
.field private blacklist mConfiguration:Landroid/content/res/OplusBaseConfiguration;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "configImpl"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    iput-object v0, p0, Landroid/content/res/ConfigurationExtImpl;->mConfiguration:Landroid/content/res/OplusBaseConfiguration;

    .line 30
    return-void
.end method

.method private blacklist getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 2

    .line 45
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method


# virtual methods
.method public blacklist hookSetTo(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 36
    invoke-direct {p0}, Landroid/content/res/ConfigurationExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->setTo(Landroid/content/res/OplusBaseConfiguration;)V

    .line 37
    return-void
.end method

.method public blacklist hookUpdateFrom(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 41
    invoke-direct {p0}, Landroid/content/res/ConfigurationExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->updateFrom(Landroid/content/res/OplusBaseConfiguration;)V

    .line 42
    return-void
.end method
