.class public abstract Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizeApplicationManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeApplicationManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAppAlarmWhiteList:I = 0x11

.field static final blacklist TRANSACTION_addDisallowedRunningApp:I = 0x5

.field static final blacklist TRANSACTION_addPersistentApp:I = 0x17

.field static final blacklist TRANSACTION_addTrustedAppStore:I = 0x8

.field static final blacklist TRANSACTION_addTrustedAppStoreList:I = 0xf

.field static final blacklist TRANSACTION_cleanBackgroundProcess:I = 0x4

.field static final blacklist TRANSACTION_clearAllTrustedAppStore:I = 0x10

.field static final blacklist TRANSACTION_deleteTrustedAppStore:I = 0x9

.field static final blacklist TRANSACTION_enableTrustedAppStore:I = 0xa

.field static final blacklist TRANSACTION_forceStopPackage:I = 0x1

.field static final blacklist TRANSACTION_getAERDeviceOwnerApp:I = 0x1f

.field static final blacklist TRANSACTION_getAppAlarmWhiteList:I = 0x12

.field static final blacklist TRANSACTION_getDisallowedRunningApp:I = 0x7

.field static final blacklist TRANSACTION_getPersistentApp:I = 0x19

.field static final blacklist TRANSACTION_getSpecificCutoutModeAppList:I = 0x1a

.field static final blacklist TRANSACTION_getStopLockTaskAvailability:I = 0x1d

.field static final blacklist TRANSACTION_getTopAppPackageName:I = 0x2

.field static final blacklist TRANSACTION_getTrustedAppStore:I = 0xc

.field static final blacklist TRANSACTION_interceptStopLockTask:I = 0x1c

.field static final blacklist TRANSACTION_isAllowControlAppRun:I = 0x16

.field static final blacklist TRANSACTION_isAllowTrustedAppStore:I = 0xe

.field static final blacklist TRANSACTION_isTrustedAppStoreEnabled:I = 0xb

.field static final blacklist TRANSACTION_killApplicationProcess:I = 0x3

.field static final blacklist TRANSACTION_removeAllAppAlarmWhiteList:I = 0x14

.field static final blacklist TRANSACTION_removeAppAlarmWhiteList:I = 0x13

.field static final blacklist TRANSACTION_removeDisallowedRunningApp:I = 0x6

.field static final blacklist TRANSACTION_removePersistentApp:I = 0x18

.field static final blacklist TRANSACTION_setAERDeviceOwnerApp:I = 0x1e

.field static final blacklist TRANSACTION_setAllowControlAppRun:I = 0x15

.field static final blacklist TRANSACTION_setAllowTrustedAppStore:I = 0xd

.field static final blacklist TRANSACTION_setSpecificCutoutModeAppList:I = 0x1b


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 205
    const-string v0, "android.os.customize.IOplusCustomizeApplicationManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeApplicationManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 213
    if-nez p0, :cond_0

    .line 214
    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizeApplicationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 217
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    if-eqz v1, :cond_1

    .line 218
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    return-object v1

    .line 220
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 224
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

    .line 228
    const-string v0, "android.os.customize.IOplusCustomizeApplicationManagerService"

    .line 229
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 230
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 240
    packed-switch p1, :pswitch_data_1

    .line 502
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 236
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return v1

    .line 495
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getAERDeviceOwnerApp()Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 498
    goto/16 :goto_0

    .line 487
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 488
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->setAERDeviceOwnerApp(Ljava/util/List;)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto/16 :goto_0

    .line 479
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getStopLockTaskAvailability()Z

    move-result v2

    .line 480
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 482
    goto/16 :goto_0

    .line 471
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 472
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->interceptStopLockTask(Z)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto/16 :goto_0

    .line 460
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 462
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->setSpecificCutoutModeAppList(Ljava/util/List;I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_0

    .line 450
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 451
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getSpecificCutoutModeAppList(I)Ljava/util/List;

    move-result-object v3

    .line 453
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 455
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getPersistentApp()Ljava/util/List;

    move-result-object v2

    .line 443
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 445
    goto/16 :goto_0

    .line 434
    .end local v2    # "_result":Ljava/util/List;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 435
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->removePersistentApp(Ljava/util/List;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_0

    .line 423
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 425
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->addPersistentApp(Ljava/util/List;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->isAllowControlAppRun()Z

    move-result v2

    .line 416
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 418
    goto/16 :goto_0

    .line 407
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 408
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->setAllowControlAppRun(Z)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_0

    .line 399
    .end local v2    # "_arg0":Z
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->removeAllAppAlarmWhiteList()Z

    move-result v2

    .line 400
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 402
    goto/16 :goto_0

    .line 390
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 391
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->removeAppAlarmWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 393
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 395
    goto/16 :goto_0

    .line 382
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getAppAlarmWhiteList()Ljava/util/List;

    move-result-object v2

    .line 383
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 385
    goto/16 :goto_0

    .line 374
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 375
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->addAppAlarmWhiteList(Ljava/util/List;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_0

    .line 367
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->clearAllTrustedAppStore()V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_0

    .line 359
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 360
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->addTrustedAppStoreList(Ljava/util/List;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_0

    .line 351
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->isAllowTrustedAppStore()Z

    move-result v2

    .line 352
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    goto/16 :goto_0

    .line 343
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 344
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->setAllowTrustedAppStore(Z)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_0

    .line 335
    .end local v2    # "_arg0":Z
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getTrustedAppStore()Ljava/util/List;

    move-result-object v2

    .line 336
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 338
    goto/16 :goto_0

    .line 328
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_15
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->isTrustedAppStoreEnabled()Z

    move-result v2

    .line 329
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    goto/16 :goto_0

    .line 320
    .end local v2    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 321
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->enableTrustedAppStore(Z)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->deleteTrustedAppStore(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto :goto_0

    .line 302
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->addTrustedAppStore(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto :goto_0

    .line 294
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getDisallowedRunningApp()Ljava/util/List;

    move-result-object v2

    .line 295
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 297
    goto :goto_0

    .line 286
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 287
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->removeDisallowedRunningApp(Ljava/util/List;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto :goto_0

    .line 277
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 278
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->addDisallowedRunningApp(Ljava/util/List;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto :goto_0

    .line 270
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->cleanBackgroundProcess()V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto :goto_0

    .line 262
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->killApplicationProcess(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto :goto_0

    .line 254
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->getTopAppPackageName()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    goto :goto_0

    .line 245
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->forceStopPackage(Ljava/util/List;)Z

    move-result v3

    .line 248
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    nop

    .line 505
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
