.class public Landroid/graphics/ShaderExtImpl;
.super Ljava/lang/Object;
.source "ShaderExtImpl.java"

# interfaces
.implements Landroid/graphics/IShaderExt;


# instance fields
.field private blacklist mShader:Landroid/graphics/Shader;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    .line 30
    return-void
.end method

.method private blacklist getComposeShaderColor(Landroid/graphics/Shader;Landroid/graphics/Shader;)Ljava/util/List;
    .locals 2
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Shader;",
            "Landroid/graphics/Shader;",
            ")",
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<[J>;"
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v1}, Landroid/graphics/IShaderExt;->getColorLongs()[J

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p2, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v1}, Landroid/graphics/IShaderExt;->getColorLongs()[J

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-object v0
.end method

.method private blacklist setComposeShaderColor(Landroid/graphics/Shader;Landroid/graphics/Shader;Ljava/util/List;)V
    .locals 2
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Shader;",
            "Landroid/graphics/Shader;",
            "Ljava/util/List<",
            "[J>;)V"
        }
    .end annotation

    .line 92
    .local p3, "color":Ljava/util/List;, "Ljava/util/List<[J>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 93
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-interface {v0, v1}, Landroid/graphics/IShaderExt;->setColors([J)V

    .line 95
    iget-object v0, p2, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-interface {v0, v1}, Landroid/graphics/IShaderExt;->setColors([J)V

    .line 96
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->discardNativeInstance()V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getColorLongs()[J
    .locals 2

    .line 48
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    instance-of v1, v0, Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v0}, Landroid/graphics/LinearGradient;->getWrapper()Landroid/graphics/ILinearGradientWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/ILinearGradientWrapper;->getColorLongs()[J

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    instance-of v1, v0, Landroid/graphics/SweepGradient;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/graphics/SweepGradient;

    invoke-virtual {v0}, Landroid/graphics/SweepGradient;->getWrapper()Landroid/graphics/ISweepGradientWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/ISweepGradientWrapper;->getColorLongs()[J

    move-result-object v0

    return-object v0

    .line 52
    :cond_1
    instance-of v1, v0, Landroid/graphics/RadialGradient;

    if-eqz v1, :cond_2

    .line 53
    check-cast v0, Landroid/graphics/RadialGradient;

    invoke-virtual {v0}, Landroid/graphics/RadialGradient;->getWrapper()Landroid/graphics/IRadialGradientWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/IRadialGradientWrapper;->getColorLongs()[J

    move-result-object v0

    return-object v0

    .line 56
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getComposeShaderColor()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    instance-of v1, v0, Landroid/graphics/ComposeShader;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/graphics/ComposeShader;

    invoke-virtual {v0}, Landroid/graphics/ComposeShader;->getWrapper()Landroid/graphics/IComposeShaderWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/IComposeShaderWrapper;->getShaderA()Landroid/graphics/Shader;

    move-result-object v0

    .line 63
    .local v0, "shaderA":Landroid/graphics/Shader;
    iget-object v1, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    check-cast v1, Landroid/graphics/ComposeShader;

    invoke-virtual {v1}, Landroid/graphics/ComposeShader;->getWrapper()Landroid/graphics/IComposeShaderWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/IComposeShaderWrapper;->getShaderB()Landroid/graphics/Shader;

    move-result-object v1

    .line 65
    .local v1, "shaderB":Landroid/graphics/Shader;
    invoke-direct {p0, v0, v1}, Landroid/graphics/ShaderExtImpl;->getComposeShaderColor(Landroid/graphics/Shader;Landroid/graphics/Shader;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 68
    .end local v0    # "shaderA":Landroid/graphics/Shader;
    .end local v1    # "shaderB":Landroid/graphics/Shader;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setColors([J)V
    .locals 2
    .param p1, "color"    # [J

    .line 34
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    instance-of v1, v0, Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v0}, Landroid/graphics/LinearGradient;->getWrapper()Landroid/graphics/ILinearGradientWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/graphics/ILinearGradientWrapper;->setColorLongs([J)V

    .line 36
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_0

    .line 37
    :cond_0
    instance-of v1, v0, Landroid/graphics/SweepGradient;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/graphics/SweepGradient;

    invoke-virtual {v0}, Landroid/graphics/SweepGradient;->getWrapper()Landroid/graphics/ISweepGradientWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/graphics/ISweepGradientWrapper;->setColorLongs([J)V

    .line 39
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_0

    .line 40
    :cond_1
    instance-of v1, v0, Landroid/graphics/RadialGradient;

    if-eqz v1, :cond_2

    .line 41
    check-cast v0, Landroid/graphics/RadialGradient;

    invoke-virtual {v0}, Landroid/graphics/RadialGradient;->getWrapper()Landroid/graphics/IRadialGradientWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/graphics/IRadialGradientWrapper;->setColorLongs([J)V

    .line 42
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->discardNativeInstance()V

    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setComposeShaderColor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[J>;)V"
        }
    .end annotation

    .line 83
    .local p1, "color":Ljava/util/List;, "Ljava/util/List<[J>;"
    iget-object v0, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    instance-of v1, v0, Landroid/graphics/ComposeShader;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Landroid/graphics/ComposeShader;

    invoke-virtual {v0}, Landroid/graphics/ComposeShader;->getWrapper()Landroid/graphics/IComposeShaderWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/IComposeShaderWrapper;->getShaderA()Landroid/graphics/Shader;

    move-result-object v0

    .line 85
    .local v0, "shaderA":Landroid/graphics/Shader;
    iget-object v1, p0, Landroid/graphics/ShaderExtImpl;->mShader:Landroid/graphics/Shader;

    check-cast v1, Landroid/graphics/ComposeShader;

    invoke-virtual {v1}, Landroid/graphics/ComposeShader;->getWrapper()Landroid/graphics/IComposeShaderWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/IComposeShaderWrapper;->getShaderB()Landroid/graphics/Shader;

    move-result-object v1

    .line 87
    .local v1, "shaderB":Landroid/graphics/Shader;
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/ShaderExtImpl;->setComposeShaderColor(Landroid/graphics/Shader;Landroid/graphics/Shader;Ljava/util/List;)V

    .line 89
    .end local v0    # "shaderA":Landroid/graphics/Shader;
    .end local v1    # "shaderB":Landroid/graphics/Shader;
    :cond_0
    return-void
.end method
