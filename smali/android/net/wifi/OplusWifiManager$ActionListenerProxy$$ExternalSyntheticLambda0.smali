.class public final synthetic Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;

    iput p2, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;

    iget v1, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->lambda$onFailure$1$android-net-wifi-OplusWifiManager$ActionListenerProxy(I)V

    return-void
.end method
