.class public Loplus/android/OplusExtPluginFactoryImp;
.super Landroid/common/OplusExtPluginFactory;
.source "OplusExtPluginFactoryImp.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExtPluginFactory"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/common/OplusExtPluginFactory;-><init>()V

    return-void
.end method

.method private varargs blacklist getTypefaceExt([Ljava/lang/Object;)Landroid/graphics/ITypefaceExt;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 37
    .local v0, "typeface":Landroid/graphics/Typeface;
    new-instance v1, Landroid/graphics/TypefaceExtImpl;

    invoke-direct {v1, v0}, Landroid/graphics/TypefaceExtImpl;-><init>(Landroid/graphics/Typeface;)V

    return-object v1
.end method


# virtual methods
.method public varargs whitelist getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;
    .locals 2
    .param p2, "vars"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 17
    .local p1, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-virtual {p0, p1}, Loplus/android/OplusExtPluginFactoryImp;->verityParams(Landroid/common/IOplusCommonFeature;)V

    .line 19
    invoke-static {p1}, Landroid/common/OplusFeatureManager;->isSupport(Landroid/common/IOplusCommonFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    return-object p1

    .line 23
    :cond_0
    sget-object v0, Loplus/android/OplusExtPluginFactoryImp$1;->$SwitchMap$android$common$OplusFeatureList$OplusIndex:[I

    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknow feature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtPluginFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-object p1

    .line 25
    :pswitch_0
    invoke-direct {p0, p2}, Loplus/android/OplusExtPluginFactoryImp;->getTypefaceExt([Ljava/lang/Object;)Landroid/graphics/ITypefaceExt;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
