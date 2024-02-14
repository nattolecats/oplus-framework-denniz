.class Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;
.super Ljava/lang/Thread;
.source "OplusMMAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/atlas/OplusMMAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AtlasServiceThread"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/atlas/OplusMMAtlasService;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/atlas/OplusMMAtlasService;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    .line 115
    const-string p1, "AtlasServiceThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 121
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 123
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    new-instance v2, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;

    iget-object v3, p0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;-><init>(Lcom/oplus/atlas/OplusMMAtlasService;Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler-IA;)V

    invoke-static {v1, v2}, Lcom/oplus/atlas/OplusMMAtlasService;->-$$Nest$fputmAtlasHandler(Lcom/oplus/atlas/OplusMMAtlasService;Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;)V

    .line 127
    iget-object v1, p0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 132
    return-void

    .line 128
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
