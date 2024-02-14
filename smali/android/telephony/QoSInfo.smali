.class public Landroid/telephony/QoSInfo;
.super Ljava/lang/Object;
.source "QoSInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/QoSInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist cellInfo:Landroid/telephony/CellInfo;

.field private blacklist nwType:I

.field private blacklist qoe:Z

.field private blacklist qos:I

.field private blacklist timeStamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Landroid/telephony/QoSInfo$1;

    invoke-direct {v0}, Landroid/telephony/QoSInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/QoSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/QoSInfo;->timeStamp:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/QoSInfo;->nwType:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/QoSInfo;->qos:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/QoSInfo;->qoe:Z

    .line 51
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    iput-object v0, p0, Landroid/telephony/QoSInfo;->cellInfo:Landroid/telephony/CellInfo;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellInfo;JIIZ)V
    .locals 0
    .param p1, "cellInfo"    # Landroid/telephony/CellInfo;
    .param p2, "timsStamp"    # J
    .param p4, "nwType"    # I
    .param p5, "qos"    # I
    .param p6, "qoe"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/telephony/QoSInfo;->cellInfo:Landroid/telephony/CellInfo;

    .line 33
    iput-wide p2, p0, Landroid/telephony/QoSInfo;->timeStamp:J

    .line 34
    iput p4, p0, Landroid/telephony/QoSInfo;->nwType:I

    .line 35
    iput p5, p0, Landroid/telephony/QoSInfo;->qos:I

    .line 36
    iput-boolean p6, p0, Landroid/telephony/QoSInfo;->qoe:Z

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCellInfo()Landroid/telephony/CellInfo;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/telephony/QoSInfo;->cellInfo:Landroid/telephony/CellInfo;

    return-object v0
.end method

.method public blacklist getNwType()I
    .locals 1

    .line 109
    iget v0, p0, Landroid/telephony/QoSInfo;->nwType:I

    return v0
.end method

.method public blacklist getQos()I
    .locals 1

    .line 119
    iget v0, p0, Landroid/telephony/QoSInfo;->qos:I

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    .line 99
    iget-wide v0, p0, Landroid/telephony/QoSInfo;->timeStamp:J

    return-wide v0
.end method

.method public blacklist isQoe()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Landroid/telephony/QoSInfo;->qoe:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QoSInfo{, timsStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/QoSInfo;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nwType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/QoSInfo;->nwType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/QoSInfo;->qos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qoe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/QoSInfo;->qoe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-wide v0, p0, Landroid/telephony/QoSInfo;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget v0, p0, Landroid/telephony/QoSInfo;->nwType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Landroid/telephony/QoSInfo;->qos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Landroid/telephony/QoSInfo;->qoe:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    iget-object v0, p0, Landroid/telephony/QoSInfo;->cellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method
