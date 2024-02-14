.class public final Lcom/itgsa/opensdk/wm/SplitScreenParams;
.super Ljava/lang/Object;
.source "SplitScreenParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;
    }
.end annotation


# instance fields
.field private blacklist mLaunchIntent:Landroid/content/Intent;

.field private blacklist mPosition:I

.field private blacklist mSelfSplit:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLaunchIntent(Lcom/itgsa/opensdk/wm/SplitScreenParams;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mLaunchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPosition(Lcom/itgsa/opensdk/wm/SplitScreenParams;)I
    .locals 0

    iget p0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelfSplit(Lcom/itgsa/opensdk/wm/SplitScreenParams;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mSelfSplit:Z

    return p0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private constructor blacklist <init>(ZLandroid/content/Intent;I)V
    .locals 0
    .param p1, "selfSplit"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "position"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mSelfSplit:Z

    .line 57
    iput-object p2, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mLaunchIntent:Landroid/content/Intent;

    .line 58
    iput p3, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mPosition:I

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/content/Intent;ILcom/itgsa/opensdk/wm/SplitScreenParams-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itgsa/opensdk/wm/SplitScreenParams;-><init>(ZLandroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public whitelist getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getLaunchPosition()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mPosition:I

    return v0
.end method

.method public whitelist isSelfSplit()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams;->mSelfSplit:Z

    return v0
.end method
