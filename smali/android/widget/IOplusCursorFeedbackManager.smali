.class public interface abstract Landroid/widget/IOplusCursorFeedbackManager;
.super Ljava/lang/Object;
.source "IOplusCursorFeedbackManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/widget/IOplusCursorFeedbackManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/widget/IOplusCursorFeedbackManager$1;

    invoke-direct {v0}, Landroid/widget/IOplusCursorFeedbackManager$1;-><init>()V

    sput-object v0, Landroid/widget/IOplusCursorFeedbackManager;->DEFAULT:Landroid/widget/IOplusCursorFeedbackManager;

    return-void
.end method


# virtual methods
.method public blacklist editorDetachFromWindow(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 83
    return-void
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 33
    invoke-interface {p0}, Landroid/widget/IOplusCursorFeedbackManager;->getDefault()Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/widget/IOplusCursorFeedbackManager;
    .locals 1

    .line 45
    sget-object v0, Landroid/widget/IOplusCursorFeedbackManager;->DEFAULT:Landroid/widget/IOplusCursorFeedbackManager;

    return-object v0
.end method

.method public blacklist getExtraCursorWidth(Landroid/widget/Editor;)I
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtraLeftOffset(Landroid/widget/Editor;)I
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handleKeyCodeDelDown(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 75
    return-void
.end method

.method public blacklist handleKeyCodeDelUp(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 79
    return-void
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 40
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCursorFeedbackManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    return-void
.end method

.method public blacklist newInstance()Landroid/widget/IOplusCursorFeedbackManager;
    .locals 1

    .line 48
    sget-object v0, Landroid/widget/IOplusCursorFeedbackManager;->DEFAULT:Landroid/widget/IOplusCursorFeedbackManager;

    return-object v0
.end method

.method public blacklist refreshCursorRenderTime(Landroid/widget/Editor;)Z
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startCursorAnimator(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 67
    return-void
.end method

.method public blacklist stopCursorAnimator(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 71
    return-void
.end method
