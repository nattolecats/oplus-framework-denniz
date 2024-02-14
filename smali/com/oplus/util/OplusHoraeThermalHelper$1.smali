.class Lcom/oplus/util/OplusHoraeThermalHelper$1;
.super Ljava/lang/Object;
.source "OplusHoraeThermalHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusHoraeThermalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusHoraeThermalHelper;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/util/OplusHoraeThermalHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/util/OplusHoraeThermalHelper;

    .line 108
    iput-object p1, p0, Lcom/oplus/util/OplusHoraeThermalHelper$1;->this$0:Lcom/oplus/util/OplusHoraeThermalHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 111
    const-string v0, "HoraeHelper"

    const-string v1, "HoraeProxyUtils binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/oplus/util/OplusHoraeThermalHelper$1;->this$0:Lcom/oplus/util/OplusHoraeThermalHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->-$$Nest$fputmRemote(Lcom/oplus/util/OplusHoraeThermalHelper;Landroid/os/IBinder;)V

    .line 113
    iget-object v0, p0, Lcom/oplus/util/OplusHoraeThermalHelper$1;->this$0:Lcom/oplus/util/OplusHoraeThermalHelper;

    invoke-static {v0}, Lcom/oplus/util/OplusHoraeThermalHelper;->-$$Nest$fgetmListenerMap(Lcom/oplus/util/OplusHoraeThermalHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 114
    return-void
.end method
