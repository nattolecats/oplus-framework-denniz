.class public final synthetic Landroid/view/InsetsSourceConsumerExtImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsSourceConsumerExtImpl$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceConsumerExtImpl$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Point;

    check-cast p1, Landroid/graphics/Point;

    invoke-static {v0, p1}, Landroid/view/InsetsSourceConsumerExtImpl;->lambda$updateLeashPositionIfNeeded$0(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method
