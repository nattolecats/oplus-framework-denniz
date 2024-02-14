.class Landroid/os/OplusRecoverySystem$2;
.super Landroid/content/BroadcastReceiver;
.source "OplusRecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/OplusRecoverySystem;->rebootFormatUserDataBackup(Landroid/content/Context;ZLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor blacklist <init>(Landroid/os/ConditionVariable;)V
    .locals 0

    .line 195
    iput-object p1, p0, Landroid/os/OplusRecoverySystem$2;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Landroid/os/OplusRecoverySystem$2;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 199
    return-void
.end method
