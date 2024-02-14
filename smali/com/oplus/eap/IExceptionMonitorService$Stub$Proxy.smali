.class Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IExceptionMonitorService.java"

# interfaces
.implements Lcom/oplus/eap/IExceptionMonitorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eap/IExceptionMonitorService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field private static blacklist sDefaultImpl:Lcom/oplus/eap/IExceptionMonitorService;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;
    .locals 1

    sget-object v0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/eap/IExceptionMonitorService;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsDefaultImpl(Lcom/oplus/eap/IExceptionMonitorService;)V
    .locals 0

    sput-object p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/eap/IExceptionMonitorService;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 319
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 327
    const-string v0, "IExceptionMonitorService"

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 403
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 404
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 406
    .local v2, "result":I
    :try_start_0
    const-string v3, "IExceptionMonitorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    iget-object v3, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 408
    .local v3, "status":Z
    if-nez v3, :cond_0

    .line 409
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 410
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    invoke-interface {v4}, Lcom/oplus/eap/IExceptionMonitorService;->getVersion()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    return v4

    .line 413
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v4

    .line 416
    .end local v3    # "status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    nop

    .line 419
    return v2

    .line 416
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw v3
.end method

.method public blacklist initExceptionIdList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/eap/ExceptionIdentification;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eap/ExceptionIdentification;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 459
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "IExceptionMonitorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 461
    iget-object v2, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 462
    .local v2, "status":Z
    if-nez v2, :cond_0

    .line 463
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 464
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oplus/eap/IExceptionMonitorService;->initExceptionIdList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    return-void

    .line 468
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    .end local v2    # "status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    nop

    .line 473
    return-void

    .line 470
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw v2
.end method

.method public blacklist initExceptionIdMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 481
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 483
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "IExceptionMonitorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 485
    iget-object v2, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 486
    .local v2, "status":Z
    if-nez v2, :cond_0

    .line 487
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 488
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oplus/eap/IExceptionMonitorService;->initExceptionIdMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 489
    return-void

    .line 492
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local v2    # "status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    nop

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    throw v2
.end method

.method public blacklist initExitInfoIdList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/eap/ExceptionIdentification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 563
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 564
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eap/ExceptionIdentification;>;"
    :try_start_0
    const-string v3, "IExceptionMonitorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 568
    .local v3, "status":Z
    if-nez v3, :cond_0

    .line 569
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 570
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    invoke-interface {v4}, Lcom/oplus/eap/IExceptionMonitorService;->initExitInfoIdList()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    return-object v4

    .line 573
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 574
    sget-object v4, Lcom/oplus/eap/ExceptionIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 576
    .end local v3    # "status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 578
    nop

    .line 579
    return-object v2

    .line 576
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 578
    throw v3
.end method

.method public blacklist initExitInfoIdMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 588
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 590
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "IExceptionMonitorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 592
    iget-object v2, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 593
    .local v2, "status":Z
    if-nez v2, :cond_0

    .line 594
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 595
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oplus/eap/IExceptionMonitorService;->initExitInfoIdMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 596
    return-void

    .line 599
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    .end local v2    # "status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    nop

    .line 604
    return-void

    .line 601
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    throw v2
.end method

.method public blacklist onAppException(Landroid/os/SharedMemory;)Lcom/oplus/eap/ExceptionIdentification;
    .locals 6
    .param p1, "smdata"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 337
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 339
    .local v2, "result":Lcom/oplus/eap/ExceptionIdentification;
    :try_start_0
    const-string v3, "IExceptionMonitorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    invoke-virtual {p1, v0, v4}, Landroid/os/SharedMemory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    :goto_0
    iget-object v5, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v5, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 347
    .local v3, "status":Z
    if-nez v3, :cond_1

    .line 348
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 349
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/oplus/eap/IExceptionMonitorService;->onAppException(Landroid/os/SharedMemory;)Lcom/oplus/eap/ExceptionIdentification;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    return-object v4

    .line 352
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 354
    sget-object v4, Lcom/oplus/eap/ExceptionIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/eap/ExceptionIdentification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_1

    .line 356
    :cond_2
    const/4 v2, 0x0

    .line 359
    .end local v3    # "status":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-object v2

    .line 359
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v3
.end method

.method public blacklist onAppExceptionBundle(Landroid/os/Bundle;)Lcom/oplus/eap/ExceptionIdentification;
    .locals 6
    .param p1, "bdata"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 371
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 372
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 374
    .local v2, "result":Lcom/oplus/eap/ExceptionIdentification;
    :try_start_0
    const-string v3, "IExceptionMonitorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 376
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    :goto_0
    iget-object v4, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 382
    .local v3, "status":Z
    if-nez v3, :cond_1

    .line 383
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 384
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/oplus/eap/IExceptionMonitorService;->onAppExceptionBundle(Landroid/os/Bundle;)Lcom/oplus/eap/ExceptionIdentification;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    return-object v4

    .line 387
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 389
    sget-object v4, Lcom/oplus/eap/ExceptionIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/eap/ExceptionIdentification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_1

    .line 391
    :cond_2
    const/4 v2, 0x0

    .line 394
    .end local v3    # "status":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    nop

    .line 397
    return-object v2

    .line 394
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw v3
.end method

.method public blacklist onAppExit(Landroid/app/ApplicationExitInfo;)Lcom/oplus/eap/ExceptionIdentification;
    .locals 6
    .param p1, "aedata"    # Landroid/app/ApplicationExitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 506
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 508
    .local v2, "result":Lcom/oplus/eap/ExceptionIdentification;
    :try_start_0
    const-string v3, "IExceptionMonitorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 510
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    invoke-virtual {p1, v0, v3}, Landroid/app/ApplicationExitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    :goto_0
    iget-object v4, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 516
    .local v3, "status":Z
    if-nez v3, :cond_1

    .line 517
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 518
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/oplus/eap/IExceptionMonitorService;->onAppExit(Landroid/app/ApplicationExitInfo;)Lcom/oplus/eap/ExceptionIdentification;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    return-object v4

    .line 521
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    sget-object v4, Lcom/oplus/eap/ExceptionIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/eap/ExceptionIdentification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_1

    .line 525
    :cond_2
    const/4 v2, 0x0

    .line 528
    .end local v3    # "status":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    nop

    .line 531
    return-object v2

    .line 528
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    throw v3
.end method

.method public blacklist onExceptionIdAdjust(Lcom/oplus/eap/ExceptionIdentification;)V
    .locals 5
    .param p1, "exceptionId"    # Lcom/oplus/eap/ExceptionIdentification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 428
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 430
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "IExceptionMonitorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 432
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {p1, v0, v2}, Lcom/oplus/eap/ExceptionIdentification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    :goto_0
    iget-object v3, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 438
    .local v2, "status":Z
    if-nez v2, :cond_1

    .line 439
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 440
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oplus/eap/IExceptionMonitorService;->onExceptionIdAdjust(Lcom/oplus/eap/ExceptionIdentification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 441
    return-void

    .line 444
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local v2    # "status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    nop

    .line 449
    return-void

    .line 446
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw v2
.end method

.method public blacklist onUploadExitInfoList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 540
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 542
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "IExceptionMonitorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 544
    .local v2, "status":Z
    if-nez v2, :cond_0

    .line 545
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 546
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/eap/IExceptionMonitorService;->onUploadExitInfoList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 547
    return-void

    .line 550
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    .end local v2    # "status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    nop

    .line 555
    return-void

    .line 552
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    throw v2
.end method
