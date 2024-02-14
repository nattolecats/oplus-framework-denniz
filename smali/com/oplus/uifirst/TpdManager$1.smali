.class Lcom/oplus/uifirst/TpdManager$1;
.super Ljava/lang/Object;
.source "TpdManager.java"

# interfaces
.implements Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uifirst/TpdManager;->registerThermalListenerIfNeed(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/uifirst/TpdManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/uifirst/TpdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/uifirst/TpdManager;

    .line 130
    iput-object p1, p0, Lcom/oplus/uifirst/TpdManager$1;->this$0:Lcom/oplus/uifirst/TpdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist notifyThermalBroadCast(II)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "temp"    # I

    .line 144
    return-void
.end method

.method public whitelist thermalLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 133
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager$1;->this$0:Lcom/oplus/uifirst/TpdManager;

    invoke-static {v0}, Lcom/oplus/uifirst/TpdManager;->-$$Nest$fgetmLastThermalLevel(Lcom/oplus/uifirst/TpdManager;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager$1;->this$0:Lcom/oplus/uifirst/TpdManager;

    invoke-static {v0, p1}, Lcom/oplus/uifirst/TpdManager;->-$$Nest$fputmLastThermalLevel(Lcom/oplus/uifirst/TpdManager;I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager$1;->this$0:Lcom/oplus/uifirst/TpdManager;

    invoke-static {v0}, Lcom/oplus/uifirst/TpdManager;->-$$Nest$fgetmLastThermalLevel(Lcom/oplus/uifirst/TpdManager;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager$1;->this$0:Lcom/oplus/uifirst/TpdManager;

    invoke-static {v0}, Lcom/oplus/uifirst/TpdManager;->-$$Nest$fgetmLastThermalLevel(Lcom/oplus/uifirst/TpdManager;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/uifirst/TpdManager;->handleThermalEvent(II)V

    .line 138
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager$1;->this$0:Lcom/oplus/uifirst/TpdManager;

    invoke-static {v0, p1}, Lcom/oplus/uifirst/TpdManager;->-$$Nest$fputmLastThermalLevel(Lcom/oplus/uifirst/TpdManager;I)V

    .line 140
    :cond_1
    return-void
.end method
