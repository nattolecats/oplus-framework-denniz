.class public Lcom/oplus/wrapper/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"


# instance fields
.field private final blacklist mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor whitelist <init>(Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oplus/wrapper/os/storage/StorageVolume;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getFatVolumeId()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageVolume;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getFatVolumeId()I

    move-result v0

    return v0
.end method

.method public whitelist getPath()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageVolume;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
