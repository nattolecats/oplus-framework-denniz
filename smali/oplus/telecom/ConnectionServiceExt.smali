.class public abstract Loplus/telecom/ConnectionServiceExt;
.super Landroid/telecom/ConnectionService;
.source "ConnectionServiceExt.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist answerVideo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 31
    invoke-super {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public blacklist hold(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .line 35
    invoke-super {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public blacklist unhold(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .line 39
    invoke-super {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    .line 40
    return-void
.end method
