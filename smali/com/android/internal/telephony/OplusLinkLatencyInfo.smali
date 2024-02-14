.class public Lcom/android/internal/telephony/OplusLinkLatencyInfo;
.super Ljava/lang/Object;
.source "OplusLinkLatencyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/OplusLinkLatencyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEffectiveDownlink:J

.field private blacklist mEffectiveUplink:J

.field private blacklist mStatus:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/internal/telephony/OplusLinkLatencyInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OplusLinkLatencyInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 7

    .line 32
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/OplusLinkLatencyInfo;-><init>(JJJ)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(JJJ)V
    .locals 0
    .param p1, "status"    # J
    .param p3, "effectiveUplink"    # J
    .param p5, "effectiveDownlink"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mStatus:J

    .line 37
    iput-wide p3, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveUplink:J

    .line 38
    iput-wide p5, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveDownlink:J

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mStatus:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveUplink:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveDownlink:J

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEffectiveDownlink()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveDownlink:J

    return-wide v0
.end method

.method public blacklist getEffectiveUplink()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveUplink:J

    return-wide v0
.end method

.method public blacklist getStatus()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mStatus:J

    return-wide v0
.end method

.method public blacklist setEffectiveDownlink(J)J
    .locals 0
    .param p1, "downlink"    # J

    .line 68
    iput-wide p1, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveDownlink:J

    return-wide p1
.end method

.method public blacklist setEffectiveUplink(J)J
    .locals 0
    .param p1, "uplink"    # J

    .line 60
    iput-wide p1, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveUplink:J

    return-wide p1
.end method

.method public blacklist setStatus(J)J
    .locals 0
    .param p1, "status"    # J

    .line 52
    iput-wide p1, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mStatus:J

    return-wide p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mStatus:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveUplink:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-wide v0, p0, Lcom/android/internal/telephony/OplusLinkLatencyInfo;->mEffectiveDownlink:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    return-void
.end method
