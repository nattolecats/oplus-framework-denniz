.class public Landroid/graphics/PathExtImpl;
.super Ljava/lang/Object;
.source "PathExtImpl.java"

# interfaces
.implements Landroid/graphics/IPathExt;


# instance fields
.field private blacklist mIsAddArea:Z

.field private blacklist mPath:Landroid/graphics/Path;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/PathExtImpl;->mIsAddArea:Z

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/graphics/Path;

    iput-object v0, p0, Landroid/graphics/PathExtImpl;->mPath:Landroid/graphics/Path;

    .line 31
    return-void
.end method

.method private blacklist setIsAddRect(Landroid/graphics/IPathExt;)V
    .locals 1
    .param p1, "pathExt"    # Landroid/graphics/IPathExt;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Landroid/graphics/IPathExt;->isAddArea()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/PathExtImpl;->mIsAddArea:Z

    .line 46
    :cond_0
    return-void
.end method

.method private blacklist setIsAddRect(Z)V
    .locals 0
    .param p1, "isAddArea"    # Z

    .line 39
    iput-boolean p1, p0, Landroid/graphics/PathExtImpl;->mIsAddArea:Z

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist hookAddRect()V
    .locals 1

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/PathExtImpl;->setIsAddRect(Z)V

    .line 58
    return-void
.end method

.method public blacklist hookAddRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/PathExtImpl;->setIsAddRect(Z)V

    .line 65
    return-void
.end method

.method public blacklist hookAddRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/PathExtImpl;->setIsAddRect(Z)V

    .line 72
    return-void
.end method

.method public blacklist hookPath(Landroid/graphics/IPathExt;)V
    .locals 0
    .param p1, "pathExt"    # Landroid/graphics/IPathExt;

    .line 51
    invoke-direct {p0, p1}, Landroid/graphics/PathExtImpl;->setIsAddRect(Landroid/graphics/IPathExt;)V

    .line 52
    return-void
.end method

.method public blacklist isAddArea()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Landroid/graphics/PathExtImpl;->mIsAddArea:Z

    return v0
.end method
