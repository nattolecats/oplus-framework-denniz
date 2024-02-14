.class public abstract Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizeControlerManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeControlerManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeControlerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAccessibilityServiceToWhiteList:I = 0xb

.field static final blacklist TRANSACTION_deleteAccessibilityServiceWhiteList:I = 0xe

.field static final blacklist TRANSACTION_disableAccessibilityService:I = 0x7

.field static final blacklist TRANSACTION_enableAccessibilityService:I = 0x6

.field static final blacklist TRANSACTION_formatSDCard:I = 0x5

.field static final blacklist TRANSACTION_getAccessibilityService:I = 0x9

.field static final blacklist TRANSACTION_getAccessibilityServiceWhiteList:I = 0xd

.field static final blacklist TRANSACTION_getAirplaneMode:I = 0x14

.field static final blacklist TRANSACTION_getCustomAnimationPath:I = 0x19

.field static final blacklist TRANSACTION_getCustomSoundPath:I = 0x1b

.field static final blacklist TRANSACTION_getEnabledAccessibilityServicesName:I = 0xa

.field static final blacklist TRANSACTION_installSystemUpdate:I = 0x4

.field static final blacklist TRANSACTION_isAccessibilityServiceEnabled:I = 0x8

.field static final blacklist TRANSACTION_isDisableKeyguardForgetPassword:I = 0x10

.field static final blacklist TRANSACTION_isDisabledKeyguardPolicy:I = 0x12

.field static final blacklist TRANSACTION_rebootDevice:I = 0x2

.field static final blacklist TRANSACTION_removeAccessibilityServiceFromWhiteList:I = 0xc

.field static final blacklist TRANSACTION_setAirplaneMode:I = 0x13

.field static final blacklist TRANSACTION_setCustomAnimationPath:I = 0x18

.field static final blacklist TRANSACTION_setCustomSettingsMenu:I = 0x16

.field static final blacklist TRANSACTION_setCustomSoundPath:I = 0x1a

.field static final blacklist TRANSACTION_setDisableKeyguardForgetPassword:I = 0xf

.field static final blacklist TRANSACTION_setDisabledKeyguardPolicy:I = 0x11

.field static final blacklist TRANSACTION_setMaxDelayTimeForCustomizeRebootanim:I = 0x17

.field static final blacklist TRANSACTION_setSysTime:I = 0x15

.field static final blacklist TRANSACTION_shutdownDevice:I = 0x1

.field static final blacklist TRANSACTION_wipeDeviceData:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    const-string v0, "android.os.customize.IOplusCustomizeControlerManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeControlerManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 126
    if-nez p0, :cond_0

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizeControlerManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 130
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizeControlerManagerService;

    if-eqz v1, :cond_1

    .line 131
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizeControlerManagerService;

    return-object v1

    .line 133
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 137
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

    .line 141
    const-string v0, "android.os.customize.IOplusCustomizeControlerManagerService"

    .line 142
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 153
    packed-switch p1, :pswitch_data_1

    .line 387
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 380
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->getCustomSoundPath()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    goto/16 :goto_0

    .line 372
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setCustomSoundPath(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_0

    .line 364
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->getCustomAnimationPath()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    goto/16 :goto_0

    .line 356
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setCustomAnimationPath(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_0

    .line 347
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setMaxDelayTimeForCustomizeRebootanim(I)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_0

    .line 336
    .end local v2    # "_arg0":I
    :pswitch_6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 338
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 339
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 326
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 327
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setSysTime(Landroid/content/ComponentName;J)Z

    move-result v5

    .line 329
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 315
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->getAirplaneMode(Landroid/content/ComponentName;)Z

    move-result v3

    .line 317
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 319
    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 305
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 306
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setAirplaneMode(Landroid/content/ComponentName;Z)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->isDisabledKeyguardPolicy(Ljava/lang/String;)Z

    move-result v3

    .line 296
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 284
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setDisabledKeyguardPolicy(ZLjava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_0

    .line 274
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->isDisableKeyguardForgetPassword()Z

    move-result v2

    .line 275
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 277
    goto/16 :goto_0

    .line 265
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 266
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->setDisableKeyguardForgetPassword(Z)Z

    move-result v3

    .line 268
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    goto/16 :goto_0

    .line 258
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->deleteAccessibilityServiceWhiteList()V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto/16 :goto_0

    .line 251
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->getAccessibilityServiceWhiteList()Ljava/util/List;

    move-result-object v2

    .line 252
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 254
    goto/16 :goto_0

    .line 243
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 244
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->removeAccessibilityServiceFromWhiteList(Ljava/util/List;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_0

    .line 234
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->addAccessibilityServiceToWhiteList(Ljava/util/List;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_0

    .line 226
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->getEnabledAccessibilityServicesName()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    goto/16 :goto_0

    .line 219
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->getAccessibilityService()Ljava/util/List;

    move-result-object v2

    .line 220
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 222
    goto :goto_0

    .line 212
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->isAccessibilityServiceEnabled()Z

    move-result v2

    .line 213
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto :goto_0

    .line 204
    .end local v2    # "_result":Z
    :pswitch_15
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 205
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->disableAccessibilityService(Landroid/content/ComponentName;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto :goto_0

    .line 195
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_16
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 196
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->enableAccessibilityService(Landroid/content/ComponentName;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->formatSDCard(Ljava/lang/String;)Z

    move-result v3

    .line 188
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    goto :goto_0

    .line 176
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->installSystemUpdate(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->wipeDeviceData()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_0

    .line 163
    :pswitch_1a
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->rebootDevice()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 157
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->shutdownDevice()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    nop

    .line 390
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
