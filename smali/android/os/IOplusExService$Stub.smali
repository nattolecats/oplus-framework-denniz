.class public abstract Landroid/os/IOplusExService$Stub;
.super Landroid/os/Binder;
.source "IOplusExService.java"

# interfaces
.implements Landroid/os/IOplusExService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOplusExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOplusExService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dealScreenoffGesture:I = 0x8

.field static final blacklist TRANSACTION_getGestureState:I = 0xa

.field static final blacklist TRANSACTION_pauseExInputEvent:I = 0x4

.field static final blacklist TRANSACTION_pilferPointers:I = 0xb

.field static final blacklist TRANSACTION_registerGlobalGestureObserver:I = 0xc

.field static final blacklist TRANSACTION_registerInputEvent:I = 0x1

.field static final blacklist TRANSACTION_registerRawInputEvent:I = 0x2

.field static final blacklist TRANSACTION_registerScreenoffGesture:I = 0x6

.field static final blacklist TRANSACTION_resumeExInputEvent:I = 0x5

.field static final blacklist TRANSACTION_setGestureState:I = 0x9

.field static final blacklist TRANSACTION_unregisterGlobalGestureObserver:I = 0xd

.field static final blacklist TRANSACTION_unregisterInputEvent:I = 0x3

.field static final blacklist TRANSACTION_unregisterScreenoffGesture:I = 0x7


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.os.IOplusExService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOplusExService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    const-string v0, "android.os.IOplusExService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IOplusExService;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/os/IOplusExService;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Landroid/os/IOplusExService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IOplusExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 85
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "android.os.IOplusExService"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 101
    packed-switch p1, :pswitch_data_1

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 218
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/globalgesture/IOplusGlobalGestureObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;

    move-result-object v2

    .line 219
    .local v2, "_arg0":Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->unregisterGlobalGestureObserver(Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;)Z

    move-result v3

    .line 221
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto/16 :goto_0

    .line 202
    .end local v2    # "_arg0":Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/globalgesture/IOplusGlobalGestureObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .local v4, "_arg2":I
    sget-object v5, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 209
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IOplusExService$Stub;->registerGlobalGestureObserver(Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;Ljava/lang/String;ILjava/util/List;)Z

    move-result v6

    .line 211
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg0":Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v6    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/IOplusExService$Stub;->pilferPointers()V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto/16 :goto_0

    .line 186
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->getGestureState(I)Z

    move-result v3

    .line 189
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    goto/16 :goto_0

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 178
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3}, Landroid/os/IOplusExService$Stub;->setGestureState(IZ)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto/16 :goto_0

    .line 166
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->dealScreenoffGesture(I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto/16 :goto_0

    .line 157
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusGestureCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusGestureCallBack;

    move-result-object v2

    .line 158
    .local v2, "_arg0":Landroid/os/IOplusGestureCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->unregisterScreenoffGesture(Landroid/os/IOplusGestureCallBack;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_0

    .line 147
    .end local v2    # "_arg0":Landroid/os/IOplusGestureCallBack;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusGestureCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusGestureCallBack;

    move-result-object v2

    .line 148
    .restart local v2    # "_arg0":Landroid/os/IOplusGestureCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->registerScreenoffGesture(Landroid/os/IOplusGestureCallBack;)Z

    move-result v3

    .line 150
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 152
    goto :goto_0

    .line 140
    .end local v2    # "_arg0":Landroid/os/IOplusGestureCallBack;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/IOplusExService$Stub;->resumeExInputEvent()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_0

    .line 134
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/IOplusExService$Stub;->pauseExInputEvent()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_0

    .line 126
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExInputCallBack;

    move-result-object v2

    .line 127
    .local v2, "_arg0":Landroid/os/IOplusExInputCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->unregisterInputEvent(Landroid/os/IOplusExInputCallBack;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Landroid/os/IOplusExInputCallBack;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExInputCallBack;

    move-result-object v2

    .line 117
    .restart local v2    # "_arg0":Landroid/os/IOplusExInputCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->registerRawInputEvent(Landroid/os/IOplusExInputCallBack;)Z

    move-result v3

    .line 119
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    goto :goto_0

    .line 106
    .end local v2    # "_arg0":Landroid/os/IOplusExInputCallBack;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExInputCallBack;

    move-result-object v2

    .line 107
    .restart local v2    # "_arg0":Landroid/os/IOplusExInputCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Landroid/os/IOplusExService$Stub;->registerInputEvent(Landroid/os/IOplusExInputCallBack;)Z

    move-result v3

    .line 109
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    nop

    .line 230
    .end local v2    # "_arg0":Landroid/os/IOplusExInputCallBack;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
