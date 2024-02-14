.class Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;
.super Lcom/oplus/kinect/IOplusKinectObserver$Stub;
.source "OplusKinectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/kinect/OplusKinectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OplusKinectObserverDelegate"
.end annotation


# instance fields
.field private final blacklist mObserver:Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;

.field final synthetic blacklist this$0:Lcom/oplus/kinect/OplusKinectManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/kinect/OplusKinectManager;Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;)V
    .locals 0
    .param p2, "observer"    # Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;

    .line 136
    iput-object p1, p0, Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;->this$0:Lcom/oplus/kinect/OplusKinectManager;

    invoke-direct {p0}, Lcom/oplus/kinect/IOplusKinectObserver$Stub;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;->mObserver:Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist onKinectDetected(I)V
    .locals 1
    .param p1, "type"    # I

    .line 141
    iget-object v0, p0, Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;->mObserver:Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p1}, Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;->onKinectDetected(I)V

    .line 144
    :cond_0
    return-void
.end method
