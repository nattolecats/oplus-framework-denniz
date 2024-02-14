.class public abstract Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;
.super Ljava/lang/Object;
.source "BluetoothAdapterExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapterExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OplusServiceLifecycleCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onBluetoothServiceDown()V
.end method

.method public abstract blacklist onBluetoothServiceUp()V
.end method
