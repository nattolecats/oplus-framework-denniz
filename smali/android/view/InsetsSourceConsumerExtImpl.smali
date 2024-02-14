.class public Landroid/view/InsetsSourceConsumerExtImpl;
.super Ljava/lang/Object;
.source "InsetsSourceConsumerExtImpl.java"

# interfaces
.implements Landroid/view/IInsetsSourceConsumerExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsSourceConsumerExtImpl"


# instance fields
.field private final blacklist mBase:Landroid/view/InsetsSourceConsumer;


# direct methods
.method public static synthetic blacklist $r8$lambda$qWydeEqiiuEs_kq3LKH-fvK3cBQ(Landroid/view/InsetsSourceControl;)Landroid/graphics/Point;
    .locals 0

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    iput-object v0, p0, Landroid/view/InsetsSourceConsumerExtImpl;->mBase:Landroid/view/InsetsSourceConsumer;

    .line 36
    return-void
.end method

.method static synthetic blacklist lambda$updateLeashPositionIfNeeded$0(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 1
    .param p0, "currentSurfacePosition"    # Landroid/graphics/Point;
    .param p1, "lastSurfacePosition"    # Landroid/graphics/Point;

    .line 46
    invoke-virtual {p1, p0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist updateLeashPositionIfNeeded(Landroid/view/InsetsSourceControl;Landroid/view/InsetsSourceControl;ZZLjava/util/function/Supplier;)V
    .locals 8
    .param p1, "control"    # Landroid/view/InsetsSourceControl;
    .param p2, "lastControl"    # Landroid/view/InsetsSourceControl;
    .param p3, "needAnimation"    # Z
    .param p4, "isAnimationPending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsSourceControl;",
            "Landroid/view/InsetsSourceControl;",
            "ZZ",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p5, "transactionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v0

    .line 43
    .local v0, "currentSurfacePosition":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 44
    .local v1, "currentLeash":Landroid/view/SurfaceControl;
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsSourceConsumerExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/view/InsetsSourceConsumerExtImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsSourceConsumerExtImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/view/InsetsSourceConsumerExtImpl$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Point;)V

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    .line 48
    .local v2, "positionChanged":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 49
    .local v5, "leashValid":Z
    :goto_0
    iget-object v6, p0, Landroid/view/InsetsSourceConsumerExtImpl;->mBase:Landroid/view/InsetsSourceConsumer;

    iget v6, v6, Landroid/view/InsetsSourceConsumer;->mType:I

    if-ne v6, v4, :cond_2

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-eqz v5, :cond_2

    .line 53
    sget-boolean v6, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 54
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v0, v6, v4

    .line 54
    const-string v3, "Surface position of navigation bar changed, last=%s, current=%s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InsetsSourceConsumerExtImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 58
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v3, v1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 59
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 61
    .end local v3    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_2
    return-void
.end method
