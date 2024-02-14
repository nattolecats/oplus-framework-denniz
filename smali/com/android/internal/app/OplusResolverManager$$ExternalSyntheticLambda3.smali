.class public final synthetic Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/OplusResolverManager;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/OplusResolverManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/OplusResolverManager;

    iput-object p2, p0, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/OplusResolverManager;

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/OplusResolverManager;->lambda$initMultiappCheckBoxIfNeed$0$com-android-internal-app-OplusResolverManager(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
