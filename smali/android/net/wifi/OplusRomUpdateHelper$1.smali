.class Landroid/net/wifi/OplusRomUpdateHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "OplusRomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/OplusRomUpdateHelper;->initUpdateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/OplusRomUpdateHelper;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/OplusRomUpdateHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/OplusRomUpdateHelper;

    .line 138
    iput-object p1, p0, Landroid/net/wifi/OplusRomUpdateHelper$1;->this$0:Landroid/net/wifi/OplusRomUpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 141
    invoke-static {}, Landroid/net/wifi/OplusRomUpdateHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OplusRomUpdateHelper$1;->this$0:Landroid/net/wifi/OplusRomUpdateHelper;

    invoke-virtual {v1}, Landroid/net/wifi/OplusRomUpdateHelper;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onReceive intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusRomUpdateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    if-eqz p2, :cond_1

    .line 145
    const-string v0, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/OplusRomUpdateHelper$1;->this$0:Landroid/net/wifi/OplusRomUpdateHelper;

    invoke-static {v1}, Landroid/net/wifi/OplusRomUpdateHelper;->-$$Nest$fgetmFilterName(Landroid/net/wifi/OplusRomUpdateHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Landroid/net/wifi/OplusRomUpdateHelper$1;->this$0:Landroid/net/wifi/OplusRomUpdateHelper;

    invoke-virtual {v1}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateFromProvider()V

    .line 150
    .end local v0    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
