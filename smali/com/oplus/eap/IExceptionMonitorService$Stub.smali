.class public abstract Lcom/oplus/eap/IExceptionMonitorService$Stub;
.super Landroid/os/Binder;
.source "IExceptionMonitorService.java"

# interfaces
.implements Lcom/oplus/eap/IExceptionMonitorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eap/IExceptionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_GETVERSION:I = 0xa

.field static final blacklist TRANSACTION_INITEXCEPTIONIDLIST:I = 0x3

.field static final blacklist TRANSACTION_INITEXCEPTIONIDMAP:I = 0x4

.field static final blacklist TRANSACTION_INITEXITINFOIDLIST:I = 0x7

.field static final blacklist TRANSACTION_INITEXITINFOIDMAP:I = 0x8

.field static final blacklist TRANSACTION_ONAPPEXCEPTION:I = 0x1

.field static final blacklist TRANSACTION_ONAPPEXCEPTIONBUNDLE:I = 0x9

.field static final blacklist TRANSACTION_ONAPPEXIT:I = 0x5

.field static final blacklist TRANSACTION_ONEXCEPTIONIDADJUST:I = 0x2

.field static final blacklist TRANSACTION_ONUPLOADEXITINFOLIST:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "IExceptionMonitorService"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/eap/IExceptionMonitorService;
    .locals 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 136
    return-object v0

    .line 138
    :cond_0
    const-string v1, "IExceptionMonitorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 139
    .local v1, "iin":Landroid/os/IInterface;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/oplus/eap/IExceptionMonitorService;

    if-eqz v2, :cond_1

    .line 140
    move-object v0, v1

    check-cast v0, Lcom/oplus/eap/IExceptionMonitorService;

    return-object v0

    .line 142
    :cond_1
    new-instance v2, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;

    invoke-direct {v2, p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;-><init>(Landroid/os/IBinder;Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy-IA;)V

    return-object v2
.end method

.method public static blacklist getDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;
    .locals 1

    .line 624
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->-$$Nest$sfgetsDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/oplus/eap/IExceptionMonitorService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/oplus/eap/IExceptionMonitorService;

    .line 613
    invoke-static {}, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->-$$Nest$sfgetsDefaultImpl()Lcom/oplus/eap/IExceptionMonitorService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 616
    if-eqz p0, :cond_0

    .line 617
    invoke-static {p0}, Lcom/oplus/eap/IExceptionMonitorService$Stub$Proxy;->-$$Nest$sfputsDefaultImpl(Lcom/oplus/eap/IExceptionMonitorService;)V

    .line 618
    const/4 v0, 0x1

    return v0

    .line 620
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 614
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist transGetVersion(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->getVersion()I

    move-result v0

    .line 197
    .local v0, "result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist transInitExceptionIdList(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v0, "arg0":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eap/ExceptionIdentification;>;"
    sget-object v1, Lcom/oplus/eap/ExceptionIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->initExceptionIdList(Ljava/util/List;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist transInitExceptionIdMap(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v0, "arg0":Ljava/util/Map;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 268
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->initExceptionIdMap(Ljava/util/Map;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist transInitExitInfoIdMap(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "arg0":Ljava/util/Map;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 223
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->initExitInfoIdMap(Ljava/util/Map;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist transOnAppException(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "arg0":Landroid/os/SharedMemory;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/SharedMemory;

    .line 289
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->onAppException(Landroid/os/SharedMemory;)Lcom/oplus/eap/ExceptionIdentification;

    move-result-object v1

    .line 290
    .local v1, "result":Lcom/oplus/eap/ExceptionIdentification;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {v1, p2, v2}, Lcom/oplus/eap/ExceptionIdentification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 295
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    :goto_0
    return v2
.end method

.method private blacklist transOnAppExceptionBundle(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, "arg0":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    .line 208
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->onAppExceptionBundle(Landroid/os/Bundle;)Lcom/oplus/eap/ExceptionIdentification;

    move-result-object v1

    .line 209
    .local v1, "result":Lcom/oplus/eap/ExceptionIdentification;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v1, p2, v2}, Lcom/oplus/eap/ExceptionIdentification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 214
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    :goto_0
    return v2
.end method

.method private blacklist transOnAppExit(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 248
    .local v0, "arg0":Landroid/app/ApplicationExitInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Landroid/app/ApplicationExitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/ApplicationExitInfo;

    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->onAppExit(Landroid/app/ApplicationExitInfo;)Lcom/oplus/eap/ExceptionIdentification;

    move-result-object v1

    .line 254
    .local v1, "result":Lcom/oplus/eap/ExceptionIdentification;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {v1, p2, v2}, Lcom/oplus/eap/ExceptionIdentification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 259
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    :goto_1
    return v2
.end method

.method private blacklist transOnExceptionIdAdjust(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "arg0":Lcom/oplus/eap/ExceptionIdentification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    sget-object v1, Lcom/oplus/eap/ExceptionIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/oplus/eap/ExceptionIdentification;

    goto :goto_0

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->onExceptionIdAdjust(Lcom/oplus/eap/ExceptionIdentification;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist transOnUploadExitInfoList(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->onUploadExitInfoList()V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist transinitExitInfoIdList(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->initExitInfoIdList()Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eap/ExceptionIdentification;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 234
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 147
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    const-string v0, "IExceptionMonitorService"

    .line 153
    .local v0, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 155
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x1

    return v1

    .line 186
    :sswitch_1
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transGetVersion(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 183
    :sswitch_2
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transOnAppExceptionBundle(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 180
    :sswitch_3
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transInitExitInfoIdMap(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 177
    :sswitch_4
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transinitExitInfoIdList(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 174
    :sswitch_5
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transOnUploadExitInfoList(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 171
    :sswitch_6
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transOnAppExit(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 168
    :sswitch_7
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transInitExceptionIdMap(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 165
    :sswitch_8
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transInitExceptionIdList(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 162
    :sswitch_9
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transOnExceptionIdAdjust(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 159
    :sswitch_a
    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/eap/IExceptionMonitorService$Stub;->transOnAppException(Landroid/os/Parcel;Landroid/os/Parcel;Ljava/lang/String;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
