.class public Lcom/oplus/network/IOplusNetScoreChange$Default;
.super Ljava/lang/Object;
.source "IOplusNetScoreChange.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetScoreChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetScoreChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist networkScoreChange(IIIZII)V
    .locals 0
    .param p1, "networkId"    # I
    .param p2, "oldScore"    # I
    .param p3, "newScore"    # I
    .param p4, "better"    # Z
    .param p5, "dnsScore"    # I
    .param p6, "tcpScore"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
