.class public Lcom/android/internal/view/ScrollCaptureInternalExtImpl;
.super Ljava/lang/Object;
.source "ScrollCaptureInternalExtImpl.java"

# interfaces
.implements Lcom/android/internal/view/IScrollCaptureInternalExt;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist SCROLL_VIEW:Ljava/lang/String; = "android.widget.ScrollView"

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureInternalExtImpl"


# instance fields
.field private blacklist mCaptureDelay:J

.field private blacklist mIsResetScroll:Z

.field private final blacklist mMaps:Landroid/os/Bundle;

.field private final blacklist mScrollcaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mMaps:Landroid/os/Bundle;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mIsResetScroll:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mCaptureDelay:J

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/ScrollCaptureInternal;

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mScrollcaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    .line 72
    return-void
.end method

.method private blacklist canScrollVertical(Landroid/view/View;I)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v0, "can not scroll down or up"

    invoke-static {v0, p1}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->debugLog(Ljava/lang/String;Landroid/view/View;)V

    .line 213
    return v3

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v1

    .line 218
    .local v1, "viewWrapper":Landroid/view/IViewWrapper;
    invoke-interface {v1}, Landroid/view/IViewWrapper;->computeVerticalScrollOffset()I

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    const-string v2, "scrollOffet != 0"

    invoke-static {v2, p1}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->debugLog(Ljava/lang/String;Landroid/view/View;)V

    .line 220
    return v0

    .line 223
    :cond_1
    const-string v4, "try scroll vertical:"

    invoke-static {v4, p1}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->debugLog(Ljava/lang/String;Landroid/view/View;)V

    .line 225
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->scrollBy(II)V

    .line 226
    invoke-interface {v1}, Landroid/view/IViewWrapper;->computeVerticalScrollOffset()I

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    return v0

    .line 230
    :cond_2
    const/16 v4, 0x7d0

    if-lt p2, v4, :cond_3

    .line 231
    const-string v2, "ScrollCaptureInternalExtImpl"

    const-string v3, "try async scroll! just return true"

    invoke-static {v2, v3}, Lcom/oplus/util/OplusLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return v0

    .line 235
    :cond_3
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->scrollBy(II)V

    .line 237
    const-string v0, "can not scroll:"

    invoke-static {v0, p1}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->debugLog(Ljava/lang/String;Landroid/view/View;)V

    .line 239
    return v3
.end method

.method private blacklist createAsyncViewHelper(J)Lcom/android/internal/view/ScrollCaptureViewHelper;
    .locals 3
    .param p1, "captureDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;

    new-instance v1, Lcom/oplus/screenshot/OplusViewScrollable;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusViewScrollable;-><init>()V

    new-instance v2, Lcom/oplus/screenshot/OplusHandlerExecutor;

    invoke-direct {v2, p1, p2}, Lcom/oplus/screenshot/OplusHandlerExecutor;-><init>(J)V

    invoke-direct {v0, v1, v2}, Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;-><init>(Lcom/oplus/screenshot/IOplusScrollable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private blacklist createAsyncWebViewHelper(J)Lcom/android/internal/view/ScrollCaptureViewHelper;
    .locals 3
    .param p1, "captureDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;

    new-instance v1, Lcom/oplus/screenshot/OplusWebViewScrollable;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusWebViewScrollable;-><init>()V

    new-instance v2, Lcom/oplus/screenshot/OplusHandlerExecutor;

    invoke-direct {v2, p1, p2}, Lcom/oplus/screenshot/OplusHandlerExecutor;-><init>(J)V

    invoke-direct {v0, v1, v2}, Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;-><init>(Lcom/oplus/screenshot/IOplusScrollable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private blacklist createViewHelper()Lcom/android/internal/view/ScrollCaptureViewHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;

    new-instance v1, Lcom/oplus/screenshot/OplusViewScrollable;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusViewScrollable;-><init>()V

    new-instance v2, Lcom/oplus/screenshot/OplusHandlerExecutor;

    invoke-direct {v2}, Lcom/oplus/screenshot/OplusHandlerExecutor;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/oplus/screenshot/OplusScrollCaptureHelper;-><init>(Lcom/oplus/screenshot/IOplusScrollable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private blacklist createWebViewHelper()Lcom/android/internal/view/ScrollCaptureViewHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;

    new-instance v1, Lcom/oplus/screenshot/OplusWebViewScrollable;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusWebViewScrollable;-><init>()V

    new-instance v2, Lcom/oplus/screenshot/OplusHandlerExecutor;

    invoke-direct {v2}, Lcom/oplus/screenshot/OplusHandlerExecutor;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/oplus/screenshot/OplusScrollCaptureHelper;-><init>(Lcom/oplus/screenshot/IOplusScrollable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static blacklist debugLog(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    .line 260
    .local v0, "viewWrapper":Landroid/view/IViewWrapper;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeVerticalScrollExtent()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    const/4 v2, 0x0

    const-string v3, "ScrollCaptureInternalExtImpl"

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private blacklist requestCallbackCompact(Landroid/view/View;)Lcom/android/internal/view/ScrollCaptureViewHelper;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mMaps:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "requestCallback: "

    const/4 v3, 0x0

    const-string v4, "ScrollCaptureInternalExtImpl"

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not compatible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", app:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", system:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v3, v4, v1}, Lcom/oplus/util/OplusLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mMaps:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, "type":I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->canScrollVertical(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " can not scroll vertical"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v2, Lcom/oplus/screenshot/OplusUnsupportedScrollCaptureHelper;

    invoke-direct {v2}, Lcom/oplus/screenshot/OplusUnsupportedScrollCaptureHelper;-><init>()V

    return-object v2

    .line 194
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCallback: unexcepted type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v2, Lcom/oplus/screenshot/OplusUnsupportedScrollCaptureHelper;

    invoke-direct {v2}, Lcom/oplus/screenshot/OplusUnsupportedScrollCaptureHelper;-><init>()V

    return-object v2

    .line 202
    :sswitch_0
    iget-wide v2, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mCaptureDelay:J

    invoke-direct {p0, v2, v3}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->createAsyncViewHelper(J)Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-result-object v2

    return-object v2

    .line 200
    :sswitch_1
    iget-wide v2, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mCaptureDelay:J

    invoke-direct {p0, v2, v3}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->createAsyncWebViewHelper(J)Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-result-object v2

    return-object v2

    .line 198
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->createViewHelper()Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-result-object v2

    return-object v2

    .line 196
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->createWebViewHelper()Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist requestCallbackOrigin(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Lcom/android/internal/view/ScrollCaptureViewHelper;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p3, "positionInWindow"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Point;",
            ")",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mScrollcaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    invoke-virtual {v0}, Lcom/android/internal/view/ScrollCaptureInternal;->getWrapper()Lcom/android/internal/view/IScrollCaptureInternalWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/view/IScrollCaptureInternalWrapper;->detectScrollingType(Landroid/view/View;)I

    move-result v0

    .line 133
    .local v0, "i":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    .line 155
    new-instance v1, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;-><init>()V

    return-object v1

    .line 147
    :pswitch_1
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Lcom/oplus/screenshot/OplusListViewCaptureHelper;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusListViewCaptureHelper;-><init>()V

    return-object v1

    .line 151
    :cond_0
    new-instance v1, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;-><init>()V

    return-object v1

    .line 135
    :pswitch_2
    instance-of v1, p1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 137
    new-instance v1, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;-><init>()V

    return-object v1

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 140
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "android.widget.ScrollView"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    new-instance v2, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;

    invoke-direct {v2}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;-><init>()V

    return-object v2

    .line 144
    :cond_2
    new-instance v2, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;

    invoke-direct {v2}, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;-><init>()V

    return-object v2

    .line 165
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setScrollCaptureType(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "maps"    # Landroid/os/Bundle;

    .line 169
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mMaps:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string v0, "ScrollCaptureInternalExtImpl"

    const-string v1, "compateable map setted."

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mMaps:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 174
    :cond_0
    return-void
.end method

.method private blacklist wrapper(Lcom/android/internal/view/ScrollCaptureViewHelper;)Lcom/android/internal/view/ScrollCaptureViewHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 124
    .local p1, "helper":Lcom/android/internal/view/ScrollCaptureViewHelper;, "Lcom/android/internal/view/ScrollCaptureViewHelper<+Landroid/view/View;>;"
    iget-boolean v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mIsResetScroll:Z

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;-><init>(Lcom/android/internal/view/ScrollCaptureViewHelper;Z)V

    return-object v0

    .line 127
    :cond_0
    return-object p1
.end method


# virtual methods
.method public blacklist requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p3, "positionInWindow"    # Landroid/graphics/Point;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCallback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ScrollCaptureInternalExtImpl"

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->requestCallbackCompact(Landroid/view/View;)Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-result-object v0

    .line 81
    .local v0, "viewHelper":Lcom/android/internal/view/ScrollCaptureViewHelper;, "Lcom/android/internal/view/ScrollCaptureViewHelper<+Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class matched: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/util/OplusLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mIsResetScroll:Z

    if-nez v1, :cond_1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->requestCallbackOrigin(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-result-object v0

    .line 87
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 88
    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_2
    new-instance v1, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    invoke-direct {p0, v0}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->wrapper(Lcom/android/internal/view/ScrollCaptureViewHelper;)Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 96
    const-wide/16 v0, 0x0

    const-string v2, "ScrollCaptureInternalExtImpl"

    if-nez p1, :cond_0

    .line 97
    const-string v3, "setExtras: extras is null"

    invoke-static {v2, v3}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mMaps:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 99
    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mCaptureDelay:J

    .line 100
    return-void

    .line 103
    :cond_0
    const-string v3, "scroll_capture_compatible"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const-string v4, "setExtras: extras contains EXTRA_SCROLL_CAPTURE_COMPATIBLE"

    invoke-static {v2, v4}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->setScrollCaptureType(Landroid/os/Bundle;)V

    .line 108
    :cond_1
    const-string v3, "scroll_reset"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 109
    const-string v4, "setExtras: extras contains EXTRA_SCROLL_RESET"

    invoke-static {v2, v4}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mIsResetScroll:Z

    goto :goto_0

    .line 112
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mIsResetScroll:Z

    .line 115
    :goto_0
    const-string v3, "scroll_capture_delay"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    const-string v4, "setExtras: extras contains EXTRA_SCROLL_CAPTURE_DELAY"

    invoke-static {v2, v4}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mCaptureDelay:J

    goto :goto_1

    .line 119
    :cond_3
    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureInternalExtImpl;->mCaptureDelay:J

    .line 121
    :goto_1
    return-void
.end method
