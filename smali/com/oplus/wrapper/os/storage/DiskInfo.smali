.class public Lcom/oplus/wrapper/os/storage/DiskInfo;
.super Ljava/lang/Object;
.source "DiskInfo.java"


# instance fields
.field private final blacklist mDiskInfo:Landroid/os/storage/DiskInfo;


# direct methods
.method constructor blacklist <init>(Landroid/os/storage/DiskInfo;)V
    .locals 0
    .param p1, "diskInfo"    # Landroid/os/storage/DiskInfo;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oplus/wrapper/os/storage/DiskInfo;->mDiskInfo:Landroid/os/storage/DiskInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist isSd()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oplus/wrapper/os/storage/DiskInfo;->mDiskInfo:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    return v0
.end method
