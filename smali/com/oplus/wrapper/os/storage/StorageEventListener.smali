.class public Lcom/oplus/wrapper/os/storage/StorageEventListener;
.super Ljava/lang/Object;
.source "StorageEventListener.java"


# instance fields
.field private final blacklist mStorageEventListener:Landroid/os/storage/StorageEventListener;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/oplus/wrapper/os/storage/StorageEventListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/wrapper/os/storage/StorageEventListener$1;-><init>(Lcom/oplus/wrapper/os/storage/StorageEventListener;)V

    iput-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageEventListener;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method


# virtual methods
.method blacklist getStorageEventListener()Landroid/os/storage/StorageEventListener;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageEventListener;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method public whitelist onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 58
    return-void
.end method

.method public whitelist onVolumeStateChanged(Lcom/oplus/wrapper/os/storage/VolumeInfo;II)V
    .locals 0
    .param p1, "vol"    # Lcom/oplus/wrapper/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 70
    return-void
.end method
