.class Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OplusReflectDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusReflectDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private blacklist focusPath:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/oplus/util/OplusReflectDataUtils;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/util/OplusReflectDataUtils;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;->this$0:Lcom/oplus/util/OplusReflectDataUtils;

    .line 232
    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 233
    iput-object p2, p0, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public whitelist onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 238
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/oplus/oplusos/oplusdirect/sys_direct_widget_config_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;->this$0:Lcom/oplus/util/OplusReflectDataUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusReflectDataUtils;->-$$Nest$fgetmAccidentallyReflectLock(Lcom/oplus/util/OplusReflectDataUtils;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;->this$0:Lcom/oplus/util/OplusReflectDataUtils;

    invoke-static {v1}, Lcom/oplus/util/OplusReflectDataUtils;->-$$Nest$mreadConfigFile(Lcom/oplus/util/OplusReflectDataUtils;)V

    .line 242
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 245
    :cond_0
    :goto_0
    return-void
.end method
