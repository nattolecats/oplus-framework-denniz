.class Lcom/oplus/network/OlkManager$EventChangeCb;
.super Lcom/oplus/network/IOlkEventChange$Stub;
.source "OlkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OlkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventChangeCb"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/network/OlkManager;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/network/OlkManager;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/oplus/network/OlkManager$EventChangeCb;->this$0:Lcom/oplus/network/OlkManager;

    invoke-direct {p0}, Lcom/oplus/network/IOlkEventChange$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/network/OlkManager;Lcom/oplus/network/OlkManager$EventChangeCb-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/network/OlkManager$EventChangeCb;-><init>(Lcom/oplus/network/OlkManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 139
    iget-object v0, p0, Lcom/oplus/network/OlkManager$EventChangeCb;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v0}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetmCacheCallback(Lcom/oplus/network/OlkManager;)Lcom/oplus/network/OlkManager$IOlkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOlkEventChange data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OlkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/oplus/network/OlkManager$EventChangeCb;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v0}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetmCacheCallback(Lcom/oplus/network/OlkManager;)Lcom/oplus/network/OlkManager$IOlkCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/network/OlkManager$IOlkCallback;->onChanged(Landroid/os/Bundle;)V

    .line 143
    :cond_0
    return-void
.end method
