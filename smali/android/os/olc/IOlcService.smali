.class public interface abstract Landroid/os/olc/IOlcService;
.super Ljava/lang/Object;
.source "IOlcService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/olc/IOlcService$Stub;,
        Landroid/os/olc/IOlcService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.olc.IOlcService"


# virtual methods
.method public abstract blacklist raiseException(Landroid/os/olc/ExceptionInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
