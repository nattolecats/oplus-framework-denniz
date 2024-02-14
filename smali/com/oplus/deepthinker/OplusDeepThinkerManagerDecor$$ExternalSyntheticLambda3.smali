.class public final synthetic Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/deepthinker/ServiceStateObserver;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/deepthinker/ServiceStateObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda3;->f$0:Lcom/oplus/deepthinker/ServiceStateObserver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda3;->f$0:Lcom/oplus/deepthinker/ServiceStateObserver;

    invoke-interface {v0}, Lcom/oplus/deepthinker/ServiceStateObserver;->onServiceDied()V

    return-void
.end method
