.class public Landroid/content/res/ResourcesExt;
.super Ljava/lang/Object;
.source "ResourcesExt.java"

# interfaces
.implements Landroid/content/res/IResourcesExt;


# instance fields
.field private blacklist mResource:Landroid/content/res/Resources;

.field private blacklist mResourcesImplExt:Landroid/content/res/IResourcesImplExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resources"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    .line 27
    iput-object v0, p0, Landroid/content/res/ResourcesExt;->mResource:Landroid/content/res/Resources;

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Landroid/content/res/ResourcesExt;->mResource:Landroid/content/res/Resources;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist getConfiguration()Landroid/content/res/OplusBaseConfiguration;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method public blacklist getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeChanged()Z
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getThemeChanged()Z

    move-result v0

    return v0
.end method

.method public blacklist getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .line 56
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0, p1}, Landroid/content/res/IResourcesImplExt;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0, p1}, Landroid/content/res/IResourcesImplExt;->init(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public blacklist loadIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/ResourcesExt;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesExt;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "useWrap"    # Z

    .line 72
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    iget-object v1, p0, Landroid/content/res/ResourcesExt;->mResource:Landroid/content/res/Resources;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/res/IResourcesImplExt;->loadIcon(Landroid/content/res/Resources;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "useWrap"    # Z

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/ResourcesExt;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIsThemeChanged(Z)V
    .locals 1
    .param p1, "changed"    # Z

    .line 44
    iget-object v0, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0, p1}, Landroid/content/res/IResourcesImplExt;->setIsThemeChanged(Z)V

    .line 45
    return-void
.end method

.method public blacklist setResourceImplExt(Landroid/content/res/IResourcesImplExt;)V
    .locals 0
    .param p1, "implExt"    # Landroid/content/res/IResourcesImplExt;

    .line 35
    iput-object p1, p0, Landroid/content/res/ResourcesExt;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    .line 36
    return-void
.end method
