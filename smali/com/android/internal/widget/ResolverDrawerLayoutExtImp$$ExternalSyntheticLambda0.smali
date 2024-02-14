.class public final synthetic Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;ZLcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;

    iput-boolean p2, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;

    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->lambda$hooksmoothScrollTo$0$com-android-internal-widget-ResolverDrawerLayoutExtImp(ZLcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    return-void
.end method
