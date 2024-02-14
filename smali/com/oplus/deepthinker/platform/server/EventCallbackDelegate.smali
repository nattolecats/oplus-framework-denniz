.class public Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;
.super Landroid/os/Binder;
.source "EventCallbackDelegate.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.deepthinker.sdk.app.aidl.eventfountain.IEventCallback"

.field private static final blacklist TRANSACT_CALLBACK:I = 0x1


# instance fields
.field private blacklist mCallback:Lcom/oplus/eventhub/sdk/aidl/IEventCallback;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;->mCallback:Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    .line 18
    const-string v0, "com.oplus.deepthinker.sdk.app.aidl.eventfountain.IEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 23
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const-string v0, "com.oplus.deepthinker.sdk.app.aidl.eventfountain.IEventCallback"

    .line 29
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 31
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return v1

    .line 35
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;

    .line 40
    .local v2, "result":Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;
    iget-object v3, p0, Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;->mCallback:Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    invoke-interface {v3, v2}, Lcom/oplus/eventhub/sdk/aidl/IEventCallback;->onEventStateChanged(Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;)V

    .line 42
    .end local v2    # "result":Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
