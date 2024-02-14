.class public interface abstract Landroid/bluetooth/IOplusBluetoothManagerCallback;
.super Ljava/lang/Object;
.source "IOplusBluetoothManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IOplusBluetoothManagerCallback$Stub;,
        Landroid/bluetooth/IOplusBluetoothManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IOplusBluetoothManagerCallback"


# virtual methods
.method public abstract blacklist onBluetoothManagerMonitor(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
