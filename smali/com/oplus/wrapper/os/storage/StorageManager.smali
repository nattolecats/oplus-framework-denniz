.class public Lcom/oplus/wrapper/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# instance fields
.field private final blacklist mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor whitelist <init>(Landroid/os/storage/StorageManager;)V
    .locals 0
    .param p1, "storageManager"    # Landroid/os/storage/StorageManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/oplus/wrapper/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 43
    return-void
.end method

.method public static whitelist isFileEncryptedNativeOnly()Z
    .locals 1

    .line 95
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVolumePaths()[Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVolumes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/wrapper/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v1, "volumeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/wrapper/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 108
    .local v3, "volumeInfo":Landroid/os/storage/VolumeInfo;
    new-instance v4, Lcom/oplus/wrapper/os/storage/VolumeInfo;

    invoke-direct {v4, v3}, Lcom/oplus/wrapper/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v3    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method

.method public whitelist registerListener(Lcom/oplus/wrapper/os/storage/StorageEventListener;)V
    .locals 2
    .param p1, "storageEventListener"    # Lcom/oplus/wrapper/os/storage/StorageEventListener;

    .line 53
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Lcom/oplus/wrapper/os/storage/StorageEventListener;->getStorageEventListener()Landroid/os/storage/StorageEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 54
    return-void
.end method

.method public whitelist unregisterListener(Lcom/oplus/wrapper/os/storage/StorageEventListener;)V
    .locals 2
    .param p1, "storageEventListener"    # Lcom/oplus/wrapper/os/storage/StorageEventListener;

    .line 64
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Lcom/oplus/wrapper/os/storage/StorageEventListener;->getStorageEventListener()Landroid/os/storage/StorageEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 65
    return-void
.end method
