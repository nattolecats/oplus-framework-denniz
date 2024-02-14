.class public abstract Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;
.super Landroid/os/Binder;
.source "ICyberSenseLocationCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCslCollectionDataChanged:I = 0x4

.field static final blacklist TRANSACTION_onCslNetworkResultChanged:I = 0x3

.field static final blacklist TRANSACTION_onCslResultChanged:I = 0x1

.field static final blacklist TRANSACTION_onCslStateChanged:I = 0x2

.field static final blacklist TRANSACTION_onMockPolicyChanged:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "com.android.internal.telephony.signalMap.cybersenselocation.ICyberSenseLocationCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "com.android.internal.telephony.signalMap.cybersenselocation.ICyberSenseLocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 99
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

    .line 103
    const-string v0, "com.android.internal.telephony.signalMap.cybersenselocation.ICyberSenseLocationCallback"

    .line 104
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 115
    packed-switch p1, :pswitch_data_1

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 152
    :pswitch_1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 153
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->onMockPolicyChanged(Landroid/os/Bundle;)V

    .line 155
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_2
    sget-object v2, Landroid/telephony/CyberSenseCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->onCslCollectionDataChanged(Ljava/util/List;)V

    .line 147
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    :pswitch_3
    sget-object v2, Landroid/telephony/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 137
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->onCslNetworkResultChanged(Ljava/util/List;)V

    .line 139
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->onCslStateChanged(I)V

    .line 131
    goto :goto_0

    .line 120
    .end local v2    # "_arg0":I
    :pswitch_5
    sget-object v2, Landroid/telephony/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/LocationResult;

    .line 121
    .local v2, "_arg0":Landroid/telephony/LocationResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;->onCslResultChanged(Landroid/telephony/LocationResult;)V

    .line 123
    nop

    .line 162
    .end local v2    # "_arg0":Landroid/telephony/LocationResult;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
