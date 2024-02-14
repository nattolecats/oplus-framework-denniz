.class public abstract Lcom/aiunit/aon/utils/IAONCallback$Stub;
.super Landroid/os/Binder;
.source "IAONCallback.java"

# interfaces
.implements Lcom/aiunit/aon/utils/IAONCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aiunit/aon/utils/IAONCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aiunit/aon/utils/IAONCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getRequestID:I = 0x1

.field static final blacklist TRANSACTION_onDetectedError:I = 0x2

.field static final blacklist TRANSACTION_onDetectedInfo:I = 0x3

.field static final blacklist TRANSACTION_onDetectedResult:I = 0x4


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.aiunit.aon.utils.IAONCallback"

    invoke-virtual {p0, p0, v0}, Lcom/aiunit/aon/utils/IAONCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/aiunit/aon/utils/IAONCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.aiunit.aon.utils.IAONCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/aiunit/aon/utils/IAONCallback;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/aiunit/aon/utils/IAONCallback;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/aiunit/aon/utils/IAONCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/aiunit/aon/utils/IAONCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "com.aiunit.aon.utils.IAONCallback"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 69
    packed-switch p1, :pswitch_data_1

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 101
    :pswitch_1
    sget-object v2, Lcom/aiunit/aon/utils/core/CommentResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aiunit/aon/utils/core/CommentResult;

    .line 102
    .local v2, "_arg0":Lcom/aiunit/aon/utils/core/CommentResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2}, Lcom/aiunit/aon/utils/IAONCallback$Stub;->onDetectedResult(Lcom/aiunit/aon/utils/core/CommentResult;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    goto :goto_0

    .line 91
    .end local v2    # "_arg0":Lcom/aiunit/aon/utils/core/CommentResult;
    :pswitch_2
    sget-object v2, Lcom/aiunit/aon/utils/core/InfoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aiunit/aon/utils/core/InfoResult;

    .line 92
    .local v2, "_arg0":Lcom/aiunit/aon/utils/core/InfoResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2}, Lcom/aiunit/aon/utils/IAONCallback$Stub;->onDetectedInfo(Lcom/aiunit/aon/utils/core/InfoResult;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 96
    goto :goto_0

    .line 81
    .end local v2    # "_arg0":Lcom/aiunit/aon/utils/core/InfoResult;
    :pswitch_3
    sget-object v2, Lcom/aiunit/aon/utils/core/ErrorResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aiunit/aon/utils/core/ErrorResult;

    .line 82
    .local v2, "_arg0":Lcom/aiunit/aon/utils/core/ErrorResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-virtual {p0, v2}, Lcom/aiunit/aon/utils/IAONCallback$Stub;->onDetectedError(Lcom/aiunit/aon/utils/core/ErrorResult;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    goto :goto_0

    .line 73
    .end local v2    # "_arg0":Lcom/aiunit/aon/utils/core/ErrorResult;
    :pswitch_4
    invoke-virtual {p0}, Lcom/aiunit/aon/utils/IAONCallback$Stub;->getRequestID()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    nop

    .line 113
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
