.class public abstract Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizePackageManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizePackageManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizePackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizePackageManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addDisabledDeactivateMdmPackages:I = 0x1

.field static final blacklist TRANSACTION_addDisallowedUninstallPackages:I = 0x6

.field static final blacklist TRANSACTION_clearAllSuperWhiteList:I = 0x1a

.field static final blacklist TRANSACTION_clearAppData:I = 0xa

.field static final blacklist TRANSACTION_clearSuperWhiteList:I = 0x19

.field static final blacklist TRANSACTION_getAdbInstallUninstallDisabled:I = 0x10

.field static final blacklist TRANSACTION_getAllInstallSysAppList:I = 0x15

.field static final blacklist TRANSACTION_getClearAppName:I = 0xb

.field static final blacklist TRANSACTION_getContainOplusCertificatePackages:I = 0x16

.field static final blacklist TRANSACTION_getCustomizeDefaultApp:I = 0xd

.field static final blacklist TRANSACTION_getDetachableInstallSysAppList:I = 0x14

.field static final blacklist TRANSACTION_getDisabledDeactivateMdmPackages:I = 0x4

.field static final blacklist TRANSACTION_getDisallowUninstallPackageList:I = 0x9

.field static final blacklist TRANSACTION_getInstallSysAppBundle:I = 0x12

.field static final blacklist TRANSACTION_getPrivInstallSysAppList:I = 0x13

.field static final blacklist TRANSACTION_getSuperWhiteList:I = 0x18

.field static final blacklist TRANSACTION_isDisabledDeactivateMdmPackage:I = 0x5

.field static final blacklist TRANSACTION_removeAllDisabledDeactivateMdmPackages:I = 0x3

.field static final blacklist TRANSACTION_removeAllDisallowedUninstallPackages:I = 0x8

.field static final blacklist TRANSACTION_removeCustomizeDefaultApp:I = 0xe

.field static final blacklist TRANSACTION_removeDisabledDeactivateMdmPackages:I = 0x2

.field static final blacklist TRANSACTION_removeDisallowedUninstallPackages:I = 0x7

.field static final blacklist TRANSACTION_setAdbInstallUninstallDisabled:I = 0xf

.field static final blacklist TRANSACTION_setCustomizeDefaultApp:I = 0xc

.field static final blacklist TRANSACTION_setInstallSysAppBundle:I = 0x11

.field static final blacklist TRANSACTION_setSuperWhiteList:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 116
    const-string v0, "android.os.customize.IOplusCustomizePackageManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizePackageManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizePackageManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 128
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizePackageManagerService;

    if-eqz v1, :cond_1

    .line 129
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizePackageManagerService;

    return-object v1

    .line 131
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 334
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 135
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

    .line 139
    const-string v0, "android.os.customize.IOplusCustomizePackageManagerService"

    .line 140
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 151
    packed-switch p1, :pswitch_data_1

    .line 376
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 369
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->clearAllSuperWhiteList()Z

    move-result v2

    .line 370
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 372
    goto/16 :goto_0

    .line 360
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 361
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->clearSuperWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 363
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 365
    goto/16 :goto_0

    .line 352
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getSuperWhiteList()Ljava/util/List;

    move-result-object v2

    .line 353
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 355
    goto/16 :goto_0

    .line 343
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 344
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->setSuperWhiteList(Ljava/util/List;)Z

    move-result v3

    .line 346
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 348
    goto/16 :goto_0

    .line 327
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getContainOplusCertificatePackages()Ljava/util/Map;

    move-result-object v2

    .line 328
    .local v2, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-nez v2, :cond_1

    .line 330
    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 332
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    new-instance v3, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 338
    goto/16 :goto_0

    .line 320
    .end local v2    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getAllInstallSysAppList()Ljava/util/List;

    move-result-object v2

    .line 321
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 323
    goto/16 :goto_0

    .line 313
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getDetachableInstallSysAppList()Ljava/util/List;

    move-result-object v2

    .line 314
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 316
    goto/16 :goto_0

    .line 306
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getPrivInstallSysAppList()Ljava/util/List;

    move-result-object v2

    .line 307
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 309
    goto/16 :goto_0

    .line 299
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getInstallSysAppBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 300
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 302
    goto/16 :goto_0

    .line 291
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_a
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 292
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->setInstallSysAppBundle(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto/16 :goto_0

    .line 283
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getAdbInstallUninstallDisabled()Z

    move-result v2

    .line 284
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 286
    goto/16 :goto_0

    .line 275
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 276
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->setAdbInstallUninstallDisabled(Z)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_0

    .line 266
    .end local v2    # "_arg0":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->removeCustomizeDefaultApp(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getCustomizeDefaultApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->setCustomizeDefaultApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 249
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto/16 :goto_0

    .line 236
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getClearAppName()Ljava/util/List;

    move-result-object v2

    .line 237
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 239
    goto/16 :goto_0

    .line 228
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->clearAppData(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_0

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getDisallowUninstallPackageList()Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 223
    goto :goto_0

    .line 214
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->removeAllDisallowedUninstallPackages()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_0

    .line 206
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 207
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->removeDisallowedUninstallPackages(Ljava/util/List;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->addDisallowedUninstallPackages(Ljava/util/List;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_0

    .line 187
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->isDisabledDeactivateMdmPackage(Ljava/lang/String;)Z

    move-result v3

    .line 190
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_0

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->getDisabledDeactivateMdmPackages()Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 182
    goto :goto_0

    .line 173
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->removeAllDisabledDeactivateMdmPackages()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_0

    .line 165
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->removeDisabledDeactivateMdmPackages(Ljava/util/List;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->addDisabledDeactivateMdmPackages(Ljava/util/List;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    nop

    .line 379
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
