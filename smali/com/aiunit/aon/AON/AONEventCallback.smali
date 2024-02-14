.class public interface abstract Lcom/aiunit/aon/AON/AONEventCallback;
.super Ljava/lang/Object;
.source "AONEventCallback.java"


# virtual methods
.method public abstract whitelist onAONEvent(II)V
.end method

.method public whitelist onAONEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "aonEventInfo"    # Landroid/os/Bundle;

    .line 18
    const-string v0, "AONEventCallback"

    const-string v1, "default : not process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method
