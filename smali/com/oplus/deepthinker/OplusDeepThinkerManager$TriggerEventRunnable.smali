.class Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;
.super Ljava/lang/Object;
.source "OplusDeepThinkerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/OplusDeepThinkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TriggerEventRunnable"
.end annotation


# instance fields
.field blacklist mEventID:I

.field blacklist mExtra:Landroid/os/Bundle;

.field blacklist mPkg:Ljava/lang/String;

.field blacklist mUid:I

.field final synthetic blacklist this$0:Lcom/oplus/deepthinker/OplusDeepThinkerManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/deepthinker/OplusDeepThinkerManager;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/deepthinker/OplusDeepThinkerManager;
    .param p2, "eventID"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "extra"    # Landroid/os/Bundle;

    .line 451
    iput-object p1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->this$0:Lcom/oplus/deepthinker/OplusDeepThinkerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput p2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mEventID:I

    .line 453
    iput p3, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mUid:I

    .line 454
    iput-object p4, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mPkg:Ljava/lang/String;

    .line 455
    iput-object p5, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mExtra:Landroid/os/Bundle;

    .line 456
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 460
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->this$0:Lcom/oplus/deepthinker/OplusDeepThinkerManager;

    iget v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mEventID:I

    iget v2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mUid:I

    iget-object v3, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->triggerHookEvent(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 461
    return-void
.end method
