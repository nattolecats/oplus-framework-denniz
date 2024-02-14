.class public interface abstract Landroid/bluetooth/le/IOplusRssiDetectCallback;
.super Ljava/lang/Object;
.source "IOplusRssiDetectCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IOplusRssiDetectCallback$Stub;,
        Landroid/bluetooth/le/IOplusRssiDetectCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IOplusRssiDetectCallback"


# virtual methods
.method public abstract blacklist onRssiDetectResultCallback(Landroid/bluetooth/le/ScanResult;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
