.class public final synthetic Lcom/oplus/wrapper/net/wifi/WifiManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/wrapper/net/wifi/WifiManager;

.field public final synthetic blacklist f$1:Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/wrapper/net/wifi/WifiManager;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/wrapper/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$$ExternalSyntheticLambda0;->f$1:Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/wrapper/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$$ExternalSyntheticLambda0;->f$1:Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    check-cast p1, Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/wrapper/net/wifi/WifiManager;->lambda$getActionListener$0$com-oplus-wrapper-net-wifi-WifiManager(Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object p1

    return-object p1
.end method
