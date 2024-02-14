.class public Landroid/view/autolayout/AutoLayoutCommonPolicy;
.super Ljava/lang/Object;
.source "AutoLayoutCommonPolicy.java"

# interfaces
.implements Landroid/view/autolayout/IAutoLayoutPolicy;


# instance fields
.field private blacklist mDrawPolicy:Landroid/view/autolayout/IAutoLayoutDrawPolicy;

.field private blacklist mLayoutPolicy:Landroid/view/autolayout/IAutoLayoutLayoutPolicy;

.field private blacklist mMeasurePolicy:Landroid/view/autolayout/IAutoLayoutMeasurePolicy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;
    .locals 1

    .line 41
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mDrawPolicy:Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/view/autolayout/AutoLayoutCommonDrawPolicy;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutCommonDrawPolicy;-><init>()V

    iput-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mDrawPolicy:Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mDrawPolicy:Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    return-object v0
.end method

.method public blacklist getLayoutPolicy()Landroid/view/autolayout/IAutoLayoutLayoutPolicy;
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mLayoutPolicy:Landroid/view/autolayout/IAutoLayoutLayoutPolicy;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;-><init>()V

    iput-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mLayoutPolicy:Landroid/view/autolayout/IAutoLayoutLayoutPolicy;

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mLayoutPolicy:Landroid/view/autolayout/IAutoLayoutLayoutPolicy;

    return-object v0
.end method

.method public blacklist getMeasurePolicy()Landroid/view/autolayout/IAutoLayoutMeasurePolicy;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mMeasurePolicy:Landroid/view/autolayout/IAutoLayoutMeasurePolicy;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;-><init>()V

    iput-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mMeasurePolicy:Landroid/view/autolayout/IAutoLayoutMeasurePolicy;

    .line 54
    :cond_0
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCommonPolicy;->mMeasurePolicy:Landroid/view/autolayout/IAutoLayoutMeasurePolicy;

    return-object v0
.end method
