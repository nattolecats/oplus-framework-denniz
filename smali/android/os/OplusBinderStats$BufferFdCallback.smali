.class Landroid/os/OplusBinderStats$BufferFdCallback;
.super Ljava/lang/Object;
.source "OplusBinderStats.java"

# interfaces
.implements Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$getBufferFdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusBinderStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferFdCallback"
.end annotation


# instance fields
.field private blacklist mNativeHandle:Landroid/os/NativeHandle;

.field private blacklist mSize:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist getFd()I
    .locals 2

    .line 126
    iget-object v0, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mNativeHandle:Landroid/os/NativeHandle;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mNativeHandle:Landroid/os/NativeHandle;

    .line 128
    invoke-virtual {v0}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mNativeHandle:Landroid/os/NativeHandle;

    invoke-virtual {v0}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0

    .line 131
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSize()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mSize:I

    return v0
.end method

.method public blacklist onValues(Landroid/os/NativeHandle;I)V
    .locals 2
    .param p1, "shared_fd"    # Landroid/os/NativeHandle;
    .param p2, "size"    # I

    .line 114
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/os/NativeHandle;->dup()Landroid/os/NativeHandle;

    move-result-object v1

    iput-object v1, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mNativeHandle:Landroid/os/NativeHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mNativeHandle:Landroid/os/NativeHandle;

    .line 119
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 121
    :cond_0
    iput-object v0, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mNativeHandle:Landroid/os/NativeHandle;

    .line 123
    :goto_1
    iput p2, p0, Landroid/os/OplusBinderStats$BufferFdCallback;->mSize:I

    .line 124
    return-void
.end method
