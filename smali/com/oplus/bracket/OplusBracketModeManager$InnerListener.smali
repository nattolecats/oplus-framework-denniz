.class Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;
.super Lcom/oplus/bracket/IOplusBracketModeChangedListener$Stub;
.source "OplusBracketModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/bracket/OplusBracketModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/bracket/OplusBracketModeManager;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/bracket/OplusBracketModeManager;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;->this$0:Lcom/oplus/bracket/OplusBracketModeManager;

    invoke-direct {p0}, Lcom/oplus/bracket/IOplusBracketModeChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/bracket/OplusBracketModeManager;Lcom/oplus/bracket/OplusBracketModeManager$InnerListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;-><init>(Lcom/oplus/bracket/OplusBracketModeManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindService(Lcom/oplus/bracket/IOplusBracketWindowObserver;)V
    .locals 2
    .param p1, "oplusBracketWindowObserver"    # Lcom/oplus/bracket/IOplusBracketWindowObserver;

    .line 97
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;->this$0:Lcom/oplus/bracket/OplusBracketModeManager;

    invoke-static {v0, p1}, Lcom/oplus/bracket/OplusBracketModeManager;->-$$Nest$fputmObserver(Lcom/oplus/bracket/OplusBracketModeManager;Lcom/oplus/bracket/IOplusBracketWindowObserver;)V

    .line 98
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;->this$0:Lcom/oplus/bracket/OplusBracketModeManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/bracket/OplusBracketModeManager;->onSurfaceViewShow(I)V

    .line 99
    return-void
.end method

.method public whitelist onBracketModeChanged(I)V
    .locals 2
    .param p1, "type"    # I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBracketModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/bracket/OplusBracketModeManager;->modeChangeReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBracketModeManager"

    invoke-static {v1, v0}, Lcom/oplus/bracket/OplusBracketLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;->this$0:Lcom/oplus/bracket/OplusBracketModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/bracket/OplusBracketModeManager;->-$$Nest$fputmTouchModeEnable(Lcom/oplus/bracket/OplusBracketModeManager;Z)V

    .line 84
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;->this$0:Lcom/oplus/bracket/OplusBracketModeManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/bracket/OplusBracketModeManager;->-$$Nest$fputmTouchModeEnable(Lcom/oplus/bracket/OplusBracketModeManager;Z)V

    .line 81
    nop

    .line 88
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onBracketRegionChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 93
    return-void
.end method

.method public whitelist onUnBindService(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 103
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;->this$0:Lcom/oplus/bracket/OplusBracketModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/bracket/OplusBracketModeManager;->-$$Nest$fputmObserver(Lcom/oplus/bracket/OplusBracketModeManager;Lcom/oplus/bracket/IOplusBracketWindowObserver;)V

    .line 104
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;->this$0:Lcom/oplus/bracket/OplusBracketModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/bracket/OplusBracketModeManager;->-$$Nest$fputmUpdateDCS(Lcom/oplus/bracket/OplusBracketModeManager;Z)V

    .line 105
    return-void
.end method
