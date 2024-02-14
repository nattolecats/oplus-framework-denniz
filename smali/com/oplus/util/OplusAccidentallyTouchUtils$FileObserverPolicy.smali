.class Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OplusAccidentallyTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusAccidentallyTouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private blacklist focusPath:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/oplus/util/OplusAccidentallyTouchUtils;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/util/OplusAccidentallyTouchUtils;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;->this$0:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    .line 355
    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 356
    iput-object p2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 357
    return-void
.end method


# virtual methods
.method public whitelist onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;->this$0:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->-$$Nest$fgetDEBUG(Lcom/oplus/util/OplusAccidentallyTouchUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "OplusAccidentallyTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileObserver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;->this$0:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->-$$Nest$fgetmAccidentallyTouchLock(Lcom/oplus/util/OplusAccidentallyTouchUtils;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_0
    const-string v1, "OplusAccidentallyTouch"

    const-string v2, "readConfigFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;->this$0:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    invoke-static {v1}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->-$$Nest$mreadConfigFile(Lcom/oplus/util/OplusAccidentallyTouchUtils;)V

    .line 368
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 370
    :cond_1
    :goto_0
    return-void
.end method
