.class public Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;
.super Ljava/lang/Object;
.source "MediaHTTPConnectionExtImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaHTTPConnectionExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NamedThreadFactory"
.end annotation


# instance fields
.field private final blacklist mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final blacklist mPrefix:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/MediaHTTPConnectionExtImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaHTTPConnectionExtImpl;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/MediaHTTPConnectionExtImpl;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->this$0:Landroid/media/MediaHTTPConnectionExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->mPrefix:Ljava/lang/String;

    .line 191
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->mDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 192
    return-void
.end method


# virtual methods
.method public blacklist namedWithPrefix(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 202
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 196
    iget-object v0, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->mDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 197
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 198
    return-object v0
.end method
