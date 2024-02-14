.class public Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;
.super Ljava/lang/Object;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalInsetsInfoWrapper"
.end annotation


# static fields
.field public static final whitelist TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final whitelist TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final whitelist TOUCHABLE_INSETS_REGION:I = 0x3

.field public static final whitelist TOUCHABLE_INSETS_VISIBLE:I = 0x2


# instance fields
.field private blacklist mDelegate:Landroid/view/ViewTreeObserver$InternalInsetsInfo;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;->mDelegate:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 443
    return-void
.end method


# virtual methods
.method public whitelist getTouchableInsets()Landroid/graphics/Region;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;->mDelegate:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 449
    :cond_0
    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public whitelist setTouchableInsets(I)V
    .locals 1
    .param p1, "val"    # I

    .line 453
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;->mDelegate:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 456
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 457
    return-void
.end method
