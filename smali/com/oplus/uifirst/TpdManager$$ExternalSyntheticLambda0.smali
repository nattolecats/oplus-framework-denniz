.class public final synthetic Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/uifirst/TpdManager;

.field public final synthetic blacklist f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/uifirst/TpdManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/uifirst/TpdManager;

    iput-object p2, p0, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/uifirst/TpdManager;

    iget-object v1, p0, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/oplus/uifirst/TpdManager;->lambda$registerThermalListenerIfNeed$0$com-oplus-uifirst-TpdManager(Landroid/os/Handler;)V

    return-void
.end method
