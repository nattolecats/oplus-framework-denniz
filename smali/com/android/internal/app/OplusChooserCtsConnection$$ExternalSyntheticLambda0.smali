.class public final synthetic Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/OplusChooserCtsConnection;

.field public final synthetic blacklist f$1:Landroid/content/Context;

.field public final synthetic blacklist f$2:Landroid/os/UserHandle;

.field public final synthetic blacklist f$3:Landroid/content/IntentFilter;

.field public final synthetic blacklist f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/OplusChooserCtsConnection;Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    iput-object p2, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    iput-object p5, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/OplusChooserCtsConnection;->lambda$queryDirectShareTargets$0$com-android-internal-app-OplusChooserCtsConnection(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V

    return-void
.end method
