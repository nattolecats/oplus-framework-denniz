.class public Landroid/os/olc/IOlcService$Default;
.super Ljava/lang/Object;
.source "IOlcService.java"

# interfaces
.implements Landroid/os/olc/IOlcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/olc/IOlcService;
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

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist raiseException(Landroid/os/olc/ExceptionInfo;)I
    .locals 1
    .param p1, "exp"    # Landroid/os/olc/ExceptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method
