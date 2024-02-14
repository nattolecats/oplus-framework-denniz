.class public Landroid/os/storage/StorageVolumeExtImpl;
.super Ljava/lang/Object;
.source "StorageVolumeExtImpl.java"

# interfaces
.implements Landroid/os/storage/IStorageVolumeExt;


# instance fields
.field private blacklist mBase:Landroid/os/storage/StorageVolume;

.field public blacklist mReadonlyType:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v0, p1

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Landroid/os/storage/StorageVolumeExtImpl;->mBase:Landroid/os/storage/StorageVolume;

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/Object;)V
    .locals 3
    .param p1, "pw"    # Ljava/lang/Object;

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/IndentingPrintWriter;

    iget v1, p0, Landroid/os/storage/StorageVolumeExtImpl;->mReadonlyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mReadonlyType"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 55
    return-void
.end method

.method public blacklist getReadOnlyType()I
    .locals 1

    .line 42
    iget v0, p0, Landroid/os/storage/StorageVolumeExtImpl;->mReadonlyType:I

    return v0
.end method

.method public blacklist init(I)V
    .locals 0
    .param p1, "readonlyType"    # I

    .line 36
    iput p1, p0, Landroid/os/storage/StorageVolumeExtImpl;->mReadonlyType:I

    .line 37
    return-void
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolumeExtImpl;->mReadonlyType:I

    .line 51
    return-void
.end method

.method public blacklist setReadOnlyType(I)V
    .locals 0
    .param p1, "readonlyType"    # I

    .line 46
    iput p1, p0, Landroid/os/storage/StorageVolumeExtImpl;->mReadonlyType:I

    .line 47
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget v0, p0, Landroid/os/storage/StorageVolumeExtImpl;->mReadonlyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
