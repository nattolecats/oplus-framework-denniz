.class Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;
.super Lcom/oplus/app/IOplusFreezeInfoListener$Stub;
.source "OplusHansFreezeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/OplusHansFreezeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OplusFreezeInfoListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mFreezeInfoCallBack:Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;

.field final synthetic blacklist this$0:Lcom/oplus/app/OplusHansFreezeManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/app/OplusHansFreezeManager;Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;)V
    .locals 0
    .param p2, "freezeInfoCallBack"    # Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;

    .line 175
    iput-object p1, p0, Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;->this$0:Lcom/oplus/app/OplusHansFreezeManager;

    invoke-direct {p0}, Lcom/oplus/app/IOplusFreezeInfoListener$Stub;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;->mFreezeInfoCallBack:Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;

    .line 177
    return-void
.end method


# virtual methods
.method public blacklist notifyFreezeInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusFreezeInfo;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "freeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusFreezeInfo;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;->mFreezeInfoCallBack:Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p1}, Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;->notifyFreezeInfo(Ljava/util/List;)V

    .line 183
    :cond_0
    return-void
.end method
