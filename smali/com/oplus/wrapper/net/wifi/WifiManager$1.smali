.class Lcom/oplus/wrapper/net/wifi/WifiManager$1;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/wrapper/net/wifi/WifiManager;->lambda$getActionListener$0$com-oplus-wrapper-net-wifi-WifiManager(Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)Landroid/net/wifi/WifiManager$ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/wrapper/net/wifi/WifiManager;

.field final synthetic blacklist val$wrapperActionListener:Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/wrapper/net/wifi/WifiManager;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/wrapper/net/wifi/WifiManager;

    .line 98
    iput-object p1, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$1;->this$0:Lcom/oplus/wrapper/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$1;->val$wrapperActionListener:Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 106
    iget-object v0, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$1;->val$wrapperActionListener:Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    invoke-interface {v0, p1}, Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    .line 107
    return-void
.end method

.method public whitelist onSuccess()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/oplus/wrapper/net/wifi/WifiManager$1;->val$wrapperActionListener:Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    invoke-interface {v0}, Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;->onSuccess()V

    .line 102
    return-void
.end method
