.class public Landroid/os/olc/ExceptionInfo;
.super Ljava/lang/Object;
.source "ExceptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/olc/ExceptionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAtomicLogs:J

.field private blacklist mExceptionId:I

.field private blacklist mExceptionLevel:I

.field private blacklist mExceptionType:I

.field private blacklist mLogParmas:Ljava/lang/String;

.field private blacklist mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Landroid/os/olc/ExceptionInfo$1;

    invoke-direct {v0}, Landroid/os/olc/ExceptionInfo$1;-><init>()V

    sput-object v0, Landroid/os/olc/ExceptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
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

    iput-wide v0, p0, Landroid/os/olc/ExceptionInfo;->mTime:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionLevel:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/olc/ExceptionInfo;->mAtomicLogs:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAtomicLogs()J
    .locals 2

    .line 178
    iget-wide v0, p0, Landroid/os/olc/ExceptionInfo;->mAtomicLogs:J

    return-wide v0
.end method

.method public blacklist getExceptionLevel()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionLevel:I

    return v0
.end method

.method public blacklist getExceptionType()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionType:I

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 90
    iget v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionId:I

    return v0
.end method

.method public blacklist getLogParmas()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/os/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTime()J
    .locals 2

    .line 112
    iget-wide v0, p0, Landroid/os/olc/ExceptionInfo;->mTime:J

    return-wide v0
.end method

.method public blacklist setAtomicLogs(J)V
    .locals 0
    .param p1, "atomicLogs"    # J

    .line 189
    iput-wide p1, p0, Landroid/os/olc/ExceptionInfo;->mAtomicLogs:J

    .line 190
    return-void
.end method

.method public blacklist setExceptionLevel(I)V
    .locals 0
    .param p1, "exceptionLevel"    # I

    .line 167
    iput p1, p0, Landroid/os/olc/ExceptionInfo;->mExceptionLevel:I

    .line 168
    return-void
.end method

.method public blacklist setExceptionType(I)V
    .locals 0
    .param p1, "exceptionType"    # I

    .line 145
    iput p1, p0, Landroid/os/olc/ExceptionInfo;->mExceptionType:I

    .line 146
    return-void
.end method

.method public blacklist setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 101
    iput p1, p0, Landroid/os/olc/ExceptionInfo;->mExceptionId:I

    .line 102
    return-void
.end method

.method public blacklist setLogParmas(Ljava/lang/String;)V
    .locals 0
    .param p1, "logParmas"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Landroid/os/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public blacklist setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 123
    iput-wide p1, p0, Landroid/os/olc/ExceptionInfo;->mTime:J

    .line 124
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 57
    iget-wide v0, p0, Landroid/os/olc/ExceptionInfo;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/os/olc/ExceptionInfo;->mExceptionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-wide v0, p0, Landroid/os/olc/ExceptionInfo;->mAtomicLogs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-object v0, p0, Landroid/os/olc/ExceptionInfo;->mLogParmas:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
