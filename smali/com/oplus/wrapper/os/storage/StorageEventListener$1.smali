.class Lcom/oplus/wrapper/os/storage/StorageEventListener$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/os/storage/StorageEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/wrapper/os/storage/StorageEventListener;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/wrapper/os/storage/StorageEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/wrapper/os/storage/StorageEventListener;

    .line 25
    iput-object p1, p0, Lcom/oplus/wrapper/os/storage/StorageEventListener$1;->this$0:Lcom/oplus/wrapper/os/storage/StorageEventListener;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageEventListener$1;->this$0:Lcom/oplus/wrapper/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/wrapper/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public blacklist onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "volumeInfo"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 33
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/StorageEventListener$1;->this$0:Lcom/oplus/wrapper/os/storage/StorageEventListener;

    new-instance v1, Lcom/oplus/wrapper/os/storage/VolumeInfo;

    invoke-direct {v1, p1}, Lcom/oplus/wrapper/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/oplus/wrapper/os/storage/StorageEventListener;->onVolumeStateChanged(Lcom/oplus/wrapper/os/storage/VolumeInfo;II)V

    .line 34
    return-void
.end method
