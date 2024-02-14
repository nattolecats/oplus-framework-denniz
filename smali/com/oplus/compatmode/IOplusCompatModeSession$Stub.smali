.class public abstract Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;
.super Landroid/os/Binder;
.source "IOplusCompatModeSession.java"

# interfaces
.implements Lcom/oplus/compatmode/IOplusCompatModeSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compatmode/IOplusCompatModeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compatmode/IOplusCompatModeSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_compatUIInit:I = 0x6

.field static final blacklist TRANSACTION_forceStopPackageAsUser:I = 0x7

.field static final blacklist TRANSACTION_getCompactWindowInfo:I = 0x3

.field static final blacklist TRANSACTION_moveCompatModeWindowToLeft:I = 0x2

.field static final blacklist TRANSACTION_moveCompatModeWindowToRight:I = 0x1

.field static final blacklist TRANSACTION_registerCompactWindowObserver:I = 0x4

.field static final blacklist TRANSACTION_unregisterCompactWindowObserver:I = 0x5


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "com.oplus.compatmode.IOplusCompatModeSession"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/compatmode/IOplusCompatModeSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "com.oplus.compatmode.IOplusCompatModeSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/compatmode/IOplusCompatModeSession;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Lcom/oplus/compatmode/IOplusCompatModeSession;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 76
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

    .line 80
    const-string v0, "com.oplus.compatmode.IOplusCompatModeSession"

    .line 81
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 92
    packed-switch p1, :pswitch_data_1

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 88
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 152
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->compatUIInit()V

    .line 147
    goto :goto_0

    .line 137
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    move-result-object v2

    .line 138
    .local v2, "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v3

    .line 140
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    goto :goto_0

    .line 127
    .end local v2    # "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    move-result-object v2

    .line 128
    .restart local v2    # "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v3

    .line 130
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    goto :goto_0

    .line 117
    .end local v2    # "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v3

    .line 120
    .local v3, "_result":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    goto :goto_0

    .line 107
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->moveCompatModeWindowToLeft(I)I

    move-result v3

    .line 110
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    goto :goto_0

    .line 97
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, v2}, Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;->moveCompatModeWindowToRight(I)I

    move-result v3

    .line 100
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    nop

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :goto_0
    return v1

    nop

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
