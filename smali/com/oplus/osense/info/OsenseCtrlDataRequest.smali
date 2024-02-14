.class public Lcom/oplus/osense/info/OsenseCtrlDataRequest;
.super Ljava/lang/Object;
.source "OsenseCtrlDataRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/osense/info/OsenseCtrlDataRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist cpuClusterNum:I

.field public whitelist cpuCoreCtrlData:[[I

.field public whitelist cpuCtrlType:[I

.field public whitelist cpuFreqCtrlData:[[I

.field public whitelist cpuMigData:[[I

.field public whitelist gpuClusterNum:I

.field public whitelist gpuCoreCtrlData:[[I

.field public whitelist gpuCtrlType:[I

.field public whitelist gpuFreqCtrlData:[[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/oplus/osense/info/OsenseCtrlDataRequest$1;

    invoke-direct {v0}, Lcom/oplus/osense/info/OsenseCtrlDataRequest$1;-><init>()V

    sput-object v0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    .line 25
    iput v0, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    .line 35
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    .line 25
    iput v0, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    const-class v0, I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    .line 86
    iget v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    add-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_4

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 90
    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCoreCtrlData:[[I

    .line 91
    iget v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    new-array v3, v1, [I

    aput v1, v3, v4

    aput v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuFreqCtrlData:[[I

    .line 92
    iget v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCtrlType:[I

    .line 93
    iget v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    new-array v3, v1, [I

    aput v1, v3, v4

    aput v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCoreCtrlData:[[I

    .line 94
    iget v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    new-array v3, v1, [I

    aput v1, v3, v4

    aput v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuFreqCtrlData:[[I

    .line 95
    iget v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCtrlType:[I

    .line 96
    iget v2, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    sub-int/2addr v2, v4

    new-array v3, v1, [I

    aput v1, v3, v4

    aput v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuMigData:[[I

    .line 97
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    iget v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v5

    .line 99
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v4

    .line 100
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v5

    .line 101
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v4

    .line 102
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCtrlType:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "m":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "m":I
    :goto_1
    iget v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    if-ge v0, v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v5

    .line 106
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v4

    .line 107
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v5

    .line 108
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v4

    .line 109
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCtrlType:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "m":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "m":I
    :goto_2
    iget v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuMigData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v5

    .line 113
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuMigData:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v4

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    .end local v0    # "m":I
    :cond_3
    return-void

    .line 87
    :cond_4
    :goto_3
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget v0, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    iget v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuCtrlType:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "m":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "m":I
    :goto_1
    iget v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuClusterNum:I

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCoreCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuFreqCtrlData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->gpuCtrlType:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "m":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "m":I
    :goto_2
    iget v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuClusterNum:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuMigData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v1, p0, Lcom/oplus/osense/info/OsenseCtrlDataRequest;->cpuMigData:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    .end local v0    # "m":I
    :cond_2
    return-void
.end method
