.class public Landroid/net/wifi/OplusScanStatistics;
.super Ljava/lang/Object;
.source "OplusScanStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/OplusScanStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist packageName:Ljava/lang/String;

.field public whitelist packageUid:I

.field public whitelist requestStatus:Z

.field public whitelist requestTimestamp:J

.field public whitelist resultSize:I

.field public whitelist resultStatus:Z

.field public whitelist resultTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Landroid/net/wifi/OplusScanStatistics$1;

    invoke-direct {v0}, Landroid/net/wifi/OplusScanStatistics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/OplusScanStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/OplusScanStatistics;->packageName:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/OplusScanStatistics;->packageUid:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/OplusScanStatistics;->requestTimestamp:J

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/OplusScanStatistics;->requestStatus:Z

    .line 47
    iput-wide v0, p0, Landroid/net/wifi/OplusScanStatistics;->resultTimestamp:J

    .line 48
    iput-boolean v2, p0, Landroid/net/wifi/OplusScanStatistics;->resultStatus:Z

    .line 49
    iput v2, p0, Landroid/net/wifi/OplusScanStatistics;->resultSize:I

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/OplusScanStatistics;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/OplusScanStatistics;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/OplusScanStatistics;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/OplusScanStatistics;->packageName:Ljava/lang/String;

    .line 58
    iget v0, p1, Landroid/net/wifi/OplusScanStatistics;->packageUid:I

    iput v0, p0, Landroid/net/wifi/OplusScanStatistics;->packageUid:I

    .line 59
    iget-wide v0, p1, Landroid/net/wifi/OplusScanStatistics;->requestTimestamp:J

    iput-wide v0, p0, Landroid/net/wifi/OplusScanStatistics;->requestTimestamp:J

    .line 60
    iget-boolean v0, p1, Landroid/net/wifi/OplusScanStatistics;->requestStatus:Z

    iput-boolean v0, p0, Landroid/net/wifi/OplusScanStatistics;->requestStatus:Z

    .line 61
    iget-wide v0, p1, Landroid/net/wifi/OplusScanStatistics;->resultTimestamp:J

    iput-wide v0, p0, Landroid/net/wifi/OplusScanStatistics;->resultTimestamp:J

    .line 62
    iget-boolean v0, p1, Landroid/net/wifi/OplusScanStatistics;->resultStatus:Z

    iput-boolean v0, p0, Landroid/net/wifi/OplusScanStatistics;->resultStatus:Z

    .line 63
    iget v0, p1, Landroid/net/wifi/OplusScanStatistics;->resultSize:I

    iput v0, p0, Landroid/net/wifi/OplusScanStatistics;->resultSize:I

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/OplusScanStatistics;->packageUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "  request time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/OplusScanStatistics;->requestTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "  request status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/OplusScanStatistics;->requestStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "  result time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/OplusScanStatistics;->resultTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "  result status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/OplusScanStatistics;->resultStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "  result size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/OplusScanStatistics;->resultSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-object v0, p0, Landroid/net/wifi/OplusScanStatistics;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Landroid/net/wifi/OplusScanStatistics;->packageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Landroid/net/wifi/OplusScanStatistics;->requestTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-boolean v0, p0, Landroid/net/wifi/OplusScanStatistics;->requestStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    iget-wide v0, p0, Landroid/net/wifi/OplusScanStatistics;->resultTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-boolean v0, p0, Landroid/net/wifi/OplusScanStatistics;->resultStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    iget v0, p0, Landroid/net/wifi/OplusScanStatistics;->resultSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
