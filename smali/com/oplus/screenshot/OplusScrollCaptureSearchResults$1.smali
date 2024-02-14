.class Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$1;
.super Ljava/lang/Object;
.source "OplusScrollCaptureSearchResults.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    .line 59
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$1;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore execute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusScrollCaptureSearchResults"

    invoke-static {v1, v0}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
