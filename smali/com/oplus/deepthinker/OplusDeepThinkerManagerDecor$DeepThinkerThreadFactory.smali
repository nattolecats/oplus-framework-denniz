.class Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;
.super Ljava/lang/Object;
.source "OplusDeepThinkerManagerDecor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeepThinkerThreadFactory"
.end annotation


# instance fields
.field private final blacklist mNamePrefix:Ljava/lang/String;

.field private final blacklist mNextId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic blacklist this$0:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;Ljava/lang/String;)V
    .locals 1
    .param p2, "whatFeatureOfGroup"    # Ljava/lang/String;

    .line 348
    iput-object p1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;->this$0:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;->mNextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 349
    iput-object p2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;->mNamePrefix:Ljava/lang/String;

    .line 350
    return-void
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;->mNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;->mNextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-object v7
.end method
