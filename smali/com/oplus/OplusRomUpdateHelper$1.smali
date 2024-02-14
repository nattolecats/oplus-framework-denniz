.class Lcom/oplus/OplusRomUpdateHelper$1;
.super Ljava/lang/Object;
.source "OplusRomUpdateHelper.java"

# interfaces
.implements Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/OplusRomUpdateHelper;->initUpdateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/OplusRomUpdateHelper;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/OplusRomUpdateHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/OplusRomUpdateHelper;

    .line 116
    iput-object p1, p0, Lcom/oplus/OplusRomUpdateHelper$1;->this$0:Lcom/oplus/OplusRomUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    :try_start_0
    invoke-static {}, Lcom/oplus/OplusRomUpdateHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "OplusRomUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/OplusRomUpdateHelper$1;->this$0:Lcom/oplus/OplusRomUpdateHelper;

    invoke-virtual {v2}, Lcom/oplus/OplusRomUpdateHelper;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper$1;->this$0:Lcom/oplus/OplusRomUpdateHelper;

    invoke-virtual {v0}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateFromProvider()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
