.class public abstract Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;
.super Landroid/os/Binder;
.source "ICyberSenseLocationService.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCslLocationResult:I = 0x8

.field static final blacklist TRANSACTION_pauseCslService:I = 0x7

.field static final blacklist TRANSACTION_registerCslClient:I = 0x2

.field static final blacklist TRANSACTION_registerCslMockClient:I = 0x4

.field static final blacklist TRANSACTION_reportCslMockData:I = 0xd

.field static final blacklist TRANSACTION_reportCslMockLocationResult:I = 0xe

.field static final blacklist TRANSACTION_reportCslMockLocationResults:I = 0xf

.field static final blacklist TRANSACTION_reportCslMockState:I = 0x10

.field static final blacklist TRANSACTION_resumeCslService:I = 0x6

.field static final blacklist TRANSACTION_startCslCollectData:I = 0xb

.field static final blacklist TRANSACTION_startCslMockTest:I = 0x9

.field static final blacklist TRANSACTION_stopCslCollectData:I = 0xc

.field static final blacklist TRANSACTION_stopCslMockTest:I = 0xa

.field static final blacklist TRANSACTION_unregisterCslClient:I = 0x3

.field static final blacklist TRANSACTION_unregisterCslMockClient:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 178
    const-string v0, "com.android.internal.telephony.signalMap.cybersenselocation.ICyberSenseLocationService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    const-string v0, "com.android.internal.telephony.signalMap.cybersenselocation.ICyberSenseLocationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 190
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v1, :cond_1

    .line 191
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    return-object v1

    .line 193
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 197
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

    .line 201
    const-string v0, "com.android.internal.telephony.signalMap.cybersenselocation.ICyberSenseLocationService"

    .line 202
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 203
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 213
    packed-switch p1, :pswitch_data_1

    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 209
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return v1

    .line 334
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->reportCslMockState(I)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_0

    .line 325
    .end local v2    # "_arg0":I
    :pswitch_2
    sget-object v2, Landroid/telephony/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->reportCslMockLocationResults(Ljava/util/List;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto/16 :goto_0

    .line 316
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    :pswitch_3
    sget-object v2, Landroid/telephony/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/LocationResult;

    .line 317
    .local v2, "_arg0":Landroid/telephony/LocationResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->reportCslMockLocationResult(Landroid/telephony/LocationResult;)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto/16 :goto_0

    .line 307
    .end local v2    # "_arg0":Landroid/telephony/LocationResult;
    :pswitch_4
    sget-object v2, Landroid/telephony/CyberSenseCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 308
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->reportCslMockData(Ljava/util/List;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_0

    .line 300
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->stopCslCollectData()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_0

    .line 294
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->startCslCollectData()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_0

    .line 288
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->stopCslMockTest()V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_0

    .line 282
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->startCslMockTest()V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto/16 :goto_0

    .line 275
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->getCslLocationResult()Landroid/telephony/LocationResult;

    move-result-object v2

    .line 276
    .local v2, "_result":Landroid/telephony/LocationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 278
    goto/16 :goto_0

    .line 268
    .end local v2    # "_result":Landroid/telephony/LocationResult;
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->pauseCslService()I

    move-result v2

    .line 269
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    goto :goto_0

    .line 261
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->resumeCslService()I

    move-result v2

    .line 262
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    goto :goto_0

    .line 252
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    move-result-object v2

    .line 253
    .local v2, "_arg0":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->unregisterCslMockClient(Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I

    move-result v3

    .line 255
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    goto :goto_0

    .line 240
    .end local v2    # "_arg0":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .end local v3    # "_result":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    move-result-object v3

    .line 243
    .local v3, "_arg1":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->registerCslMockClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I

    move-result v4

    .line 245
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    goto :goto_0

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .end local v4    # "_result":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->unregisterCslClient(Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I

    move-result v3

    .line 233
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .end local v3    # "_result":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    move-result-object v3

    .line 221
    .local v3, "_arg1":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->registerCslClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I

    move-result v4

    .line 223
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    nop

    .line 345
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .end local v4    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
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
