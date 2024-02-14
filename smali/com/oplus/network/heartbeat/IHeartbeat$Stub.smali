.class public abstract Lcom/oplus/network/heartbeat/IHeartbeat$Stub;
.super Landroid/os/Binder;
.source "IHeartbeat.java"

# interfaces
.implements Lcom/oplus/network/heartbeat/IHeartbeat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/heartbeat/IHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/heartbeat/IHeartbeat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_establishHeartbeat:I = 0x3

.field static final blacklist TRANSACTION_isHeartbeatAvailabel:I = 0x1

.field static final blacklist TRANSACTION_isHeartbeatDynamicCycleEnabled:I = 0x2

.field static final blacklist TRANSACTION_pauseHeartbeat:I = 0x5

.field static final blacklist TRANSACTION_resumeHeartbeat:I = 0x6

.field static final blacklist TRANSACTION_stopHeartbeat:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.oplus.network.heartbeat.IHeartbeat"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/network/heartbeat/IHeartbeat;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.oplus.network.heartbeat.IHeartbeat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/network/heartbeat/IHeartbeat;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/oplus/network/heartbeat/IHeartbeat;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/oplus/network/heartbeat/IHeartbeat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "com.oplus.network.heartbeat.IHeartbeat"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 77
    packed-switch p1, :pswitch_data_1

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 126
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->resumeHeartbeat(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_0

    .line 117
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->pauseHeartbeat(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_0

    .line 108
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->stopHeartbeat(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    goto :goto_0

    .line 96
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    sget-object v2, Lcom/oplus/network/heartbeat/HeartbeatSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/network/heartbeat/HeartbeatSettings;

    .line 98
    .local v2, "_arg0":Lcom/oplus/network/heartbeat/HeartbeatSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/network/heartbeat/IHeartbeatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/heartbeat/IHeartbeatListener;

    move-result-object v3

    .line 99
    .local v3, "_arg1":Lcom/oplus/network/heartbeat/IHeartbeatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->establishHeartbeat(Lcom/oplus/network/heartbeat/HeartbeatSettings;Lcom/oplus/network/heartbeat/IHeartbeatListener;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    goto :goto_0

    .line 88
    .end local v2    # "_arg0":Lcom/oplus/network/heartbeat/HeartbeatSettings;
    .end local v3    # "_arg1":Lcom/oplus/network/heartbeat/IHeartbeatListener;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->isHeartbeatDynamicCycleEnabled()Z

    move-result v2

    .line 89
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    goto :goto_0

    .line 81
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->isHeartbeatAvailabel()Z

    move-result v2

    .line 82
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    nop

    .line 137
    .end local v2    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
