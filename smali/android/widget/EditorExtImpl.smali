.class public Landroid/widget/EditorExtImpl;
.super Ljava/lang/Object;
.source "EditorExtImpl.java"

# interfaces
.implements Landroid/widget/IEditorExt;


# static fields
.field private static final blacklist MENU_ITEM_ORDER_SELECT:I = 0xb


# instance fields
.field private blacklist mBase:Landroid/widget/Editor;

.field private blacklist mIsFousedBeforeTouch:Z

.field private blacklist mLastOffset:I

.field private blacklist mOplusCursorFeedbackManager:Landroid/widget/IOplusCursorFeedbackManager;

.field private blacklist mOplusEditorUtils:Landroid/widget/OplusEditorUtils;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditorExtImpl;->mIsFousedBeforeTouch:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/EditorExtImpl;->mLastOffset:I

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/EditorExtImpl;->mBase:Landroid/widget/Editor;

    .line 41
    return-void
.end method

.method private blacklist getOplusCursorFeedbackManager()Landroid/widget/IOplusCursorFeedbackManager;
    .locals 2

    .line 148
    iget-object v0, p0, Landroid/widget/EditorExtImpl;->mOplusCursorFeedbackManager:Landroid/widget/IOplusCursorFeedbackManager;

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Landroid/widget/IOplusCursorFeedbackManager;->DEFAULT:Landroid/widget/IOplusCursorFeedbackManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusCursorFeedbackManager;

    iput-object v0, p0, Landroid/widget/EditorExtImpl;->mOplusCursorFeedbackManager:Landroid/widget/IOplusCursorFeedbackManager;

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/widget/EditorExtImpl;->mOplusCursorFeedbackManager:Landroid/widget/IOplusCursorFeedbackManager;

    return-object v0
.end method

.method private blacklist getOplusReorderActionMenuManager()Landroid/widget/IOplusReorderActionMenuManager;
    .locals 2

    .line 189
    sget-object v0, Landroid/widget/IOplusReorderActionMenuManager;->DEFAULT:Landroid/widget/IOplusReorderActionMenuManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusReorderActionMenuManager;

    return-object v0
.end method

.method private blacklist handleItemClicked(ILandroid/widget/TextView;Landroid/widget/Editor;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "editor"    # Landroid/widget/Editor;

    .line 107
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 110
    :sswitch_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 111
    .local v1, "offset":I
    invoke-virtual {p3}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/EditorExtImpl;->setMinMaxOffset(ILandroid/widget/Editor$SelectionModifierCursorController;)V

    .line 112
    invoke-virtual {p3}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 113
    goto :goto_0

    .line 120
    .end local v1    # "offset":I
    :sswitch_1
    const v2, 0xc0400c8

    .line 121
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 115
    :sswitch_2
    const v2, 0xc0400c9

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 118
    nop

    .line 125
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_1
        0xc02006d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist editorDetachFromWindow(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 182
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusCursorFeedbackManager()Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/IOplusCursorFeedbackManager;->editorDetachFromWindow(Landroid/widget/Editor;)V

    .line 183
    return-void
.end method

.method public blacklist getExtraCursorWidth(Landroid/widget/Editor;)I
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 162
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusCursorFeedbackManager()Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/IOplusCursorFeedbackManager;->getExtraCursorWidth(Landroid/widget/Editor;)I

    move-result v0

    return v0
.end method

.method public blacklist getExtraLeftOffset(Landroid/widget/Editor;)I
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 167
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusCursorFeedbackManager()Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/IOplusCursorFeedbackManager;->getExtraLeftOffset(Landroid/widget/Editor;)I

    move-result v0

    return v0
.end method

.method public blacklist getOplusTextThumbnailBuilder(Landroid/view/View;Ljava/lang/String;)Landroid/view/View$DragShadowBuilder;
    .locals 2
    .param p1, "textview"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .line 140
    sget-object v0, Landroid/widget/IOplusDragTextShadowHelper;->DEFAULT:Landroid/widget/IOplusDragTextShadowHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusDragTextShadowHelper;

    .line 141
    invoke-interface {v0, p1, p2}, Landroid/widget/IOplusDragTextShadowHelper;->getOplusTextThumbnailBuilder(Landroid/view/View;Ljava/lang/String;)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method public blacklist handleCursorControllersEnabled(ZZ)[Z
    .locals 7
    .param p1, "insertionControllerEnabled"    # Z
    .param p2, "selectionControllerEnabled"    # Z

    .line 48
    sget-object v0, Landroid/widget/IOplusFloatingToolbarUtil;->DEFAULT:Landroid/widget/IOplusFloatingToolbarUtil;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/IOplusFloatingToolbarUtil;

    iget-object v0, p0, Landroid/widget/EditorExtImpl;->mOplusEditorUtils:Landroid/widget/OplusEditorUtils;

    .line 49
    invoke-virtual {v0}, Landroid/widget/OplusEditorUtils;->isMenuEnabled()Z

    move-result v2

    iget-object v0, p0, Landroid/widget/EditorExtImpl;->mOplusEditorUtils:Landroid/widget/OplusEditorUtils;

    invoke-virtual {v0}, Landroid/widget/OplusEditorUtils;->isInsertMenuEnabled()Z

    move-result v3

    iget-object v0, p0, Landroid/widget/EditorExtImpl;->mOplusEditorUtils:Landroid/widget/OplusEditorUtils;

    invoke-virtual {v0}, Landroid/widget/OplusEditorUtils;->isSelectMenuEnabled()Z

    move-result v4

    .line 48
    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/widget/IOplusFloatingToolbarUtil;->handleCursorControllersEnabled(ZZZZZ)[Z

    move-result-object v0

    .line 51
    .local v0, "controllersEnabled":[Z
    return-object v0
.end method

.method public blacklist handleKeyCodeDelDown(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 172
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusCursorFeedbackManager()Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/IOplusCursorFeedbackManager;->handleKeyCodeDelDown(Landroid/widget/Editor;Landroid/view/KeyEvent;)V

    .line 173
    return-void
.end method

.method public blacklist handleKeyCodeDelUp(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 177
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusCursorFeedbackManager()Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/IOplusCursorFeedbackManager;->handleKeyCodeDelUp(Landroid/widget/Editor;Landroid/view/KeyEvent;)V

    .line 178
    return-void
.end method

.method public blacklist hookFireIntent(Landroid/widget/TextView;Landroid/content/Intent;)V
    .locals 1
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 204
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusReorderActionMenuManager()Landroid/widget/IOplusReorderActionMenuManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/IOplusReorderActionMenuManager;->hookFireIntent(Landroid/widget/TextView;Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public blacklist isOplusReorderActionMenu(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 199
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusReorderActionMenuManager()Landroid/widget/IOplusReorderActionMenuManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/IOplusReorderActionMenuManager;->isOplusReorderActionMenu(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist layout(IILjava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "shadowViewWidth"    # I
    .param p2, "shadowViewHeight"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "shadowView"    # Landroid/widget/TextView;

    .line 85
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    const/4 p1, 0x1

    .line 87
    const/4 p2, 0x1

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p4, v0, v0, p1, p2}, Landroid/widget/TextView;->layout(IIII)V

    .line 90
    return-void
.end method

.method public blacklist needAllSelected()Z
    .locals 2

    .line 55
    sget-object v0, Landroid/widget/IOplusFloatingToolbarUtil;->DEFAULT:Landroid/widget/IOplusFloatingToolbarUtil;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusFloatingToolbarUtil;

    iget-object v1, p0, Landroid/widget/EditorExtImpl;->mOplusEditorUtils:Landroid/widget/OplusEditorUtils;

    invoke-virtual {v1}, Landroid/widget/OplusEditorUtils;->needAllSelected()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/IOplusFloatingToolbarUtil;->needAllSelected(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist needHook()Z
    .locals 2

    .line 66
    sget-object v0, Landroid/widget/IOplusFloatingToolbarUtil;->DEFAULT:Landroid/widget/IOplusFloatingToolbarUtil;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusFloatingToolbarUtil;

    invoke-interface {v0}, Landroid/widget/IOplusFloatingToolbarUtil;->needHook()Z

    move-result v0

    return v0
.end method

.method public blacklist onInitializeReorderActionMenu(Landroid/view/Menu;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 194
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusReorderActionMenuManager()Landroid/widget/IOplusReorderActionMenuManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/IOplusReorderActionMenuManager;->onInitializeReorderActionMenu(Landroid/view/Menu;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 195
    return-void
.end method

.method public blacklist raiseOplusMenuPriority(ILjava/lang/CharSequence;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "order"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "menu"    # Landroid/view/Menu;

    .line 213
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusReorderActionMenuManager()Landroid/widget/IOplusReorderActionMenuManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/IOplusReorderActionMenuManager;->raiseOplusMenuPriority(ILjava/lang/CharSequence;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public blacklist refreshCursorRenderTime(Landroid/widget/Editor;)Z
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 157
    invoke-direct {p0}, Landroid/widget/EditorExtImpl;->getOplusCursorFeedbackManager()Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/IOplusCursorFeedbackManager;->refreshCursorRenderTime(Landroid/widget/Editor;)Z

    move-result v0

    return v0
.end method

.method public blacklist selectAllText(Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 58
    invoke-virtual {p1}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0
.end method

.method public blacklist setBackground(Landroid/widget/ListView;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0
    .param p1, "suggestionListView"    # Landroid/widget/ListView;
    .param p2, "colorDrawable"    # Landroid/graphics/drawable/ColorDrawable;

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public blacklist setEditorUtils(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 44
    new-instance v0, Landroid/widget/OplusEditorUtils;

    invoke-direct {v0, p1}, Landroid/widget/OplusEditorUtils;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/EditorExtImpl;->mOplusEditorUtils:Landroid/widget/OplusEditorUtils;

    .line 45
    return-void
.end method

.method public blacklist setFocused(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 62
    iput-boolean p1, p0, Landroid/widget/EditorExtImpl;->mIsFousedBeforeTouch:Z

    .line 63
    return-void
.end method

.method public blacklist setLastOffset(I)V
    .locals 0
    .param p1, "value"    # I

    .line 70
    iput p1, p0, Landroid/widget/EditorExtImpl;->mLastOffset:I

    .line 71
    return-void
.end method

.method public blacklist setMinMaxOffset(ILandroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "controller"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .line 128
    invoke-virtual {p2}, Landroid/widget/Editor$SelectionModifierCursorController;->getWrapper()Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;

    move-result-object v0

    .line 129
    .local v0, "wrapper":Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;->setMaxTouchOffset(I)V

    .line 131
    invoke-interface {v0, p1}, Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;->setMinTouchOffset(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public blacklist setSearchMenuItem(ILandroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "menu"    # Landroid/view/Menu;

    .line 136
    sget-object v0, Landroid/widget/IOplusFloatingToolbarUtil;->DEFAULT:Landroid/widget/IOplusFloatingToolbarUtil;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/IOplusFloatingToolbarUtil;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/IOplusFloatingToolbarUtil;->setSearchMenuItem(ILandroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public blacklist startInsertionActionMode(Landroid/view/ActionMode;ILandroid/widget/Editor;)V
    .locals 1
    .param p1, "textActionMode"    # Landroid/view/ActionMode;
    .param p2, "offset"    # I
    .param p3, "editor"    # Landroid/widget/Editor;

    .line 74
    invoke-virtual {p0}, Landroid/widget/EditorExtImpl;->needHook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Landroid/widget/EditorExtImpl;->mLastOffset:I

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Landroid/widget/EditorExtImpl;->mIsFousedBeforeTouch:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p3}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist toHandleItemClicked(ILandroid/widget/TextView;Landroid/widget/Editor;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "editor"    # Landroid/widget/Editor;

    .line 101
    invoke-virtual {p0}, Landroid/widget/EditorExtImpl;->needHook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditorExtImpl;->handleItemClicked(ILandroid/widget/TextView;Landroid/widget/Editor;)V

    .line 104
    :cond_0
    return-void
.end method

.method public blacklist updateSelectAllItem(Landroid/view/Menu;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 97
    sget-object v0, Landroid/widget/IOplusFloatingToolbarUtil;->DEFAULT:Landroid/widget/IOplusFloatingToolbarUtil;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusFloatingToolbarUtil;

    const/16 v1, 0xb

    invoke-interface {v0, p1, p2, v1}, Landroid/widget/IOplusFloatingToolbarUtil;->updateSelectAllItem(Landroid/view/Menu;Landroid/widget/TextView;I)V

    .line 98
    return-void
.end method
