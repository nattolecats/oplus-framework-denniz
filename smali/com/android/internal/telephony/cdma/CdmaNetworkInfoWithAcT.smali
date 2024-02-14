.class public Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;
.super Ljava/lang/Object;
.source "CdmaNetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist nAct:I

.field blacklist nPriority:I

.field blacklist operatorAlphaName:Ljava/lang/String;

.field blacklist operatorNumeric:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "nPriority"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nAct:I

    .line 89
    iput p4, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nPriority:I

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessTechnology()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nAct:I

    return v0
.end method

.method public blacklist getOperatorAlphaName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPriority()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nPriority:I

    return v0
.end method

.method public blacklist setAccessTechnology(I)V
    .locals 0
    .param p1, "nAct"    # I

    .line 76
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nAct:I

    .line 77
    return-void
.end method

.method public blacklist setOperatorAlphaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorAlphaName"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public blacklist setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public blacklist setPriority(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .line 81
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nPriority:I

    .line 82
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaNetworkInfoWithAcT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nAct:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;->nPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void
.end method
