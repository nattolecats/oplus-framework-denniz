.class Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OplusDeepThinkerManagerDecor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnableStateChangeReceiver"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 339
    const-string v0, "ManagerDecor"

    const-string v1, "receive USER_UNLOCKED broadcast!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {p1}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->getInstance(Landroid/content/Context;)Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->-$$Nest$monApplicationEnabled(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;)V

    .line 341
    return-void
.end method
