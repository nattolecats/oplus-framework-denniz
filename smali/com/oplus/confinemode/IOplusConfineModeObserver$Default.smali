.class public Lcom/oplus/confinemode/IOplusConfineModeObserver$Default;
.super Ljava/lang/Object;
.source "IOplusConfineModeObserver.java"

# interfaces
.implements Lcom/oplus/confinemode/IOplusConfineModeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/confinemode/IOplusConfineModeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onChange(III)V
    .locals 0
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
