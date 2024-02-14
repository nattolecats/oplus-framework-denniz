.class public Landroid/os/storage/VolumeInfoExtImpl;
.super Ljava/lang/Object;
.source "VolumeInfoExtImpl.java"

# interfaces
.implements Landroid/os/storage/IVolumeInfoExt;


# instance fields
.field public blacklist hasMountedStateBrocasted:Z

.field private blacklist mBase:Landroid/os/storage/VolumeInfo;

.field public blacklist readOnlyType:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->readOnlyType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->hasMountedStateBrocasted:Z

    .line 37
    move-object v0, p1

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iput-object v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->mBase:Landroid/os/storage/VolumeInfo;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/Object;)V
    .locals 3
    .param p1, "pw"    # Ljava/lang/Object;

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/IndentingPrintWriter;

    iget v1, p0, Landroid/os/storage/VolumeInfoExtImpl;->readOnlyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "readOnlyType"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v1, p0, Landroid/os/storage/VolumeInfoExtImpl;->hasMountedStateBrocasted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasMountedStateBrocasted"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 74
    return-void
.end method

.method public blacklist getReadOnlyType()I
    .locals 1

    .line 45
    iget v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->readOnlyType:I

    return v0
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->readOnlyType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->hasMountedStateBrocasted:Z

    .line 61
    return-void
.end method

.method public blacklist setReadOnlyTypeValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 51
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iput p1, p0, Landroid/os/storage/VolumeInfoExtImpl;->readOnlyType:I

    .line 56
    return-void

    .line 52
    :cond_1
    :goto_0
    const-string v0, "VolumeInfoExtImpl"

    const-string v1, "value illegal, must in [-1, 2]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->readOnlyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-boolean v0, p0, Landroid/os/storage/VolumeInfoExtImpl;->hasMountedStateBrocasted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 66
    return-void
.end method
