.class Landroid/telecom/TelecomServiceExt$1;
.super Lcom/android/internal/telecom/ITelecomServiceExt$Stub;
.source "TelecomServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/TelecomServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/TelecomServiceExt;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/TelecomServiceExt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/TelecomServiceExt;

    .line 68
    iput-object p1, p0, Landroid/telecom/TelecomServiceExt$1;->this$0:Landroid/telecom/TelecomServiceExt;

    invoke-direct {p0}, Lcom/android/internal/telecom/ITelecomServiceExt$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cancelMissedCallsNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 71
    iget-object v0, p0, Landroid/telecom/TelecomServiceExt$1;->this$0:Landroid/telecom/TelecomServiceExt;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/TelecomServiceExt;->cancelMissedCallsNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
