.class Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;
.super Lcom/oplus/globalgesture/IOplusGlobalGestureObserver$Stub;
.source "OplusGlobalGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/globalgesture/OplusGlobalGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OplusGlobalGestureObserverDelegate"
.end annotation


# instance fields
.field private final blacklist mObserver:Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;

.field final synthetic blacklist this$0:Lcom/oplus/globalgesture/OplusGlobalGestureManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/globalgesture/OplusGlobalGestureManager;Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;)V
    .locals 0
    .param p2, "observer"    # Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;

    .line 135
    iput-object p1, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;->this$0:Lcom/oplus/globalgesture/OplusGlobalGestureManager;

    invoke-direct {p0}, Lcom/oplus/globalgesture/IOplusGlobalGestureObserver$Stub;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;->mObserver:Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;

    .line 137
    return-void
.end method


# virtual methods
.method public blacklist onGestureDetected(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 140
    iget-object v0, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;->mObserver:Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1, p2}, Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;->onGestureDetected(ILandroid/os/Bundle;)V

    .line 143
    :cond_0
    return-void
.end method
