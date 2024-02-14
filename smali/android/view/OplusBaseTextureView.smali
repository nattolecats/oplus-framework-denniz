.class public Landroid/view/OplusBaseTextureView;
.super Landroid/view/View;
.source "OplusBaseTextureView.java"


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist LOCAL_TAG:Ljava/lang/String; = "OplusBaseTextureView"


# instance fields
.field protected blacklist mCallBackSizeChangeWhenLayerUpdate:Z

.field protected blacklist mReleaseTextureWhenDestory:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mReleaseTextureWhenDestory:Z

    .line 38
    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mCallBackSizeChangeWhenLayerUpdate:Z

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mReleaseTextureWhenDestory:Z

    .line 38
    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mCallBackSizeChangeWhenLayerUpdate:Z

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mReleaseTextureWhenDestory:Z

    .line 38
    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mCallBackSizeChangeWhenLayerUpdate:Z

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mReleaseTextureWhenDestory:Z

    .line 38
    iput-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mCallBackSizeChangeWhenLayerUpdate:Z

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist isCallBackSizeChangeWhenLayerUpdate()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mCallBackSizeChangeWhenLayerUpdate:Z

    return v0
.end method

.method public blacklist isReleaseTextureWhenDestory()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroid/view/OplusBaseTextureView;->mReleaseTextureWhenDestory:Z

    return v0
.end method

.method public blacklist setCallBackSizeChangeWhenLayerUpdate(Z)V
    .locals 0
    .param p1, "doCallBack"    # Z

    .line 66
    iput-boolean p1, p0, Landroid/view/OplusBaseTextureView;->mCallBackSizeChangeWhenLayerUpdate:Z

    .line 67
    return-void
.end method

.method public blacklist setReleaseTextureWhenDestory(Z)V
    .locals 0
    .param p1, "release"    # Z

    .line 41
    iput-boolean p1, p0, Landroid/view/OplusBaseTextureView;->mReleaseTextureWhenDestory:Z

    .line 42
    return-void
.end method
