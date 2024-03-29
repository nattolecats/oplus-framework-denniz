.class public abstract Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;
.super Landroid/os/Binder;
.source "IQoSPredictionCallBack.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onQosPredictionResultChanged:I = 0x1

.field static final blacklist TRANSACTION_onQosPredictionStateChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.android.internal.telephony.signalMap.qosPrediction.IQoSPredictionCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    const-string v0, "com.android.internal.telephony.signalMap.qosPrediction.IQoSPredictionCallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    if-eqz v1, :cond_1

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    return-object v1

    .line 62
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 66
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

    .line 70
    const-string v0, "com.android.internal.telephony.signalMap.qosPrediction.IQoSPredictionCallBack"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 82
    packed-switch p1, :pswitch_data_1

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 95
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;->onQosPredictionStateChanged(I)V

    .line 98
    goto :goto_0

    .line 87
    .end local v2    # "_arg0":I
    :pswitch_2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 88
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;->onQosPredictionResultChanged(Landroid/os/Bundle;)V

    .line 90
    nop

    .line 105
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
