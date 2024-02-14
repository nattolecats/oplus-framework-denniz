.class public Lcom/oplus/wrapper/os/storage/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"


# instance fields
.field private final blacklist mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor blacklist <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "volumeInfo"    # Landroid/os/storage/VolumeInfo;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oplus/wrapper/os/storage/VolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getDisk()Lcom/oplus/wrapper/os/storage/DiskInfo;
    .locals 2

    .line 68
    new-instance v0, Lcom/oplus/wrapper/os/storage/DiskInfo;

    iget-object v1, p0, Lcom/oplus/wrapper/os/storage/VolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/wrapper/os/storage/DiskInfo;-><init>(Landroid/os/storage/DiskInfo;)V

    return-object v0
.end method

.method public whitelist getFsUuid()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/VolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/VolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPath()Ljava/io/File;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/VolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStringPath()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/VolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setStringPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/VolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 47
    return-void
.end method
