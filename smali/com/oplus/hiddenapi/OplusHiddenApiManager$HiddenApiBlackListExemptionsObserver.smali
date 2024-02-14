.class Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;
.super Landroid/database/ContentObserver;
.source "OplusHiddenApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/hiddenapi/OplusHiddenApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HiddenApiBlackListExemptionsObserver"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field final synthetic blacklist this$0:Lcom/oplus/hiddenapi/OplusHiddenApiManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/hiddenapi/OplusHiddenApiManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;->this$0:Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    .line 43
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 44
    iput-object p3, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 48
    iget-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_blacklist_exemptions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "exemptions":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;->this$0:Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->-$$Nest$fputmNeedSkipSetExemptions(Lcom/oplus/hiddenapi/OplusHiddenApiManager;Z)V

    .line 51
    return-void
.end method
