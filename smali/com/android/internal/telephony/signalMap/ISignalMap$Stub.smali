.class public abstract Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;
.super Landroid/os/Binder;
.source "ISignalMap.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/ISignalMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/ISignalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/ISignalMap$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_canUseQoSService:I = 0x2

.field static final blacklist TRANSACTION_getQoSPredictState:I = 0xa

.field static final blacklist TRANSACTION_listenToSignalMapEvent:I = 0x9

.field static final blacklist TRANSACTION_registerQosClient:I = 0x3

.field static final blacklist TRANSACTION_registerQosCollectClient:I = 0x5

.field static final blacklist TRANSACTION_registerServiceInfoCallback:I = 0x7

.field static final blacklist TRANSACTION_setOlkQoSClientPackages:I = 0xb

.field static final blacklist TRANSACTION_unregisterQosClient:I = 0x4

.field static final blacklist TRANSACTION_unregisterQosCollectClient:I = 0x6

.field static final blacklist TRANSACTION_unregisterServiceInfoCallback:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 147
    const-string v0, "com.android.internal.telephony.signalMap.ISignalMap"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/ISignalMap;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    const-string v0, "com.android.internal.telephony.signalMap.ISignalMap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 159
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-eqz v1, :cond_1

    .line 160
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/signalMap/ISignalMap;

    return-object v1

    .line 162
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 166
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

    .line 170
    const-string v0, "com.android.internal.telephony.signalMap.ISignalMap"

    .line 171
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 172
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 182
    packed-switch p1, :pswitch_data_1

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 178
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v1

    .line 283
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 284
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->setOlkQoSClientPackages(Ljava/util/List;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_0

    .line 275
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->getQoSPredictState()I

    move-result v2

    .line 276
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    goto/16 :goto_0

    .line 263
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/signalMap/ISignalMapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/ISignalMapCallback;

    move-result-object v3

    .line 267
    .local v3, "_arg1":Lcom/android/internal/telephony/signalMap/ISignalMapCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 268
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->listenToSignalMapEvent(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/ISignalMapCallback;[I)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 253
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/signalMap/ISignalMapCallback;
    .end local v4    # "_arg2":[I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;

    move-result-object v2

    .line 254
    .local v2, "_arg0":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->unregisterServiceInfoCallback(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z

    move-result v3

    .line 256
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    goto/16 :goto_0

    .line 241
    .end local v2    # "_arg0":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;

    move-result-object v3

    .line 244
    .local v3, "_arg1":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->registerServiceInfoCallback(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z

    move-result v4

    .line 246
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 248
    goto :goto_0

    .line 231
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

    move-result-object v2

    .line 232
    .local v2, "_arg0":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->unregisterQosCollectClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z

    move-result v3

    .line 234
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    goto :goto_0

    .line 219
    .end local v2    # "_arg0":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

    move-result-object v3

    .line 222
    .local v3, "_arg1":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->registerQosCollectClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z

    move-result v4

    .line 224
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    goto :goto_0

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    move-result-object v2

    .line 210
    .local v2, "_arg0":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->unregisterQosClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z

    move-result v3

    .line 212
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    move-result-object v3

    .line 200
    .local v3, "_arg1":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->registerQosClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z

    move-result v4

    .line 202
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    goto :goto_0

    .line 187
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
    .end local v4    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->canUseQoSService(Ljava/lang/String;)Z

    move-result v3

    .line 190
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    nop

    .line 294
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
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
