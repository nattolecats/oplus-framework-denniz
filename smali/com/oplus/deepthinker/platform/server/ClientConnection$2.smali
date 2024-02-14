.class Lcom/oplus/deepthinker/platform/server/ClientConnection$2;
.super Ljava/lang/Object;
.source "ClientConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/platform/server/ClientConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/deepthinker/platform/server/ClientConnection;

    .line 84
    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$2;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 87
    const-string v0, "ClientConnection"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$2;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$mserviceDied(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V

    .line 90
    return-void
.end method
