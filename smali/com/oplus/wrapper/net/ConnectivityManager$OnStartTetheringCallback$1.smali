.class Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;

    .line 109
    iput-object p1, p0, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback$1;->this$0:Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTetheringFailed()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback$1;->this$0:Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-virtual {v0}, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 118
    return-void
.end method

.method public whitelist onTetheringStarted()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback$1;->this$0:Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-virtual {v0}, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 113
    return-void
.end method
