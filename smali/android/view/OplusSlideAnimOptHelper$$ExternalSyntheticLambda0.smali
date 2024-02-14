.class public final synthetic Landroid/view/OplusSlideAnimOptHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/OplusSlideAnimOptHelper;

.field public final synthetic blacklist f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/OplusSlideAnimOptHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/OplusSlideAnimOptHelper$$ExternalSyntheticLambda0;->f$0:Landroid/view/OplusSlideAnimOptHelper;

    iput-object p2, p0, Landroid/view/OplusSlideAnimOptHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/OplusSlideAnimOptHelper$$ExternalSyntheticLambda0;->f$0:Landroid/view/OplusSlideAnimOptHelper;

    iget-object v1, p0, Landroid/view/OplusSlideAnimOptHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/view/OplusSlideAnimOptHelper;->lambda$initScrollOpt$0$android-view-OplusSlideAnimOptHelper(Landroid/content/Context;)V

    return-void
.end method
