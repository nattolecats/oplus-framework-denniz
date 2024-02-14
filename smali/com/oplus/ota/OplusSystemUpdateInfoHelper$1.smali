.class Lcom/oplus/ota/OplusSystemUpdateInfoHelper$1;
.super Ljava/lang/Object;
.source "OplusSystemUpdateInfoHelper.java"

# interfaces
.implements Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->initUpdateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/ota/OplusSystemUpdateInfoHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    .line 297
    iput-object p1, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper$1;->this$0:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 301
    :try_start_0
    const-string v0, "OplusSystemUpdateInfoHelper"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper$1;->this$0:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    invoke-static {v0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->-$$Nest$mdealConfigFromProvider(Lcom/oplus/ota/OplusSystemUpdateInfoHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
