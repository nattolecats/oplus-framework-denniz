.class public final synthetic Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

.field public final synthetic blacklist f$1:Lcom/oplus/deepthinker/ServiceStateObserver;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;Lcom/oplus/deepthinker/ServiceStateObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    iput-object p2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda1;->f$1:Lcom/oplus/deepthinker/ServiceStateObserver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda1;->f$1:Lcom/oplus/deepthinker/ServiceStateObserver;

    invoke-virtual {v0, v1}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->lambda$registerServiceStateObserver$2$com-oplus-deepthinker-OplusDeepThinkerManagerDecor(Lcom/oplus/deepthinker/ServiceStateObserver;)V

    return-void
.end method
