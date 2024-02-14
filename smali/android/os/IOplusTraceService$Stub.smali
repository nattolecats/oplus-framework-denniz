.class public abstract Landroid/os/IOplusTraceService$Stub;
.super Landroid/os/Binder;
.source "IOplusTraceService.java"

# interfaces
.implements Landroid/os/IOplusTraceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOplusTraceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOplusTraceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callUpdateContentFilter:I = 0xb

.field static final blacklist TRANSACTION_flushTraceBuffer:I = 0x5

.field static final blacklist TRANSACTION_getProcessTree:I = 0xa

.field static final blacklist TRANSACTION_handleTraceShmemBuffer:I = 0x3

.field static final blacklist TRANSACTION_obtainMemoryCache:I = 0x7

.field static final blacklist TRANSACTION_obtainSharedMemory:I = 0x4

.field static final blacklist TRANSACTION_registerCallBack:I = 0x1

.field static final blacklist TRANSACTION_unregisterCallBack:I = 0x2

.field static final blacklist TRANSACTION_updateContentFilterList:I = 0x8

.field static final blacklist TRANSACTION_updateProcessWhitelist:I = 0x6

.field static final blacklist TRANSACTION_uploadProcessTree:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.os.IOplusTraceService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOplusTraceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IOplusTraceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "android.os.IOplusTraceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IOplusTraceService;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/os/IOplusTraceService;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/os/IOplusTraceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IOplusTraceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 78
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

    .line 82
    const-string v0, "android.os.IOplusTraceService"

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 94
    packed-switch p1, :pswitch_data_1

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 197
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IOplusFilterListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusFilterListener;

    move-result-object v3

    .line 200
    .local v3, "_arg1":Landroid/os/IOplusFilterListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Landroid/os/IOplusTraceService$Stub;->callUpdateContentFilter(ILandroid/os/IOplusFilterListener;)V

    .line 202
    goto/16 :goto_0

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IOplusFilterListener;
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/IOplusTraceService$Stub;->getProcessTree()Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/onetrace/entities/TaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 192
    goto/16 :goto_0

    .line 177
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/onetrace/entities/TaskInfo;>;"
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 182
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 183
    .local v5, "_arg2":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3, v5}, Landroid/os/IOplusTraceService$Stub;->uploadProcessTree(ILjava/lang/String;Ljava/util/Map;)V

    .line 185
    goto/16 :goto_0

    .line 168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "_arg2":Ljava/util/Map;
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 169
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 170
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v3}, Landroid/os/IOplusTraceService$Stub;->updateContentFilterList(Ljava/util/Map;)V

    .line 172
    goto/16 :goto_0

    .line 154
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IOplusFilterListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusFilterListener;

    move-result-object v4

    .line 159
    .local v4, "_arg2":Landroid/os/IOplusFilterListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IOplusTraceService$Stub;->obtainMemoryCache(Ljava/lang/String;ILandroid/os/IOplusFilterListener;)Landroid/os/SharedMemory;

    move-result-object v5

    .line 161
    .local v5, "_result":Landroid/os/SharedMemory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 163
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IOplusFilterListener;
    .end local v5    # "_result":Landroid/os/SharedMemory;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/os/IOplusTraceService$Stub;->updateProcessWhitelist([Ljava/lang/String;)V

    .line 149
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/IOplusTraceService$Stub;->flushTraceBuffer()Z

    move-result v2

    .line 139
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    goto :goto_0

    .line 129
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/os/IOplusTraceService$Stub;->obtainSharedMemory(Ljava/lang/String;)Landroid/os/SharedMemory;

    move-result-object v3

    .line 132
    .local v3, "_result":Landroid/os/SharedMemory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 134
    goto :goto_0

    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/SharedMemory;
    :pswitch_9
    sget-object v2, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    .line 120
    .local v2, "_arg0":Landroid/os/SharedMemory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2, v3}, Landroid/os/IOplusTraceService$Stub;->handleTraceShmemBuffer(Landroid/os/SharedMemory;I)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    goto :goto_0

    .line 109
    .end local v2    # "_arg0":Landroid/os/SharedMemory;
    .end local v3    # "_arg1":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusTraceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusTraceCallBack;

    move-result-object v2

    .line 110
    .local v2, "_arg0":Landroid/os/IOplusTraceCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/os/IOplusTraceService$Stub;->unregisterCallBack(Landroid/os/IOplusTraceCallBack;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    goto :goto_0

    .line 99
    .end local v2    # "_arg0":Landroid/os/IOplusTraceCallBack;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOplusTraceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusTraceCallBack;

    move-result-object v2

    .line 100
    .restart local v2    # "_arg0":Landroid/os/IOplusTraceCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Landroid/os/IOplusTraceService$Stub;->registerCallBack(Landroid/os/IOplusTraceCallBack;)Z

    move-result v3

    .line 102
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    nop

    .line 209
    .end local v2    # "_arg0":Landroid/os/IOplusTraceCallBack;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
