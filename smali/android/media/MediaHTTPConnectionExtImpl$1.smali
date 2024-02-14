.class Landroid/media/MediaHTTPConnectionExtImpl$1;
.super Ljava/lang/Object;
.source "MediaHTTPConnectionExtImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaHTTPConnectionExtImpl;->asyncSeekTo(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaHTTPConnectionExtImpl;

.field final synthetic blacklist val$offset:J


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaHTTPConnectionExtImpl;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaHTTPConnectionExtImpl;

    .line 159
    iput-object p1, p0, Landroid/media/MediaHTTPConnectionExtImpl$1;->this$0:Landroid/media/MediaHTTPConnectionExtImpl;

    iput-wide p2, p0, Landroid/media/MediaHTTPConnectionExtImpl$1;->val$offset:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/media/MediaHTTPConnectionExtImpl$1;->this$0:Landroid/media/MediaHTTPConnectionExtImpl;

    invoke-static {v0}, Landroid/media/MediaHTTPConnectionExtImpl;->-$$Nest$fgetmMediaHTTPConnection(Landroid/media/MediaHTTPConnectionExtImpl;)Landroid/media/MediaHTTPConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaHTTPConnection;->getWrapper()Landroid/media/IMediaHTTPConnectionWrapper;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/MediaHTTPConnectionExtImpl$1;->val$offset:J

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaHTTPConnectionWrapper;->seekTo(J)V

    .line 163
    const-string v0, "MediaHTTPConnectionExtImpl"

    const-string v1, "asyncSeekTo-- return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnectionExtImpl$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
