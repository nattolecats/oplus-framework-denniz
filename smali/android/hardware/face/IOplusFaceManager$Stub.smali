.class public abstract Landroid/hardware/face/IOplusFaceManager$Stub;
.super Landroid/os/Binder;
.source "IOplusFaceManager.java"

# interfaces
.implements Landroid/hardware/face/IOplusFaceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IOplusFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IOplusFaceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFaceProcessMemory:I = 0x5

.field static final blacklist TRANSACTION_getFailedAttempts:I = 0x2

.field static final blacklist TRANSACTION_getLockoutAttemptDeadline:I = 0x1

.field static final blacklist TRANSACTION_regsiterFaceCmdCallback:I = 0x6

.field static final blacklist TRANSACTION_resetFaceDaemon:I = 0x4

.field static final blacklist TRANSACTION_sendFaceCmd:I = 0x3

.field static final blacklist TRANSACTION_unregsiterFaceCmdCallback:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.hardware.face.IOplusFaceManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IOplusFaceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IOplusFaceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "android.hardware.face.IOplusFaceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/face/IOplusFaceManager;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IOplusFaceManager;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Landroid/hardware/face/IOplusFaceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IOplusFaceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 68
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const-string v0, "android.hardware.face.IOplusFaceManager"

    .line 73
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 84
    packed-switch p1, :pswitch_data_1

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 80
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v1

    .line 143
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceCommandCallback;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Landroid/hardware/face/IFaceCommandCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/hardware/face/IOplusFaceManager$Stub;->unregsiterFaceCmdCallback(Landroid/hardware/face/IFaceCommandCallback;)I

    move-result v3

    .line 146
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":Landroid/hardware/face/IFaceCommandCallback;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceCommandCallback;

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":Landroid/hardware/face/IFaceCommandCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/hardware/face/IOplusFaceManager$Stub;->regsiterFaceCmdCallback(Landroid/hardware/face/IFaceCommandCallback;)I

    move-result v3

    .line 136
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Landroid/hardware/face/IFaceCommandCallback;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/face/IOplusFaceManager$Stub;->getFaceProcessMemory()I

    move-result v2

    .line 126
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    goto :goto_0

    .line 119
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/face/IOplusFaceManager$Stub;->resetFaceDaemon()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_0

    .line 106
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 111
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/face/IOplusFaceManager$Stub;->sendFaceCmd(II[B)I

    move-result v5

    .line 113
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    goto :goto_0

    .line 98
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":I
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/face/IOplusFaceManager$Stub;->getFailedAttempts()I

    move-result v2

    .line 99
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    goto :goto_0

    .line 89
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, v2}, Landroid/hardware/face/IOplusFaceManager$Stub;->getLockoutAttemptDeadline(I)J

    move-result-wide v3

    .line 92
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    nop

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
