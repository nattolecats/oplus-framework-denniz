.class public Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;
.super Ljava/lang/Object;
.source "SplitScreenParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itgsa/opensdk/wm/SplitScreenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLaunchIntent:Landroid/content/Intent;

.field private blacklist mPosition:I

.field private blacklist mSelfSplit:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(Lcom/itgsa/opensdk/wm/SplitScreenParams;)V
    .locals 1
    .param p1, "original"    # Lcom/itgsa/opensdk/wm/SplitScreenParams;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/itgsa/opensdk/wm/SplitScreenParams;->-$$Nest$fgetmSelfSplit(Lcom/itgsa/opensdk/wm/SplitScreenParams;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mSelfSplit:Z

    .line 106
    invoke-static {p1}, Lcom/itgsa/opensdk/wm/SplitScreenParams;->-$$Nest$fgetmLaunchIntent(Lcom/itgsa/opensdk/wm/SplitScreenParams;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mLaunchIntent:Landroid/content/Intent;

    .line 107
    invoke-static {p1}, Lcom/itgsa/opensdk/wm/SplitScreenParams;->-$$Nest$fgetmPosition(Lcom/itgsa/opensdk/wm/SplitScreenParams;)I

    move-result v0

    iput v0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mPosition:I

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist build()Lcom/itgsa/opensdk/wm/SplitScreenParams;
    .locals 5

    .line 148
    new-instance v0, Lcom/itgsa/opensdk/wm/SplitScreenParams;

    iget-boolean v1, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mSelfSplit:Z

    iget-object v2, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mLaunchIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mPosition:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itgsa/opensdk/wm/SplitScreenParams;-><init>(ZLandroid/content/Intent;ILcom/itgsa/opensdk/wm/SplitScreenParams-IA;)V

    return-object v0
.end method

.method public whitelist setLaunchIntent(Landroid/content/Intent;)Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 132
    iput-object p1, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mLaunchIntent:Landroid/content/Intent;

    .line 133
    return-object p0
.end method

.method public whitelist setLaunchPosition(I)Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;
    .locals 0
    .param p1, "position"    # I

    .line 143
    iput p1, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mPosition:I

    .line 144
    return-object p0
.end method

.method public whitelist setSelfSplit()Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;
    .locals 1

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itgsa/opensdk/wm/SplitScreenParams$Builder;->mSelfSplit:Z

    .line 121
    return-object p0
.end method
