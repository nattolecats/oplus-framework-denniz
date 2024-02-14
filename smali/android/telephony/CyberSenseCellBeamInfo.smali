.class public Landroid/telephony/CyberSenseCellBeamInfo;
.super Ljava/lang/Object;
.source "CyberSenseCellBeamInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CyberSenseCellBeamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist UNAVAILABLE:I = -0x1


# instance fields
.field private blacklist mRsrp:I

.field private blacklist mRsrq:I

.field private blacklist mSsbIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const-class v0, Landroid/telephony/CyberSenseCellBeamInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CyberSenseCellBeamInfo;->TAG:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/telephony/CyberSenseCellBeamInfo$1;

    invoke-direct {v0}, Landroid/telephony/CyberSenseCellBeamInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CyberSenseCellBeamInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0
    .param p1, "ssbIndex"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    .line 76
    iput p2, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    .line 77
    iput p3, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/CyberSenseCellBeamInfo;

    .line 148
    .local v2, "that":Landroid/telephony/CyberSenseCellBeamInfo;
    iget v3, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    iget v4, v2, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    iget v4, v2, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    iget v4, v2, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 145
    .end local v2    # "that":Landroid/telephony/CyberSenseCellBeamInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getRsrp()I
    .locals 1

    .line 202
    iget v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    return v0
.end method

.method public blacklist getRsrq()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    return v0
.end method

.method public blacklist getSsbIndex()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setRsrp(I)V
    .locals 0
    .param p1, "rsrp"    # I

    .line 212
    iput p1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    .line 213
    return-void
.end method

.method public blacklist setRsrq(I)V
    .locals 0
    .param p1, "rsrq"    # I

    .line 231
    iput p1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    .line 232
    return-void
.end method

.method public blacklist setSsbIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 193
    iput p1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    .line 194
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CyberSenseCellBeamInfo{mSsbIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mSsbIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/telephony/CyberSenseCellBeamInfo;->mRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return-void
.end method
