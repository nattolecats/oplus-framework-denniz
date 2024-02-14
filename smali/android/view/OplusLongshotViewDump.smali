.class public Landroid/view/OplusLongshotViewDump;
.super Ljava/lang/Object;
.source "OplusLongshotViewDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OplusLongshotViewDump$ContentComparator;,
        Landroid/view/OplusLongshotViewDump$ViewNode;,
        Landroid/view/OplusLongshotViewDump$LongshotDumpParam;,
        Landroid/view/OplusLongshotViewDump$MainThreadExecutor;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_COMPARATOR:Landroid/view/OplusLongshotViewDump$ContentComparator;

.field private static final blacklist DBG:Z

.field private static final blacklist FEATURE_ADJUST_WINDOW:Z = false

.field private static final blacklist FEATURE_DUMP_MIN_SIZE:Z = false

.field private static final blacklist JSON_BOUNDS_IN_WINDOW:Ljava/lang/String; = "bounds_in_window"

.field private static final blacklist JSON_CAPTURE_SCROLL_LIST:Ljava/lang/String; = "scroll_capture"

.field private static final blacklist JSON_CHILD_HASH:Ljava/lang/String; = "child_hash"

.field private static final blacklist JSON_CHILD_LIST:Ljava/lang/String; = "child_list"

.field private static final blacklist JSON_CHILD_RECT_CLIP:Ljava/lang/String; = "child_rect_clip"

.field private static final blacklist JSON_CHILD_RECT_FULL:Ljava/lang/String; = "child_rect_full"

.field private static final blacklist JSON_CHILD_SCROLLY:Ljava/lang/String; = "child_scrollY"

.field private static final blacklist JSON_FLOAT_LIST:Ljava/lang/String; = "float_list"

.field private static final blacklist JSON_FLOAT_RECT:Ljava/lang/String; = "float_rect"

.field private static final blacklist JSON_PACAKGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist JSON_PARENT_HASH:Ljava/lang/String; = "parent_hash"

.field private static final blacklist JSON_PARENT_RECT_CLIP:Ljava/lang/String; = "parent_rect_clip"

.field private static final blacklist JSON_PARENT_RECT_FULL:Ljava/lang/String; = "parent_rect_full"

.field private static final blacklist JSON_SCROLL_CAPTURE_ENABLE:Ljava/lang/String; = "scroll_capture_enable"

.field private static final blacklist JSON_SCROLL_CAPTURE_IMPL:Ljava/lang/String; = "app_impl"

.field private static final blacklist JSON_SCROLL_CHILD:Ljava/lang/String; = "scroll_child"

.field private static final blacklist JSON_SCROLL_LIST:Ljava/lang/String; = "scroll_list"

.field private static final blacklist JSON_SCROLL_RECT:Ljava/lang/String; = "scroll_rect"

.field private static final blacklist JSON_SIDE_LIST:Ljava/lang/String; = "side_list"

.field private static final blacklist JSON_SIDE_RECT:Ljava/lang/String; = "side_rect"

.field private static final blacklist JSON_VIEW_CLASS_NAME:Ljava/lang/String; = "view_class_name"

.field private static final blacklist JSON_VIEW_HASH:Ljava/lang/String; = "view_hash"

.field private static final blacklist JSON_VIEW_ID:Ljava/lang/String; = "view_id"

.field private static final blacklist JSON_VIEW_UNSUPPORTED:Ljava/lang/String; = "view_unsupported"

.field private static final blacklist JSON_WINDOW_BOUNDS:Ljava/lang/String; = "window_bounds"

.field private static final blacklist JSON_WINDOW_LAYER:Ljava/lang/String; = "window_layer"

.field private static final blacklist JSON_WINDOW_LIST:Ljava/lang/String; = "window_list"

.field private static final blacklist JSON_WINDOW_NAVIBAR:Ljava/lang/String; = "window_navibar"

.field private static final blacklist JSON_WINDOW_RECT_DECOR:Ljava/lang/String; = "window_rect_decor"

.field private static final blacklist JSON_WINDOW_RECT_VISIBLE:Ljava/lang/String; = "window_rect_visible"

.field private static final blacklist JSON_WINDOW_STATBAR:Ljava/lang/String; = "window_statbar"

.field private static final blacklist JSON_WINDOW_TITLE:Ljava/lang/String; = "window_title"

.field private static final blacklist PARAM_SCROLL_CAPTURE_DELAY:Ljava/lang/String; = "scroll_capture_delay="

.field private static final blacklist PARAM_SCROLL_CAPTURE_DUMP:Ljava/lang/String; = "scroll_capture="

.field private static final blacklist PARAM_SCROLL_CAPTURE_EXTRAS:Ljava/lang/String; = "scroll_capture_compatible="

.field private static final blacklist PARAM_SCROLL_RESET:Ljava/lang/String; = "scroll_reset="

.field private static final blacklist TAG:Ljava/lang/String; = "LongshotDump"


# instance fields
.field private blacklist mCoverHeight:I

.field private blacklist mDumpCount:I

.field private final blacklist mFloatRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMinListHeight:I

.field private blacklist mMinScrollDistance:I

.field private blacklist mMinScrollHeight:I

.field private blacklist mScreenHeight:I

.field private blacklist mScreenWidght:I

.field private blacklist mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

.field private final blacklist mScrollNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSideRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSmallViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTempRect1:Landroid/graphics/Rect;

.field private final blacklist mTempRect2:Landroid/graphics/Rect;

.field private final blacklist mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 92
    sget-boolean v0, Lcom/oplus/screenshot/OplusLongshotDump;->DBG:Z

    sput-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    .line 99
    new-instance v0, Landroid/view/OplusLongshotViewDump$ContentComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/OplusLongshotViewDump$ContentComparator;-><init>(Landroid/view/OplusLongshotViewDump$ContentComparator-IA;)V

    sput-object v0, Landroid/view/OplusLongshotViewDump;->CONTENT_COMPARATOR:Landroid/view/OplusLongshotViewDump$ContentComparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/oplus/screenshot/OplusLongshotViewInfo;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusLongshotViewInfo;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTempRect2:Landroid/graphics/Rect;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mSmallViews:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mFloatRects:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mSideRects:Ljava/util/List;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTargets:Ljava/util/List;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mDumpCount:I

    .line 160
    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mMinListHeight:I

    .line 161
    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mCoverHeight:I

    .line 162
    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mScreenHeight:I

    .line 163
    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mScreenWidght:I

    .line 164
    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mMinScrollHeight:I

    .line 165
    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mMinScrollDistance:I

    return-void
.end method

.method private blacklist appendLongshotInfo(Landroid/view/View;Lcom/oplus/screenshot/OplusLongshotViewInfo;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/oplus/screenshot/OplusLongshotViewInfo;

    .line 607
    return-void
.end method

.method private blacklist beforeScrollCaptureSearch(Landroid/view/ViewRootImpl;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 255
    const-string v0, "LongshotDump"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    .line 260
    .local v1, "scrollCaptureInternal":Lcom/android/internal/view/ScrollCaptureInternal;
    if-nez v1, :cond_1

    .line 261
    const-string v2, "mAttachInfo.mScrollCaptureInternal is null"

    invoke-static {v0, v2}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/android/internal/view/ScrollCaptureInternal;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureInternal;-><init>()V

    move-object v1, v0

    .line 263
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    .line 265
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/view/ScrollCaptureInternal;->getWrapper()Lcom/android/internal/view/IScrollCaptureInternalWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/view/IScrollCaptureInternalWrapper;->getExtImpl()Lcom/android/internal/view/IScrollCaptureInternalExt;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/view/IScrollCaptureInternalExt;->setExtras(Landroid/os/Bundle;)V

    .line 266
    return-void

    .line 256
    .end local v1    # "scrollCaptureInternal":Lcom/android/internal/view/ScrollCaptureInternal;
    :cond_2
    :goto_0
    const-string v1, "beforeScrollCaptureSearch: extras is null or empty"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private blacklist calcScrollRect(Lcom/oplus/screenshot/OplusLongshotDump;Landroid/view/OplusLongshotViewUtils;Landroid/view/OplusLongshotViewDump$ViewNode;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .param p2, "utils"    # Landroid/view/OplusLongshotViewUtils;
    .param p3, "scrollNode"    # Landroid/view/OplusLongshotViewDump$ViewNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/screenshot/OplusLongshotDump;",
            "Landroid/view/OplusLongshotViewUtils;",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)V"
        }
    .end annotation

    .line 1001
    .local p4, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p5, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    const-string v1, "LongshotDump"

    const-string v2, "==========calcScrollRect====: "

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1002
    if-nez p3, :cond_0

    .line 1003
    const-string v2, "  calcScrollRect, scrollNode=null"

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1004
    return-void

    .line 1006
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1007
    .local v0, "timeStart":J
    const-string v2, "calcScrollRect"

    .line 1008
    .local v2, "tag":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/view/OplusLongshotViewDump;->printTag(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p3}, Landroid/view/OplusLongshotViewDump$ViewNode;->getView()Landroid/view/View;

    move-result-object v3

    .line 1010
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1011
    .local v4, "srcRect":Landroid/graphics/Rect;
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 1012
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1013
    .local v5, "dstRect":Landroid/graphics/Rect;
    invoke-direct {p0, p2, v5, v4, v3}, Landroid/view/OplusLongshotViewDump;->calcScrollRectForViews(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1018
    invoke-virtual {p3, v5}, Landroid/view/OplusLongshotViewDump$ViewNode;->setScrollRect(Landroid/graphics/Rect;)V

    .line 1019
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : scrollRect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 1020
    invoke-direct {p0, v0, v1}, Landroid/view/OplusLongshotViewDump;->getTimeSpend(J)J

    move-result-wide v6

    .line 1021
    .local v6, "timeSpend":J
    invoke-direct {p0, v2, v6, v7}, Landroid/view/OplusLongshotViewDump;->printSpend(Ljava/lang/String;J)V

    .line 1022
    if-eqz p1, :cond_1

    .line 1023
    invoke-virtual {p1, v5}, Lcom/oplus/screenshot/OplusLongshotDump;->setScrollRect(Landroid/graphics/Rect;)V

    .line 1024
    invoke-virtual {p1, v6, v7}, Lcom/oplus/screenshot/OplusLongshotDump;->setSpendCalc(J)V

    .line 1026
    :cond_1
    return-void
.end method

.method private blacklist calcScrollRectForViews(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 17
    .param p1, "utils"    # Landroid/view/OplusLongshotViewUtils;
    .param p2, "dstRect"    # Landroid/graphics/Rect;
    .param p3, "srcRect"    # Landroid/graphics/Rect;
    .param p4, "view"    # Landroid/view/View;

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    .line 943
    .local v13, "coverContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v6, "sideContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object/from16 v14, p4

    move-object v15, v1

    .line 945
    .end local p4    # "view":Landroid/view/View;
    .local v14, "view":Landroid/view/View;
    .local v15, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v15, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 946
    move-object v9, v15

    check-cast v9, Landroid/view/ViewGroup;

    .line 947
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 948
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object v3, v9

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v7, p3

    move-object/from16 p4, v14

    move-object v14, v9

    .end local v9    # "group":Landroid/view/ViewGroup;
    .local v14, "group":Landroid/view/ViewGroup;
    .restart local p4    # "view":Landroid/view/View;
    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Landroid/view/OplusLongshotViewUtils;->findCoverRect(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/graphics/Rect;Landroid/view/OplusLongshotViewContent;Z)V

    goto :goto_1

    .line 950
    .end local p4    # "view":Landroid/view/View;
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .local v14, "view":Landroid/view/View;
    :cond_0
    move-object/from16 p4, v14

    move-object v14, v9

    .end local v9    # "group":Landroid/view/ViewGroup;
    .local v14, "group":Landroid/view/ViewGroup;
    .restart local p4    # "view":Landroid/view/View;
    iget-object v1, v0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v14, v1, v2}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 951
    sget-boolean v1, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    nofindCoverRect : rootRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srcRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", group="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 954
    :goto_1
    move-object v1, v14

    .line 955
    .end local p4    # "view":Landroid/view/View;
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 956
    .end local v14    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    .line 957
    .end local v1    # "view":Landroid/view/View;
    .local v14, "view":Landroid/view/View;
    :cond_1
    move-object/from16 p4, v14

    .end local v14    # "view":Landroid/view/View;
    .restart local p4    # "view":Landroid/view/View;
    sget-object v1, Landroid/view/OplusLongshotViewDump;->CONTENT_COMPARATOR:Landroid/view/OplusLongshotViewDump$ContentComparator;

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 958
    invoke-direct {v0, v10, v13, v12}, Landroid/view/OplusLongshotViewDump;->checkCoverContents(Landroid/view/OplusLongshotViewUtils;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------------------calcScrollRectForViews : coverContents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 960
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sideContents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-direct {v0, v1}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 961
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/OplusLongshotViewContent;

    .line 962
    .local v2, "coverContent":Landroid/view/OplusLongshotViewContent;
    invoke-virtual {v2}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v10, v11, v12, v3}, Landroid/view/OplusLongshotViewDump;->updateCoverRect(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    .line 963
    .local v3, "result":Z
    if-eqz v3, :cond_2

    const-string v4, "update"

    goto :goto_3

    :cond_2
    const-string v4, "skip  "

    .line 964
    .local v4, "tag":Ljava/lang/String;
    :goto_3
    invoke-direct {v0, v2, v4, v11}, Landroid/view/OplusLongshotViewDump;->printContentView(Landroid/view/OplusLongshotViewContent;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 965
    .end local v2    # "coverContent":Landroid/view/OplusLongshotViewContent;
    .end local v3    # "result":Z
    .end local v4    # "tag":Ljava/lang/String;
    goto :goto_2

    .line 966
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/OplusLongshotViewContent;

    .line 967
    .local v2, "sideContent":Landroid/view/OplusLongshotViewContent;
    iget-object v3, v0, Landroid/view/OplusLongshotViewDump;->mSideRects:Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    const/4 v3, 0x0

    const-string v4, "sidebar"

    invoke-direct {v0, v2, v4, v3}, Landroid/view/OplusLongshotViewDump;->printContentView(Landroid/view/OplusLongshotViewContent;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 969
    .end local v2    # "sideContent":Landroid/view/OplusLongshotViewContent;
    goto :goto_4

    .line 970
    :cond_4
    return-void
.end method

.method private blacklist calcScrollRectForWindow(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oplus/view/analysis/OplusWindowNode;)V
    .locals 4
    .param p1, "utils"    # Landroid/view/OplusLongshotViewUtils;
    .param p2, "dstRect"    # Landroid/graphics/Rect;
    .param p3, "srcRect"    # Landroid/graphics/Rect;
    .param p4, "window"    # Lcom/oplus/view/analysis/OplusWindowNode;

    .line 973
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {p4}, Lcom/oplus/view/analysis/OplusWindowNode;->getCoverRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 974
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3}, Landroid/view/OplusLongshotViewDump;->isInvalidIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/OplusLongshotViewDump;->updateCoverRect(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 978
    .local v0, "result":Z
    sget-boolean v1, Landroid/view/OplusLongshotViewDump;->DBG:Z

    if-eqz v1, :cond_2

    .line 979
    if-eqz v0, :cond_1

    const-string v1, "update"

    goto :goto_0

    :cond_1
    const-string v1, "skip  "

    .line 980
    .local v1, "tag":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 981
    .local v2, "msg":Ljava/lang/StringBuilder;
    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v3, " : {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 985
    const-string v3, "} => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 989
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private blacklist calcScrollRectForWindows(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 2
    .param p1, "utils"    # Landroid/view/OplusLongshotViewUtils;
    .param p2, "dstRect"    # Landroid/graphics/Rect;
    .param p3, "srcRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/OplusLongshotViewUtils;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)V"
        }
    .end annotation

    .line 992
    .local p4, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    if-eqz p4, :cond_0

    .line 993
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/view/analysis/OplusWindowNode;

    .line 994
    .local v1, "window":Lcom/oplus/view/analysis/OplusWindowNode;
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/view/OplusLongshotViewDump;->calcScrollRectForWindow(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oplus/view/analysis/OplusWindowNode;)V

    .line 995
    .end local v1    # "window":Lcom/oplus/view/analysis/OplusWindowNode;
    goto :goto_0

    .line 997
    :cond_0
    return-void
.end method

.method private blacklist calcScrollRects(Lcom/oplus/screenshot/OplusLongshotDump;Landroid/view/OplusLongshotViewUtils;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .param p2, "utils"    # Landroid/view/OplusLongshotViewUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/screenshot/OplusLongshotDump;",
            "Landroid/view/OplusLongshotViewUtils;",
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)V"
        }
    .end annotation

    .line 1030
    .local p3, "scrollNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewDump$ViewNode;>;"
    .local p4, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p5, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 1032
    .local v1, "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    if-eqz p1, :cond_0

    .line 1035
    invoke-virtual {v1}, Landroid/view/OplusLongshotViewDump$ViewNode;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/screenshot/OplusLongshotViewBase;

    .line 1036
    invoke-direct {p0, v1}, Landroid/view/OplusLongshotViewDump;->getAccessibilityName(Landroid/view/OplusLongshotViewDump$ViewNode;)Ljava/lang/String;

    move-result-object v3

    .line 1035
    invoke-static {v2, v3}, Lcom/oplus/screenshot/OplusLongshotComponentName;->create(Lcom/oplus/screenshot/OplusLongshotViewBase;Ljava/lang/String;)Lcom/oplus/screenshot/OplusLongshotComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/screenshot/OplusLongshotDump;->setScrollComponent(Lcom/oplus/screenshot/OplusLongshotComponentName;)V

    .line 1038
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/OplusLongshotViewDump;->calcScrollRect(Lcom/oplus/screenshot/OplusLongshotDump;Landroid/view/OplusLongshotViewUtils;Landroid/view/OplusLongshotViewDump$ViewNode;Ljava/util/List;Ljava/util/List;)V

    .line 1039
    invoke-virtual {v1}, Landroid/view/OplusLongshotViewDump$ViewNode;->getChildList()Ljava/util/List;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/view/OplusLongshotViewDump;->calcScrollRects(Lcom/oplus/screenshot/OplusLongshotDump;Landroid/view/OplusLongshotViewUtils;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1040
    .end local v1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    goto :goto_0

    .line 1041
    :cond_1
    return-void
.end method

.method private blacklist canScrollVertically(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 517
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    return v0

    .line 520
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    return v0

    .line 523
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkCoverContents(Landroid/view/OplusLongshotViewUtils;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "utils"    # Landroid/view/OplusLongshotViewUtils;
    .param p3, "rootRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/OplusLongshotViewUtils;",
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewContent;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 905
    .local p2, "coverContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v0, "largeContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 908
    .local v1, "smallContentMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/OplusLongshotViewContent;Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/OplusLongshotViewContent;

    .line 909
    .local v3, "coverContent":Landroid/view/OplusLongshotViewContent;
    invoke-virtual {v3}, Landroid/view/OplusLongshotViewContent;->getParent()Landroid/view/OplusLongshotViewContent;

    move-result-object v4

    .line 910
    .local v4, "parent":Landroid/view/OplusLongshotViewContent;
    if-nez v4, :cond_0

    .line 911
    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {v4}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p3, v6}, Landroid/view/OplusLongshotViewUtils;->isLargeCoverRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 914
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 916
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 917
    .local v5, "smallContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v5    # "smallContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    goto :goto_1

    .line 919
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .restart local v5    # "smallContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    .end local v3    # "coverContent":Landroid/view/OplusLongshotViewContent;
    .end local v4    # "parent":Landroid/view/OplusLongshotViewContent;
    .end local v5    # "smallContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    :goto_1
    goto :goto_0

    .line 924
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 925
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 926
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 927
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/OplusLongshotViewContent;Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 928
    .local v4, "smallContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 929
    goto :goto_2

    .line 931
    :cond_4
    iget-object v5, p0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 932
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/OplusLongshotViewContent;

    .line 933
    .local v6, "smallContent":Landroid/view/OplusLongshotViewContent;
    iget-object v7, p0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 934
    .end local v6    # "smallContent":Landroid/view/OplusLongshotViewContent;
    goto :goto_3

    .line 935
    :cond_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/OplusLongshotViewContent;

    .line 936
    .local v5, "parent":Landroid/view/OplusLongshotViewContent;
    new-instance v6, Landroid/view/OplusLongshotViewContent;

    invoke-virtual {v5}, Landroid/view/OplusLongshotViewContent;->getView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/view/OplusLongshotViewContent;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/OplusLongshotViewContent;)V

    .line 937
    .local v6, "coverContent":Landroid/view/OplusLongshotViewContent;
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/OplusLongshotViewContent;Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;>;"
    .end local v4    # "smallContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    .end local v5    # "parent":Landroid/view/OplusLongshotViewContent;
    .end local v6    # "coverContent":Landroid/view/OplusLongshotViewContent;
    goto :goto_2

    .line 939
    :cond_6
    return-void
.end method

.method private blacklist clearList()V
    .locals 1

    .line 1392
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1393
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mSmallViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1394
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mFloatRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1395
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mSideRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1397
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1398
    return-void
.end method

.method private blacklist createExcutor(Landroid/view/ViewRootImpl;Landroid/os/Bundle;)Ljava/util/concurrent/Executor;
    .locals 5
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 246
    if-eqz p2, :cond_1

    const-string v0, "scroll_capture_delay"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 251
    .local v0, "delayMillis":J
    new-instance v2, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;

    iget-object v3, p0, Landroid/view/OplusLongshotViewDump;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;-><init>(Landroid/os/Handler;JLandroid/view/OplusLongshotViewDump$MainThreadExecutor-IA;)V

    return-object v2

    .line 247
    .end local v0    # "delayMillis":J
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private blacklist dispatchScrollCaptureSearchResponse(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V
    .locals 16
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "listener"    # Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .param p3, "results"    # Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    .line 272
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 274
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/screenshot/OplusScrollCaptureResponse;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 275
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/ScrollCaptureTarget;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "LongshotDump"

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ScrollCaptureTarget;

    .line 277
    .local v5, "selectedTarget":Landroid/view/ScrollCaptureTarget;
    if-nez v5, :cond_0

    .line 279
    :try_start_0
    invoke-interface {v2, v3}, Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;->onScrollCaptureResponse(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "Failed to send scroll capture search result"

    invoke-static {v6, v7, v0}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 285
    :cond_0
    invoke-virtual {v5}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_1

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "scroll bounds is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    goto :goto_0

    .line 289
    :cond_1
    new-instance v6, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    invoke-direct {v6}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;-><init>()V

    .line 290
    .local v6, "response":Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->setWindowTitle(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 291
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->setPackageName(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->addMessage(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 294
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 295
    .local v7, "writer":Ljava/io/StringWriter;
    new-instance v8, Landroid/util/IndentingPrintWriter;

    invoke-direct {v8, v7}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 296
    .local v8, "pw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v5, v8}, Landroid/view/ScrollCaptureTarget;->dump(Ljava/io/PrintWriter;)V

    .line 297
    invoke-virtual {v8}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 298
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->addMessage(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 300
    const-string v9, "Connected"

    invoke-virtual {v6, v9}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->setDescription(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 303
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .local v9, "boundsInWindow":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v10

    .line 305
    .local v10, "containingView":Landroid/view/View;
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 306
    invoke-virtual {v5}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v13, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v9, v11, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 308
    invoke-virtual {v6, v9}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->setBoundsInWindow(Landroid/graphics/Rect;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 311
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 312
    .local v11, "boundsOnScreen":Landroid/graphics/Rect;
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v15, v15, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    invoke-virtual {v13, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 313
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual {v11, v12, v12, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 314
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v13, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    aget v12, v13, v12

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v13, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    aget v13, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 315
    invoke-virtual {v6, v11}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->setWindowBounds(Landroid/graphics/Rect;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 318
    new-instance v12, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 319
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;-><init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V

    .line 320
    .local v12, "connection":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
    invoke-virtual {v6, v12}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->setConnection(Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 321
    new-instance v13, Lcom/oplus/screenshot/OplusScrollCaptureResponse;

    invoke-virtual {v6}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->build()Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v5    # "selectedTarget":Landroid/view/ScrollCaptureTarget;
    .end local v6    # "response":Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "pw":Landroid/util/IndentingPrintWriter;
    .end local v9    # "boundsInWindow":Landroid/graphics/Rect;
    .end local v10    # "containingView":Landroid/view/View;
    .end local v11    # "boundsOnScreen":Landroid/graphics/Rect;
    .end local v12    # "connection":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
    goto/16 :goto_0

    .line 325
    :cond_2
    :try_start_1
    invoke-interface {v2, v3}, Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;->onScrollCaptureResponse(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    goto :goto_3

    .line 326
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 327
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    if-eqz v5, :cond_3

    .line 328
    const-string v5, "Failed to send scroll capture search response."

    invoke-static {v6, v5, v0}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/screenshot/OplusScrollCaptureResponse;

    .line 331
    .local v6, "response":Lcom/oplus/screenshot/OplusScrollCaptureResponse;
    invoke-virtual {v6}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->close()V

    .line 332
    .end local v6    # "response":Lcom/oplus/screenshot/OplusScrollCaptureResponse;
    goto :goto_2

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    return-void
.end method

.method private blacklist dumpHierarchyLongshot(Lcom/oplus/screenshot/OplusLongshotDump;Landroid/view/View;)V
    .locals 17
    .param p1, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .param p2, "view"    # Landroid/view/View;

    .line 768
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 769
    .local v9, "timeStart":J
    const-string v11, "dumpHierarchyLongshot"

    .line 770
    .local v11, "tag":Ljava/lang/String;
    invoke-direct {v7, v11}, Landroid/view/OplusLongshotViewDump;->printTag(Ljava/lang/String;)V

    .line 771
    const/4 v12, 0x0

    .line 772
    .local v12, "minSize":Landroid/graphics/Point;
    const/4 v13, 0x0

    .line 778
    .local v13, "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, v7, Landroid/view/OplusLongshotViewDump;->mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusLongshotViewInfo;->reset()V

    .line 779
    const/4 v14, 0x0

    .line 780
    .local v14, "recursion":I
    iget-object v6, v7, Landroid/view/OplusLongshotViewDump;->mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    invoke-direct/range {v0 .. v6}, Landroid/view/OplusLongshotViewDump;->dumpScrollNodes(Landroid/view/OplusLongshotViewDump$ViewNode;Landroid/view/View;Landroid/graphics/Point;Ljava/util/List;ILcom/oplus/screenshot/OplusLongshotViewInfo;)V

    .line 781
    iget-object v0, v7, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, v7, Landroid/view/OplusLongshotViewDump;->mSmallViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/View;

    .line 783
    .local v16, "v":Landroid/view/View;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, v7, Landroid/view/OplusLongshotViewDump;->mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move v5, v14

    invoke-direct/range {v0 .. v6}, Landroid/view/OplusLongshotViewDump;->dumpScrollNodes(Landroid/view/OplusLongshotViewDump$ViewNode;Landroid/view/View;Landroid/graphics/Point;Ljava/util/List;ILcom/oplus/screenshot/OplusLongshotViewInfo;)V

    .line 784
    .end local v16    # "v":Landroid/view/View;
    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, v7, Landroid/view/OplusLongshotViewDump;->mSmallViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    invoke-direct {v7, v0, v1}, Landroid/view/OplusLongshotViewDump;->printScrollNodes(Ljava/lang/String;Ljava/util/List;)V

    .line 788
    invoke-direct {v7, v9, v10}, Landroid/view/OplusLongshotViewDump;->getTimeSpend(J)J

    move-result-wide v0

    .line 789
    .local v0, "timeSpend":J
    invoke-direct {v7, v11, v0, v1}, Landroid/view/OplusLongshotViewDump;->printSpend(Ljava/lang/String;J)V

    .line 790
    if-eqz v8, :cond_1

    .line 791
    iget-object v2, v7, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/oplus/screenshot/OplusLongshotDump;->setScrollCount(I)V

    .line 792
    iget v2, v7, Landroid/view/OplusLongshotViewDump;->mDumpCount:I

    invoke-virtual {v8, v2}, Lcom/oplus/screenshot/OplusLongshotDump;->setDumpCount(I)V

    .line 793
    invoke-virtual {v8, v0, v1}, Lcom/oplus/screenshot/OplusLongshotDump;->setSpendDump(J)V

    .line 795
    :cond_1
    return-void
.end method

.method private blacklist dumpHierarchyScreenshot(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 799
    .local v0, "timeStart":J
    const-string v2, "dumpHierarchyScreenshot"

    .line 800
    .local v2, "tag":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/view/OplusLongshotViewDump;->printTag(Ljava/lang/String;)V

    .line 801
    iget-object v3, p0, Landroid/view/OplusLongshotViewDump;->mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;

    invoke-virtual {v3}, Lcom/oplus/screenshot/OplusLongshotViewInfo;->reset()V

    .line 802
    iget-object v3, p0, Landroid/view/OplusLongshotViewDump;->mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;

    invoke-direct {p0, p1, v3}, Landroid/view/OplusLongshotViewDump;->dumpViewNodes(Landroid/view/View;Lcom/oplus/screenshot/OplusLongshotViewInfo;)V

    .line 803
    invoke-direct {p0, v0, v1}, Landroid/view/OplusLongshotViewDump;->getTimeSpend(J)J

    move-result-wide v3

    .line 804
    .local v3, "timeSpend":J
    invoke-direct {p0, v2, v3, v4}, Landroid/view/OplusLongshotViewDump;->printSpend(Ljava/lang/String;J)V

    .line 805
    return-void
.end method

.method private blacklist dumpLongshot(Landroid/content/Context;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/oplus/screenshot/OplusLongshotDump;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)V"
        }
    .end annotation

    .line 1308
    .local p5, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p6, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1309
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 1311
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 1312
    invoke-direct {p0, p4, v1, p5, p6}, Landroid/view/OplusLongshotViewDump;->packJsonNode(Lcom/oplus/screenshot/OplusLongshotDump;Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1313
    .local v2, "jsonPack":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1314
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    :cond_0
    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump;->packScrollCapture()Ljava/lang/String;

    move-result-object v3

    .line 1318
    .local v3, "scrollCaptureJson":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1319
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    .end local v2    # "jsonPack":Ljava/lang/String;
    .end local v3    # "scrollCaptureJson":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p4}, Landroid/view/OplusLongshotViewDump;->reportDumpResult(Landroid/content/Context;Lcom/oplus/screenshot/OplusLongshotDump;)V

    .line 1326
    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump;->clearList()V

    .line 1327
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1328
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1329
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1330
    goto :goto_1

    .line 1325
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1322
    :catch_0
    move-exception v2

    .line 1323
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Landroid/view/OplusLongshotViewDump;->DBG:Z

    const-string v4, "LongshotDump"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ERROR : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1331
    :goto_1
    return-void

    .line 1325
    :goto_2
    invoke-direct {p0, p1, p4}, Landroid/view/OplusLongshotViewDump;->reportDumpResult(Landroid/content/Context;Lcom/oplus/screenshot/OplusLongshotDump;)V

    .line 1326
    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump;->clearList()V

    .line 1327
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1328
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1329
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1330
    throw v2
.end method

.method private blacklist dumpLongshot(Landroid/view/ViewRootImpl;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 16
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .param p6, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewRootImpl;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/oplus/screenshot/OplusLongshotDump;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1335
    .local p4, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p5, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v10, "dumpLongshot"

    .line 1336
    .local v10, "tag":Ljava/lang/String;
    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : viewAncestor.mView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LongshotDump"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/view/OplusLongshotViewDump;->dumpLongshot(Landroid/view/ViewRootImpl;Ljava/lang/String;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V

    .line 1340
    move-object/from16 v11, p6

    invoke-direct {v8, v11}, Landroid/view/OplusLongshotViewDump;->parseParam([Ljava/lang/String;)Landroid/view/OplusLongshotViewDump$LongshotDumpParam;

    move-result-object v12

    .line 1341
    .local v12, "params":Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
    iget-boolean v0, v12, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mIsDumpScrollCapture:Z

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, v12, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mExtras:Landroid/os/Bundle;

    invoke-direct {v8, v9, v0}, Landroid/view/OplusLongshotViewDump;->beforeScrollCaptureSearch(Landroid/view/ViewRootImpl;Landroid/os/Bundle;)V

    .line 1343
    iget-wide v13, v12, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mDelay:J

    new-instance v15, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda4;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda4;-><init>(Landroid/view/OplusLongshotViewDump;Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v8, v9, v13, v14, v15}, Landroid/view/OplusLongshotViewDump;->dumpScrollCapture(Landroid/view/ViewRootImpl;JLjava/lang/Runnable;)V

    goto :goto_0

    .line 1346
    :cond_0
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/OplusLongshotViewDump;->dumpLongshot(Landroid/content/Context;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V

    .line 1348
    :goto_0
    return-void
.end method

.method private blacklist dumpLongshot(Landroid/view/ViewRootImpl;Ljava/lang/String;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewRootImpl;",
            "Ljava/lang/String;",
            "Lcom/oplus/screenshot/OplusLongshotDump;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)V"
        }
    .end annotation

    .line 1352
    .local p4, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p5, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 1353
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusLongshotViewDump;->mDumpCount:I

    .line 1354
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, p3, v0}, Landroid/view/OplusLongshotViewDump;->dumpHierarchyLongshot(Lcom/oplus/screenshot/OplusLongshotDump;Landroid/view/View;)V

    .line 1355
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/view/OplusLongshotViewDump;->selectScrollNodes(Ljava/util/List;)V

    .line 1356
    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : mScrollNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/OplusLongshotViewDump;->mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LongshotDump"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-instance v5, Landroid/view/OplusLongshotViewUtils;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/view/OplusLongshotViewUtils;-><init>(Landroid/content/Context;)V

    .line 1358
    .local v5, "utils":Landroid/view/OplusLongshotViewUtils;
    iget-object v6, p0, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    move-object v3, p0

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/view/OplusLongshotViewDump;->calcScrollRects(Lcom/oplus/screenshot/OplusLongshotDump;Landroid/view/OplusLongshotViewUtils;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1359
    return-void
.end method

.method private blacklist dumpScreenshot(Landroid/view/ViewRootImpl;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewRootImpl;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/oplus/screenshot/OplusLongshotDump;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)V"
        }
    .end annotation

    .line 1367
    .local p4, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p5, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    const-string v0, "dumpScreenshot"

    .line 1368
    .local v0, "tag":Ljava/lang/String;
    sget-boolean v1, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : viewAncestor.mView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 1371
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 1373
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 1374
    invoke-direct {p0, p1, v2, v0}, Landroid/view/OplusLongshotViewDump;->dumpScreenshot(Landroid/view/ViewRootImpl;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0, p3, v2, p4, p5}, Landroid/view/OplusLongshotViewDump;->packJsonNode(Lcom/oplus/screenshot/OplusLongshotDump;Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 1376
    .local v4, "jsonPack":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1377
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    .end local v4    # "jsonPack":Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p3}, Landroid/view/OplusLongshotViewDump;->reportDumpResult(Landroid/content/Context;Lcom/oplus/screenshot/OplusLongshotDump;)V

    .line 1384
    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump;->clearList()V

    .line 1385
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1386
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1387
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1388
    goto :goto_1

    .line 1383
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1380
    :catch_0
    move-exception v4

    .line 1381
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ERROR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1389
    :goto_1
    return-void

    .line 1383
    :goto_2
    iget-object v4, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, p3}, Landroid/view/OplusLongshotViewDump;->reportDumpResult(Landroid/content/Context;Lcom/oplus/screenshot/OplusLongshotDump;)V

    .line 1384
    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump;->clearList()V

    .line 1385
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1386
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1387
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1388
    throw v3
.end method

.method private blacklist dumpScreenshot(Landroid/view/ViewRootImpl;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "tag"    # Ljava/lang/String;

    .line 1362
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/OplusLongshotViewDump;->dumpHierarchyScreenshot(Landroid/view/View;)V

    .line 1363
    return-void
.end method

.method private blacklist dumpScrollCapture(Landroid/view/ViewRootImpl;JLjava/lang/Runnable;)V
    .locals 6
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "delayMillis"    # J
    .param p4, "completed"    # Ljava/lang/Runnable;

    .line 358
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    new-instance v1, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;

    iget-object v2, p0, Landroid/view/OplusLongshotViewDump;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;-><init>(Landroid/os/Handler;JLandroid/view/OplusLongshotViewDump$MainThreadExecutor-IA;)V

    invoke-direct {v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;-><init>(Ljava/util/concurrent/Executor;)V

    .line 361
    .local v0, "results":Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;
    invoke-direct {p0, p1, v0}, Landroid/view/OplusLongshotViewDump;->scrollCaptureSearch(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    .line 362
    new-instance v1, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, v0, p4}, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;-><init>(Landroid/view/OplusLongshotViewDump;Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Ljava/lang/Runnable;)V

    .line 363
    .local v1, "onComplete":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->setOnCompleteListener(Ljava/lang/Runnable;)V

    .line 364
    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    iget-object v2, p0, Landroid/view/OplusLongshotViewDump;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getScrollCaptureRequestTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    :cond_0
    return-void
.end method

.method private blacklist dumpScrollNodes(Landroid/view/OplusLongshotViewDump$ViewNode;Landroid/view/View;Landroid/graphics/Point;Ljava/util/List;ILcom/oplus/screenshot/OplusLongshotViewInfo;)V
    .locals 21
    .param p1, "scrollNode"    # Landroid/view/OplusLongshotViewDump$ViewNode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "minSize"    # Landroid/graphics/Point;
    .param p5, "recursion"    # I
    .param p6, "info"    # Lcom/oplus/screenshot/OplusLongshotViewInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            "Landroid/view/View;",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I",
            "Lcom/oplus/screenshot/OplusLongshotViewInfo;",
            ")V"
        }
    .end annotation

    .line 648
    .local p4, "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v9, p6

    if-nez v8, :cond_0

    .line 649
    return-void

    .line 651
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    return-void

    .line 657
    :cond_1
    const-class v3, Landroid/view/ViewExtImpl;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/view/ViewExtImpl;

    .line 658
    .local v10, "viewExt":Landroid/view/ViewExtImpl;
    if-nez v10, :cond_2

    .line 659
    return-void

    .line 661
    :cond_2
    instance-of v3, v8, Landroid/view/ViewGroup;

    if-eqz v3, :cond_11

    .line 663
    invoke-virtual {v10, v9}, Landroid/view/ViewExtImpl;->findViewsLongshotInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z

    .line 664
    iget-object v3, v7, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 665
    if-eqz v1, :cond_5

    .line 666
    iget-object v3, v7, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v5, v1, Landroid/graphics/Point;->x:I

    if-ge v3, v5, :cond_3

    .line 667
    return-void

    .line 669
    :cond_3
    iget-object v3, v7, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v5, v1, Landroid/graphics/Point;->y:I

    if-ge v3, v5, :cond_5

    .line 670
    if-eqz v2, :cond_4

    .line 671
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_4
    return-void

    .line 676
    :cond_5
    iget v3, v7, Landroid/view/OplusLongshotViewDump;->mDumpCount:I

    add-int/2addr v3, v4

    iput v3, v7, Landroid/view/OplusLongshotViewDump;->mDumpCount:I

    .line 677
    invoke-direct {v7, v8}, Landroid/view/OplusLongshotViewDump;->isScrollable(Landroid/view/View;)Z

    move-result v11

    .line 678
    .local v11, "scrollable":Z
    const/4 v3, 0x0

    if-eqz v11, :cond_a

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 680
    .local v5, "timeStart":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .local v12, "msg":Ljava/lang/StringBuilder;
    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    .line 683
    .local v13, "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 684
    if-eqz v0, :cond_6

    move v14, v4

    goto :goto_0

    :cond_6
    move v14, v3

    .line 685
    .local v14, "isChildScrollNode":Z
    :goto_0
    invoke-direct {v7, v8, v14}, Landroid/view/OplusLongshotViewDump;->isValidScrollNode(Landroid/view/View;Z)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 686
    iget-object v15, v7, Landroid/view/OplusLongshotViewDump;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v15, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 687
    new-instance v15, Landroid/view/OplusLongshotViewDump$ViewNode;

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v7, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/OplusLongshotViewDump;->mTempRect2:Landroid/graphics/Rect;

    invoke-direct {v15, v8, v3, v4, v1}, Landroid/view/OplusLongshotViewDump$ViewNode;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v1, v15

    .line 688
    .local v1, "viewNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    if-eqz v14, :cond_7

    .line 689
    invoke-virtual {v0, v1}, Landroid/view/OplusLongshotViewDump$ViewNode;->addChild(Landroid/view/OplusLongshotViewDump$ViewNode;)V

    .line 690
    const-string v3, "isChildScrollNode : "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 692
    :cond_7
    iget-object v3, v7, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    const-string v3, "isScrollNode : "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :goto_1
    move-object v0, v1

    .line 696
    .end local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .local v0, "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    add-int/lit8 v3, p5, 0x1

    .line 697
    .end local p5    # "recursion":I
    .local v3, "recursion":I
    move/from16 p1, v3

    .end local v3    # "recursion":I
    .local p1, "recursion":I
    invoke-direct {v7, v5, v6}, Landroid/view/OplusLongshotViewDump;->getTimeSpend(J)J

    move-result-wide v2

    .line 698
    .local v2, "timeSpend":J
    invoke-virtual {v1, v2, v3}, Landroid/view/OplusLongshotViewDump$ViewNode;->setSpend(J)V

    .line 699
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 700
    .end local v1    # "viewNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local v2    # "timeSpend":J
    move/from16 v1, p1

    goto :goto_2

    .line 701
    .end local v0    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .local p1, "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .restart local p5    # "recursion":I
    :cond_8
    const-string v1, "----rmScrollNode : "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p5

    .line 703
    .end local v14    # "isChildScrollNode":Z
    .end local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local p5    # "recursion":I
    .restart local v0    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .local v1, "recursion":I
    :goto_2
    goto :goto_3

    .line 704
    .end local v0    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local v1    # "recursion":I
    .restart local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .restart local p5    # "recursion":I
    :cond_9
    invoke-direct {v7, v5, v6}, Landroid/view/OplusLongshotViewDump;->getTimeSpend(J)J

    move-result-wide v1

    .line 705
    .local v1, "timeSpend":J
    const-string v3, "---noScrollNode : "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 707
    const-string v3, ":spend="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move/from16 v1, p5

    .line 710
    .end local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local p5    # "recursion":I
    .restart local v0    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .local v1, "recursion":I
    :goto_3
    sget-boolean v2, Landroid/view/OplusLongshotViewDump;->DBG:Z

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LongshotDump"

    invoke-static {v2, v4, v3}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    move v13, v1

    goto :goto_4

    .line 678
    .end local v0    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local v1    # "recursion":I
    .end local v5    # "timeStart":J
    .end local v12    # "msg":Ljava/lang/StringBuilder;
    .end local v13    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .restart local p5    # "recursion":I
    :cond_a
    move/from16 v13, p5

    move-object v12, v0

    .line 712
    .end local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local p5    # "recursion":I
    .local v12, "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .local v13, "recursion":I
    :goto_4
    const/4 v0, 0x1

    if-le v13, v0, :cond_b

    .line 713
    return-void

    .line 715
    :cond_b
    move-object v14, v8

    check-cast v14, Landroid/view/ViewGroup;

    .line 716
    .local v14, "group":Landroid/view/ViewGroup;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 717
    .local v15, "childrenCount":I
    invoke-virtual {v14}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v6

    .line 718
    .local v6, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v6, :cond_c

    invoke-virtual {v14}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    move v4, v0

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    move v5, v4

    .line 719
    .local v5, "customOrder":Z
    const/4 v0, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v2, v0

    .end local p3    # "minSize":Landroid/graphics/Point;
    .end local p4    # "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local v2, "i":I
    .local v3, "minSize":Landroid/graphics/Point;
    .local v4, "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_6
    if-ge v2, v15, :cond_f

    .line 721
    invoke-direct {v7, v15, v2, v5, v14}, Landroid/view/OplusLongshotViewDump;->getAndVerifyPreorderedIndex(IIZLandroid/view/ViewGroup;)I

    move-result v1

    .line 722
    .local v1, "childIndex":I
    invoke-static {v6, v14, v1}, Landroid/view/OplusLongshotViewDump;->getAndVerifyPreorderedView(Ljava/util/ArrayList;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v16

    .line 723
    .local v16, "child":Landroid/view/View;
    const/4 v0, 0x0

    if-eqz v11, :cond_d

    move-object/from16 v17, v0

    goto :goto_7

    :cond_d
    move-object/from16 v17, v3

    :goto_7
    move-object/from16 v3, v17

    .line 724
    if-eqz v11, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, v4

    :goto_8
    move-object v4, v0

    .line 725
    move-object/from16 v0, p0

    move/from16 v17, v1

    .end local v1    # "childIndex":I
    .local v17, "childIndex":I
    move-object v1, v12

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    move-object/from16 v2, v16

    move/from16 v19, v5

    .end local v5    # "customOrder":Z
    .local v19, "customOrder":Z
    move v5, v13

    move-object/from16 v20, v6

    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v20, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/view/OplusLongshotViewDump;->dumpScrollNodes(Landroid/view/OplusLongshotViewDump$ViewNode;Landroid/view/View;Landroid/graphics/Point;Ljava/util/List;ILcom/oplus/screenshot/OplusLongshotViewInfo;)V

    .line 719
    .end local v16    # "child":Landroid/view/View;
    .end local v17    # "childIndex":I
    add-int/lit8 v2, v18, 0x1

    move/from16 v5, v19

    move-object/from16 v6, v20

    .end local v18    # "i":I
    .restart local v2    # "i":I
    goto :goto_6

    .end local v19    # "customOrder":Z
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v5    # "customOrder":Z
    .restart local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_f
    move/from16 v18, v2

    move/from16 v19, v5

    move-object/from16 v20, v6

    .line 727
    .end local v2    # "i":I
    .end local v5    # "customOrder":Z
    .end local v6    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v19    # "customOrder":Z
    .restart local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v20, :cond_10

    .line 728
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 730
    .end local v11    # "scrollable":Z
    .end local v14    # "group":Landroid/view/ViewGroup;
    .end local v15    # "childrenCount":I
    .end local v19    # "customOrder":Z
    .end local v20    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_10
    goto :goto_9

    .line 732
    .end local v3    # "minSize":Landroid/graphics/Point;
    .end local v4    # "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v12    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local v13    # "recursion":I
    .restart local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .restart local p3    # "minSize":Landroid/graphics/Point;
    .restart local p4    # "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local p5    # "recursion":I
    :cond_11
    invoke-virtual {v10, v9}, Landroid/view/ViewExtImpl;->findViewsLongshotInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v13, p5

    move-object v12, v0

    .line 734
    .end local p1    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local p3    # "minSize":Landroid/graphics/Point;
    .end local p4    # "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local p5    # "recursion":I
    .restart local v3    # "minSize":Landroid/graphics/Point;
    .restart local v4    # "small":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v12    # "scrollNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .restart local v13    # "recursion":I
    :goto_9
    return-void
.end method

.method private blacklist dumpViewNodes(Landroid/view/View;Lcom/oplus/screenshot/OplusLongshotViewInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/oplus/screenshot/OplusLongshotViewInfo;

    .line 610
    if-nez p1, :cond_0

    .line 611
    return-void

    .line 613
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    return-void

    .line 616
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/OplusLongshotViewDump;->appendLongshotInfo(Landroid/view/View;Lcom/oplus/screenshot/OplusLongshotViewInfo;)V

    .line 620
    const-class v0, Landroid/view/ViewExtImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewExtImpl;

    .line 621
    .local v0, "viewExt":Landroid/view/ViewExtImpl;
    if-nez v0, :cond_2

    .line 622
    return-void

    .line 624
    :cond_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 626
    invoke-virtual {v0, p2}, Landroid/view/ViewExtImpl;->findViewsLongshotInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z

    .line 627
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 628
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 629
    .local v2, "childrenCount":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v3

    .line 630
    .local v3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v4

    .line 631
    .local v6, "noPreorder":Z
    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 632
    .local v4, "customOrder":Z
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_7

    .line 633
    if-eqz v4, :cond_5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v7

    goto :goto_2

    :cond_5
    move v7, v5

    .line 634
    .local v7, "childIndex":I
    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 635
    .local v8, "child":Landroid/view/View;
    :goto_3
    invoke-direct {p0, v8, p2}, Landroid/view/OplusLongshotViewDump;->dumpViewNodes(Landroid/view/View;Lcom/oplus/screenshot/OplusLongshotViewInfo;)V

    .line 632
    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 637
    .end local v5    # "i":I
    :cond_7
    if-eqz v3, :cond_8

    .line 638
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 640
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "childrenCount":I
    .end local v3    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "customOrder":Z
    .end local v6    # "noPreorder":Z
    :cond_8
    goto :goto_4

    .line 642
    :cond_9
    invoke-virtual {v0, p2}, Landroid/view/ViewExtImpl;->findViewsLongshotInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z

    .line 644
    :goto_4
    return-void
.end method

.method private blacklist floatRectsToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1164
    .local p1, "floatRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const-string v0, "floatRectsToJson:"

    const-string v1, "LongshotDump"

    const/4 v2, 0x0

    .line 1165
    .local v2, "jsFloatArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1166
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v3

    .line 1167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1169
    .local v4, "rect":Landroid/graphics/Rect;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1170
    .local v5, "jsFloat":Lorg/json/JSONObject;
    const-string v6, "float_rect"

    invoke-virtual {v4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1171
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    nop

    .end local v5    # "jsFloat":Lorg/json/JSONObject;
    goto :goto_1

    .line 1174
    :catch_0
    move-exception v5

    .line 1175
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v6, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1172
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1173
    .local v5, "e":Lorg/json/JSONException;
    sget-boolean v6, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1176
    .end local v5    # "e":Lorg/json/JSONException;
    nop

    .line 1177
    .end local v4    # "rect":Landroid/graphics/Rect;
    :goto_1
    goto :goto_0

    .line 1179
    :cond_0
    return-object v2
.end method

.method private blacklist getAccessibilityName(Landroid/view/OplusLongshotViewDump$ViewNode;)Ljava/lang/String;
    .locals 2
    .param p1, "viewNode"    # Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 808
    invoke-virtual {p1}, Landroid/view/OplusLongshotViewDump$ViewNode;->getAccessibilityName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 809
    .local v0, "accessibilityName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 812
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getAndVerifyPreorderedIndex(IIZLandroid/view/ViewGroup;)I
    .locals 4
    .param p1, "childrenCount"    # I
    .param p2, "i"    # I
    .param p3, "customOrder"    # Z
    .param p4, "group"    # Landroid/view/ViewGroup;

    .line 738
    if-eqz p3, :cond_1

    .line 739
    invoke-virtual {p4, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 740
    .local v0, "childIndex1":I
    if-lt v0, p1, :cond_0

    .line 741
    sget-boolean v1, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (child count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_0
    nop

    .line 746
    .local v0, "childIndex":I
    goto :goto_0

    .line 747
    .end local v0    # "childIndex":I
    :cond_1
    move v0, p2

    .line 749
    .restart local v0    # "childIndex":I
    :goto_0
    return v0
.end method

.method private static blacklist getAndVerifyPreorderedView(Ljava/util/ArrayList;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 755
    .local p0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 756
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 757
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 758
    sget-boolean v1, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preorderedList contained null child at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private blacklist getBoundsInWindow(Landroid/view/ScrollCaptureTarget;[ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "target"    # Landroid/view/ScrollCaptureTarget;
    .param p2, "location"    # [I
    .param p3, "boundsInWindow"    # Landroid/graphics/Rect;

    .line 471
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "containingView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 473
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 474
    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 475
    return-void
.end method

.method private blacklist getBoundsOnScreen(Landroid/view/ScrollCaptureTarget;[ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "target"    # Landroid/view/ScrollCaptureTarget;
    .param p2, "location"    # [I
    .param p3, "boundsOnScreen"    # Landroid/graphics/Rect;

    .line 479
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 482
    aget v1, p2, v3

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 483
    return-void
.end method

.method private blacklist getJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "jsonNode"    # Lorg/json/JSONObject;

    .line 1183
    if-nez p1, :cond_0

    .line 1184
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object p1, v0

    .line 1186
    :cond_0
    return-object p1
.end method

.method private blacklist getTimeSpend(J)J
    .locals 2
    .param p1, "timeStart"    # J

    .line 486
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private blacklist getViewClassName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getViewId(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isGalleryRoot(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isGallery(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 598
    return v2

    .line 600
    :cond_0
    instance-of v1, p1, Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_1

    .line 601
    return v2

    .line 603
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isInvalidIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;

    .line 880
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 881
    return v1

    .line 883
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/OplusLongshotViewDump;->isVerticalBar(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    return v1

    .line 886
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isInvalidScrollDistance(Landroid/view/View;I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v0

    .line 551
    .local v0, "scrollExtent":I
    invoke-virtual {p1}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    .line 552
    .local v1, "scrollRange":I
    sub-int v2, v1, v0

    mul-int/2addr v2, p2

    iget v3, p0, Landroid/view/OplusLongshotViewDump;->mMinScrollDistance:I

    mul-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist isLargeHeight(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "dst"    # Landroid/graphics/Rect;
    .param p2, "src"    # Landroid/graphics/Rect;

    .line 872
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isScrollable(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 540
    invoke-direct {p0, p1}, Landroid/view/OplusLongshotViewDump;->canScrollVertically(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 541
    return v1

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/OplusLongshotViewDump;->isScrollableView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    return v1

    .line 546
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isScrollableView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 527
    invoke-static {p1}, Landroid/view/OplusViewCompat;->getAccessibilityClassName(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 528
    .local v0, "accessibilityName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 529
    const-string v1, "android.widget.ListView"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 530
    return v2

    .line 532
    :cond_0
    const-string v1, "android.widget.ScrollView"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    return v2

    .line 536
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isSmallWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "dst"    # Landroid/graphics/Rect;
    .param p2, "src"    # Landroid/graphics/Rect;

    .line 868
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isValidScrollNode(Landroid/view/View;Z)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChildScrollNode"    # Z

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 557
    .local v0, "width":I
    iget v1, p0, Landroid/view/OplusLongshotViewDump;->mScreenWidght:I

    const/4 v2, 0x0

    const-string v3, "LongshotDump"

    if-lez v1, :cond_0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 558
    sget-boolean v1, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ! isValidScrollNode 1 : mScreenWidght="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/OplusLongshotViewDump;->mScreenWidght:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 560
    return v2

    .line 562
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 563
    .local v1, "height":I
    instance-of v4, p1, Landroid/widget/ScrollView;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 564
    iget v4, p0, Landroid/view/OplusLongshotViewDump;->mMinScrollHeight:I

    if-ge v1, v4, :cond_4

    .line 565
    const-string v4, ", mMinScrollHeight="

    if-eqz p2, :cond_1

    .line 566
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ! isValidScrollNode 2 : height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/view/OplusLongshotViewDump;->mMinScrollHeight:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", isChildScrollNode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 569
    return v2

    .line 570
    :cond_1
    invoke-direct {p0, p1, v1}, Landroid/view/OplusLongshotViewDump;->isInvalidScrollDistance(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 571
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ! isValidScrollNode 3 : height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/view/OplusLongshotViewDump;->mMinScrollHeight:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mMinScrollDistance="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/view/OplusLongshotViewDump;->mMinScrollDistance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 574
    return v2

    .line 577
    :cond_2
    iget v4, p0, Landroid/view/OplusLongshotViewDump;->mMinListHeight:I

    if-ge v1, v4, :cond_4

    .line 578
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 579
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v4, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 580
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/view/OplusLongshotViewDump;->mScreenHeight:I

    div-int/lit8 v8, v7, 0x2

    const-string v9, ", height="

    const-string v10, ", rect="

    const-string v11, ", mMinListHeight="

    if-ge v6, v8, :cond_3

    .line 581
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ! isValidScrollNode 4 : mScreenHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/OplusLongshotViewDump;->mScreenHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/OplusLongshotViewDump;->mMinListHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 584
    return v2

    .line 585
    :cond_3
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    iget v6, p0, Landroid/view/OplusLongshotViewDump;->mMinListHeight:I

    if-le v7, v6, :cond_4

    .line 586
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ! isValidScrollNode 5 : mScreenHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/OplusLongshotViewDump;->mScreenHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/OplusLongshotViewDump;->mMinListHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 589
    return v2

    .line 592
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_4
    return v5
.end method

.method private blacklist isVerticalBar(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Rect;
    .param p2, "src"    # Landroid/graphics/Rect;

    .line 876
    invoke-direct {p0, p1, p2}, Landroid/view/OplusLongshotViewDump;->isLargeHeight(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/OplusLongshotViewDump;->isSmallWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist mergeWindowList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;"
        }
    .end annotation

    .line 1110
    .local p1, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p2, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v0, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    if-eqz p1, :cond_0

    .line 1112
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1114
    :cond_0
    if-eqz p2, :cond_1

    .line 1115
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1117
    :cond_1
    return-object v0
.end method

.method private blacklist onScrollCaptureResults(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "results"    # Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;
    .param p3, "completed"    # Ljava/lang/Runnable;

    .line 371
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 372
    invoke-virtual {p2}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureTarget;

    .line 373
    .local v1, "target":Landroid/view/ScrollCaptureTarget;
    invoke-virtual {v1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scroll bounds is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v3, v2}, Lcom/oplus/util/OplusLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v2, p0, Landroid/view/OplusLongshotViewDump;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v1    # "target":Landroid/view/ScrollCaptureTarget;
    goto :goto_0

    .line 379
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 380
    return-void
.end method

.method private blacklist packJsonNode(Lcom/oplus/screenshot/OplusLongshotDump;Ljava/io/PrintWriter;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p1, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/screenshot/OplusLongshotDump;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1191
    .local p3, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p4, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    const-string v0, "packJsonNode:"

    const-string v1, "LongshotDump"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1192
    .local v2, "timeStart":J
    const-string v4, "packJsonNode"

    .line 1193
    .local v4, "tag":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/view/OplusLongshotViewDump;->printTag(Ljava/lang/String;)V

    .line 1194
    const/4 v5, 0x0

    .line 1196
    .local v5, "jsonNode":Lorg/json/JSONObject;
    :try_start_0
    iget-object v6, p0, Landroid/view/OplusLongshotViewDump;->mViewInfo:Lcom/oplus/screenshot/OplusLongshotViewInfo;

    invoke-virtual {v6}, Lcom/oplus/screenshot/OplusLongshotViewInfo;->isUnsupported()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1197
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v6

    .line 1198
    const-string v6, "view_unsupported"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 1200
    :cond_0
    iget-object v6, p0, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1201
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1202
    .local v6, "jsScrollArray":Lorg/json/JSONArray;
    iget-object v7, p0, Landroid/view/OplusLongshotViewDump;->mScrollNodes:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Landroid/view/OplusLongshotViewDump;->scrollNodesToJson(Lorg/json/JSONArray;Ljava/util/List;Z)V

    .line 1203
    invoke-direct {p0, v5}, Landroid/view/OplusLongshotViewDump;->getJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v5, v7

    .line 1204
    const-string v7, "scroll_list"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1206
    .end local v6    # "jsScrollArray":Lorg/json/JSONArray;
    :cond_1
    iget-object v6, p0, Landroid/view/OplusLongshotViewDump;->mSideRects:Ljava/util/List;

    invoke-direct {p0, v6}, Landroid/view/OplusLongshotViewDump;->sideRectsToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1207
    .local v6, "jsSideArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    .line 1208
    invoke-direct {p0, v5}, Landroid/view/OplusLongshotViewDump;->getJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v5, v7

    .line 1209
    const-string v7, "side_list"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1211
    :cond_2
    iget-object v7, p0, Landroid/view/OplusLongshotViewDump;->mFloatRects:Ljava/util/List;

    invoke-direct {p0, v7}, Landroid/view/OplusLongshotViewDump;->floatRectsToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1212
    .local v7, "jsFloatArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_3

    .line 1213
    invoke-direct {p0, v5}, Landroid/view/OplusLongshotViewDump;->getJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v5, v8

    .line 1214
    const-string v8, "float_list"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1216
    :cond_3
    invoke-direct {p0, p3, p4}, Landroid/view/OplusLongshotViewDump;->windowNodesToJson(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1217
    .local v8, "jsWindowArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_4

    .line 1218
    invoke-direct {p0, v5}, Landroid/view/OplusLongshotViewDump;->getJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    move-object v5, v9

    .line 1219
    const-string v9, "window_list"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1224
    .end local v6    # "jsSideArray":Lorg/json/JSONArray;
    .end local v7    # "jsFloatArray":Lorg/json/JSONArray;
    .end local v8    # "jsWindowArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 1225
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v1, v0}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1222
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 1223
    .local v6, "e":Lorg/json/JSONException;
    sget-boolean v7, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v1, v0}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1226
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_0
    nop

    .line 1227
    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 1228
    .local v0, "jsonPack":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v2, v3}, Landroid/view/OplusLongshotViewDump;->getTimeSpend(J)J

    move-result-wide v6

    .line 1229
    .local v6, "timeSpend":J
    invoke-direct {p0, v4, v6, v7}, Landroid/view/OplusLongshotViewDump;->printSpend(Ljava/lang/String;J)V

    .line 1230
    if-eqz p1, :cond_6

    .line 1231
    invoke-virtual {p1, v6, v7}, Lcom/oplus/screenshot/OplusLongshotDump;->setSpendPack(J)V

    .line 1233
    :cond_6
    return-object v0
.end method

.method private blacklist packScrollCapture()Ljava/lang/String;
    .locals 7

    .line 384
    const-string v0, "scrollNodesToJson:"

    const-string v1, "LongshotDump"

    iget-object v2, p0, Landroid/view/OplusLongshotViewDump;->mTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 386
    .local v2, "jsonNode":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 387
    .local v3, "jsScrollCaptureArray":Lorg/json/JSONArray;
    iget-object v4, p0, Landroid/view/OplusLongshotViewDump;->mTargets:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Landroid/view/OplusLongshotViewDump;->scrollCaptureToJson(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 389
    :try_start_0
    const-string v4, "scroll_capture"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v4

    .line 393
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 390
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 391
    .local v4, "e":Lorg/json/JSONException;
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    nop

    .line 395
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 397
    .end local v2    # "jsonNode":Lorg/json/JSONObject;
    .end local v3    # "jsScrollCaptureArray":Lorg/json/JSONArray;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist parseIsDumpScrollCapture(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
    .param p2, "arg"    # Ljava/lang/String;

    .line 1303
    const-string v0, "scroll_capture="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mIsDumpScrollCapture:Z

    .line 1304
    return-void
.end method

.method private blacklist parseIsScrollReset(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
    .param p2, "arg"    # Ljava/lang/String;

    .line 1274
    const-string v0, "scroll_reset="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mIsScrollReset:Z

    .line 1275
    return-void
.end method

.method private blacklist parseParam([Ljava/lang/String;)Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .line 1237
    new-instance v0, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;-><init>(Landroid/view/OplusLongshotViewDump$LongshotDumpParam-IA;)V

    .line 1238
    .local v0, "param":Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
    if-nez p1, :cond_0

    .line 1239
    return-object v0

    .line 1242
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LongshotDump"

    invoke-static {v2, v1}, Lcom/oplus/util/OplusLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 1245
    .local v4, "arg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1246
    goto :goto_1

    .line 1248
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "args:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oplus/util/OplusLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v5, "scroll_capture="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1251
    invoke-direct {p0, v0, v4}, Landroid/view/OplusLongshotViewDump;->parseIsDumpScrollCapture(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V

    .line 1252
    goto :goto_1

    .line 1255
    :cond_2
    const-string v5, "scroll_capture_delay="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1256
    invoke-direct {p0, v0, v4}, Landroid/view/OplusLongshotViewDump;->parseScrollCaptureDelay(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V

    .line 1257
    goto :goto_1

    .line 1260
    :cond_3
    const-string v5, "scroll_capture_compatible="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1261
    invoke-direct {p0, v0, v4}, Landroid/view/OplusLongshotViewDump;->parseScrollCaptureExtras(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V

    .line 1262
    goto :goto_1

    .line 1265
    :cond_4
    const-string v5, "scroll_reset="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1266
    invoke-direct {p0, v0, v4}, Landroid/view/OplusLongshotViewDump;->parseIsScrollReset(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V

    .line 1244
    .end local v4    # "arg":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1270
    :cond_6
    return-object v0
.end method

.method private blacklist parseScrollCaptureDelay(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
    .param p2, "arg"    # Ljava/lang/String;

    .line 1295
    :try_start_0
    const-string v0, "scroll_capture_delay="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mDelay:J

    .line 1296
    iget-object v0, p1, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mExtras:Landroid/os/Bundle;

    const-string v1, "scroll_capture_delay"

    iget-wide v2, p1, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    goto :goto_0

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "LongshotDump"

    const-string v2, "scroll capture delay error."

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1300
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method private blacklist parseScrollCaptureExtras(Landroid/view/OplusLongshotViewDump$LongshotDumpParam;Ljava/lang/String;)V
    .locals 6
    .param p1, "param"    # Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
    .param p2, "arg"    # Ljava/lang/String;

    .line 1278
    const-string v0, "scroll_capture_compatible="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "extrasJson":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1281
    .local v1, "extras":Landroid/os/Bundle;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1284
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1285
    .local v5, "type":I
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1286
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "type":I
    goto :goto_0

    .line 1287
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p1, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mExtras:Landroid/os/Bundle;

    const-string v4, "scroll_capture_compatible"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    .end local v2    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .line 1288
    :catch_0
    move-exception v2

    .line 1289
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "LongshotDump"

    const-string v4, "scroll capture extras error."

    invoke-static {v3, v4, v2}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1291
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private blacklist printContentView(Landroid/view/OplusLongshotViewContent;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "content"    # Landroid/view/OplusLongshotViewContent;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 890
    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    if-eqz v0, :cond_1

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v1, " : {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 896
    if-eqz p3, :cond_0

    .line 897
    const-string v1, "} => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 900
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 902
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private blacklist printMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 490
    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    const-string v1, "LongshotDump"

    invoke-static {v0, v1, p1}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private blacklist printScrollNodes(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            ">;)V"
        }
    .end annotation

    .line 507
    .local p2, "scrollNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewDump$ViewNode;>;"
    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 510
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 511
    .local v1, "viewNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/OplusLongshotViewDump$ViewNode;->getChildList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/view/OplusLongshotViewDump;->printScrollNodes(Ljava/lang/String;Ljava/util/List;)V

    .line 513
    .end local v1    # "viewNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    goto :goto_0

    .line 514
    :cond_1
    return-void
.end method

.method private blacklist printSpend(Ljava/lang/String;J)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "timeSpend"    # J

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, " : spend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "logSpend":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private blacklist printTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private blacklist reportDumpResult(Landroid/content/Context;Lcom/oplus/screenshot/OplusLongshotDump;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;

    .line 1044
    if-eqz p2, :cond_0

    .line 1045
    invoke-static {p1}, Lcom/oplus/screenshot/OplusLongshotUtils;->getScreenshotManager(Landroid/content/Context;)Lcom/oplus/screenshot/OplusScreenshotManager;

    move-result-object v0

    .line 1046
    .local v0, "sm":Lcom/oplus/screenshot/OplusScreenshotManager;
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0, p2}, Lcom/oplus/screenshot/OplusScreenshotManager;->reportLongshotDumpResult(Lcom/oplus/screenshot/OplusLongshotDump;)V

    .line 1050
    .end local v0    # "sm":Lcom/oplus/screenshot/OplusScreenshotManager;
    :cond_0
    return-void
.end method

.method private blacklist scrollCaptureSearch(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V
    .locals 7
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "results"    # Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    .line 339
    invoke-virtual {p2}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->getResults()Landroid/view/ScrollCaptureSearchResults;

    move-result-object v0

    .line 340
    .local v0, "androidResults":Landroid/view/ScrollCaptureSearchResults;
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/IViewRootImplWrapper;->collectRootScrollCaptureTargets(Landroid/view/ScrollCaptureSearchResults;)V

    .line 342
    invoke-virtual {v0}, Landroid/view/ScrollCaptureSearchResults;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ScrollCaptureTarget;

    .line 343
    .local v2, "target":Landroid/view/ScrollCaptureTarget;
    invoke-virtual {p2, v2}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->addTarget(Landroid/view/ScrollCaptureTarget;)V

    .line 344
    .end local v2    # "target":Landroid/view/ScrollCaptureTarget;
    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 348
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 349
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 350
    .local v2, "point":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v1, v3, v2}, Landroid/view/ViewRootImpl;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 352
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda2;

    invoke-direct {v4, p2}, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda2;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/View;->dispatchScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    .line 354
    .end local v2    # "point":Landroid/graphics/Point;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method private blacklist scrollCaptureToJson(Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 16
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/ScrollCaptureTarget;>;"
    move-object/from16 v1, p0

    const-string v2, "scrollNodesToJson:"

    const-string v3, "LongshotDump"

    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 404
    .local v4, "tmpLocation":[I
    const/4 v0, 0x0

    .line 405
    .local v0, "boundsOnScreen":Z
    const/4 v5, 0x0

    .line 406
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 407
    .local v6, "windowTitle":Ljava/lang/String;
    const/4 v7, 0x0

    .line 408
    .local v7, "viewAncestor":Landroid/view/ViewRootImpl;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v0

    .end local v0    # "boundsOnScreen":Z
    .local v5, "boundsOnScreen":Z
    .local v6, "packageName":Ljava/lang/String;
    .local v7, "windowTitle":Ljava/lang/String;
    .local v9, "viewAncestor":Landroid/view/ViewRootImpl;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/ScrollCaptureTarget;

    .line 409
    .local v10, "target":Landroid/view/ScrollCaptureTarget;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v11, v0

    .line 411
    .local v11, "jsonTarget":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v10}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "view":Landroid/view/View;
    const-string v12, "view_hash"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 413
    const-string v12, "view_id"

    invoke-direct {v1, v0}, Landroid/view/OplusLongshotViewDump;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v12, "view_class_name"

    invoke-direct {v1, v0}, Landroid/view/OplusLongshotViewDump;->getViewClassName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    invoke-virtual {v10}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v13, 0x1

    const-string v15, "scroll_capture_enable"

    if-eqz v12, :cond_0

    .line 417
    :try_start_1
    iget-object v12, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {v1, v10, v4, v12}, Landroid/view/OplusLongshotViewDump;->getBoundsInWindow(Landroid/view/ScrollCaptureTarget;[ILandroid/graphics/Rect;)V

    .line 418
    const-string v12, "bounds_in_window"

    iget-object v14, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    invoke-virtual {v11, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 421
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v11, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 424
    :goto_1
    if-nez v5, :cond_1

    .line 425
    iget-object v12, v1, Landroid/view/OplusLongshotViewDump;->mTempRect2:Landroid/graphics/Rect;

    invoke-direct {v1, v10, v4, v12}, Landroid/view/OplusLongshotViewDump;->getBoundsOnScreen(Landroid/view/ScrollCaptureTarget;[ILandroid/graphics/Rect;)V

    .line 426
    const/4 v5, 0x1

    .line 428
    :cond_1
    const-string v12, "window_bounds"

    iget-object v14, v1, Landroid/view/OplusLongshotViewDump;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    if-nez v6, :cond_2

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 433
    :cond_2
    const-string v12, "package_name"

    invoke-virtual {v11, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    if-nez v7, :cond_4

    .line 436
    if-nez v9, :cond_3

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    move-object v9, v12

    .line 439
    :cond_3
    if-eqz v9, :cond_4

    .line 440
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 443
    :cond_4
    const-string v12, "window_title"

    invoke-virtual {v11, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    invoke-virtual {v10}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v12

    instance-of v12, v12, Lcom/android/internal/view/ScrollCaptureViewSupport;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v14, "app_impl"

    if-nez v12, :cond_6

    :try_start_2
    invoke-virtual {v10}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v12

    instance-of v12, v12, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    if-eqz v12, :cond_5

    goto :goto_2

    .line 447
    :cond_5
    invoke-virtual {v11, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    .line 445
    :cond_6
    :goto_2
    const/4 v12, 0x0

    invoke-virtual {v11, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    :goto_3
    move-object/from16 v12, p1

    :try_start_3
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 455
    nop

    .end local v0    # "view":Landroid/view/View;
    goto :goto_6

    .line 453
    :catch_0
    move-exception v0

    goto :goto_4

    .line 451
    :catch_1
    move-exception v0

    goto :goto_5

    .line 453
    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    sget-boolean v13, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v3, v14}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    .line 452
    .local v0, "e":Lorg/json/JSONException;
    :goto_5
    sget-boolean v13, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v3, v14}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 455
    .end local v0    # "e":Lorg/json/JSONException;
    nop

    .line 456
    .end local v10    # "target":Landroid/view/ScrollCaptureTarget;
    .end local v11    # "jsonTarget":Lorg/json/JSONObject;
    :goto_6
    goto/16 :goto_0

    .line 457
    :cond_7
    move-object/from16 v12, p1

    return-void
.end method

.method private blacklist scrollNodesToJson(Lorg/json/JSONArray;Ljava/util/List;Z)V
    .locals 24
    .param p1, "jsScrollArray"    # Lorg/json/JSONArray;
    .param p3, "isChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            ">;Z)V"
        }
    .end annotation

    .line 1053
    .local p2, "scrollNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewDump$ViewNode;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "scrollNodesToJson:"

    const-string v4, "LongshotDump"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 1054
    .local v6, "viewNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    invoke-virtual {v6}, Landroid/view/OplusLongshotViewDump$ViewNode;->getView()Landroid/view/View;

    move-result-object v7

    .line 1055
    .local v7, "view":Landroid/view/View;
    instance-of v0, v7, Landroid/view/ViewGroup;

    const/4 v8, 0x1

    if-eqz v0, :cond_9

    .line 1056
    const/4 v9, 0x0

    .line 1058
    .local v9, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    move-object v0, v7

    check-cast v0, Landroid/view/ViewGroup;

    .line 1059
    .local v0, "group":Landroid/view/ViewGroup;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1060
    .local v10, "jsScrollView":Lorg/json/JSONObject;
    const-string v11, "parent_hash"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1061
    iget-object v11, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 1062
    const-string v11, "parent_rect_full"

    iget-object v13, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    iget-object v11, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v8}, Landroid/view/ViewGroup;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 1064
    const-string v11, "parent_rect_clip"

    iget-object v13, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    invoke-virtual {v6}, Landroid/view/OplusLongshotViewDump$ViewNode;->getScrollRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 1066
    .local v11, "scrollRect":Landroid/graphics/Rect;
    const-string v13, "scroll_rect"

    invoke-virtual {v11}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    const-string v13, "scroll_child"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v14, p3

    :try_start_1
    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1068
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 1069
    .local v13, "jsChildArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 1070
    .local v15, "childrenCount":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v16
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v9, v16

    .line 1071
    if-nez v9, :cond_0

    move/from16 v16, v8

    goto :goto_1

    :cond_0
    move/from16 v16, v12

    .line 1072
    .local v16, "noPreorder":Z
    :goto_1
    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v8

    goto :goto_2

    .line 1100
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v10    # "jsScrollView":Lorg/json/JSONObject;
    .end local v11    # "scrollRect":Landroid/graphics/Rect;
    .end local v13    # "jsChildArray":Lorg/json/JSONArray;
    .end local v15    # "childrenCount":I
    .end local v16    # "noPreorder":Z
    :catchall_0
    move-exception v0

    move-object/from16 v20, v7

    goto/16 :goto_f

    .line 1097
    :catch_0
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    goto/16 :goto_a

    .line 1095
    :catch_1
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    goto/16 :goto_d

    .line 1072
    .restart local v0    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "jsScrollView":Lorg/json/JSONObject;
    .restart local v11    # "scrollRect":Landroid/graphics/Rect;
    .restart local v13    # "jsChildArray":Lorg/json/JSONArray;
    .restart local v15    # "childrenCount":I
    .restart local v16    # "noPreorder":Z
    :cond_1
    move/from16 v17, v12

    .line 1073
    .local v17, "customOrder":Z
    :goto_2
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "i":I
    :goto_3
    if-ge v8, v15, :cond_7

    .line 1074
    if-eqz v17, :cond_2

    invoke-virtual {v0, v15, v8}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v18

    goto :goto_4

    :cond_2
    move/from16 v18, v8

    :goto_4
    move/from16 v19, v18

    .line 1075
    .local v19, "childIndex":I
    if-eqz v16, :cond_3

    move/from16 v12, v19

    .end local v19    # "childIndex":I
    .local v12, "childIndex":I
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .end local v12    # "childIndex":I
    .restart local v19    # "childIndex":I
    :cond_3
    move/from16 v12, v19

    .end local v19    # "childIndex":I
    .restart local v12    # "childIndex":I
    :try_start_3
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    move-object/from16 v20, v19

    .line 1076
    .local v20, "child":Landroid/view/View;
    move-object/from16 v19, v5

    move-object/from16 v5, v20

    .end local v20    # "child":Landroid/view/View;
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_4

    .line 1077
    move-object/from16 v20, v7

    move-object/from16 v22, v11

    goto :goto_6

    .line 1079
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Landroid/view/View;->isVisibleToUser()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1080
    move-object/from16 v20, v7

    move-object/from16 v22, v11

    goto :goto_6

    .line 1082
    :cond_5
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v21, v20

    .line 1083
    .local v21, "jsChild":Lorg/json/JSONObject;
    move-object/from16 v20, v7

    .end local v7    # "view":Landroid/view/View;
    .local v20, "view":Landroid/view/View;
    :try_start_5
    const-string v7, "child_hash"

    move-object/from16 v22, v11

    .end local v11    # "scrollRect":Landroid/graphics/Rect;
    .local v22, "scrollRect":Landroid/graphics/Rect;
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    move/from16 v23, v12

    move-object/from16 v12, v21

    .end local v21    # "jsChild":Lorg/json/JSONObject;
    .local v12, "jsChild":Lorg/json/JSONObject;
    .local v23, "childIndex":I
    invoke-virtual {v12, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1084
    iget-object v7, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v5, v7, v11}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 1085
    const-string v7, "child_rect_full"

    iget-object v11, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1086
    iget-object v7, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    const/4 v11, 0x1

    invoke-virtual {v5, v7, v11}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 1087
    const-string v7, "child_rect_clip"

    iget-object v11, v1, Landroid/view/OplusLongshotViewDump;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1088
    instance-of v7, v0, Landroid/widget/ScrollView;

    if-eqz v7, :cond_6

    .line 1089
    const-string v7, "child_scrollY"

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v11

    invoke-virtual {v12, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1091
    :cond_6
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1073
    .end local v5    # "child":Landroid/view/View;
    .end local v12    # "jsChild":Lorg/json/JSONObject;
    .end local v23    # "childIndex":I
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v11, v22

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1097
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v10    # "jsScrollView":Lorg/json/JSONObject;
    .end local v13    # "jsChildArray":Lorg/json/JSONArray;
    .end local v15    # "childrenCount":I
    .end local v16    # "noPreorder":Z
    .end local v17    # "customOrder":Z
    .end local v20    # "view":Landroid/view/View;
    .end local v22    # "scrollRect":Landroid/graphics/Rect;
    .restart local v7    # "view":Landroid/view/View;
    :catch_2
    move-exception v0

    goto :goto_9

    .line 1095
    :catch_3
    move-exception v0

    goto :goto_c

    .line 1073
    .restart local v0    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v10    # "jsScrollView":Lorg/json/JSONObject;
    .restart local v11    # "scrollRect":Landroid/graphics/Rect;
    .restart local v13    # "jsChildArray":Lorg/json/JSONArray;
    .restart local v15    # "childrenCount":I
    .restart local v16    # "noPreorder":Z
    .restart local v17    # "customOrder":Z
    :cond_7
    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v22, v11

    .line 1093
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "i":I
    .end local v11    # "scrollRect":Landroid/graphics/Rect;
    .restart local v20    # "view":Landroid/view/View;
    .restart local v22    # "scrollRect":Landroid/graphics/Rect;
    const-string v5, "child_list"

    invoke-virtual {v10, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1100
    nop

    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v10    # "jsScrollView":Lorg/json/JSONObject;
    .end local v13    # "jsChildArray":Lorg/json/JSONArray;
    .end local v15    # "childrenCount":I
    .end local v16    # "noPreorder":Z
    .end local v17    # "customOrder":Z
    .end local v22    # "scrollRect":Landroid/graphics/Rect;
    if-eqz v9, :cond_a

    .line 1101
    goto :goto_e

    .line 1097
    :catch_4
    move-exception v0

    goto :goto_a

    .line 1095
    :catch_5
    move-exception v0

    goto :goto_d

    .line 1100
    .end local v20    # "view":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/View;
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1097
    :catch_6
    move-exception v0

    goto :goto_8

    .line 1095
    :catch_7
    move-exception v0

    goto :goto_b

    .line 1100
    :catchall_2
    move-exception v0

    move/from16 v14, p3

    :goto_7
    move-object/from16 v20, v7

    .end local v7    # "view":Landroid/view/View;
    .restart local v20    # "view":Landroid/view/View;
    goto :goto_f

    .line 1097
    .end local v20    # "view":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/View;
    :catch_8
    move-exception v0

    move/from16 v14, p3

    :goto_8
    move-object/from16 v19, v5

    :goto_9
    move-object/from16 v20, v7

    .line 1098
    .end local v7    # "view":Landroid/view/View;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "view":Landroid/view/View;
    :goto_a
    :try_start_6
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v4, v7}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_a

    .line 1101
    goto :goto_e

    .line 1095
    .end local v20    # "view":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/View;
    :catch_9
    move-exception v0

    move/from16 v14, p3

    :goto_b
    move-object/from16 v19, v5

    :goto_c
    move-object/from16 v20, v7

    .line 1096
    .end local v7    # "view":Landroid/view/View;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v20    # "view":Landroid/view/View;
    :goto_d
    sget-boolean v5, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v4, v7}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1100
    .end local v0    # "e":Lorg/json/JSONException;
    if-eqz v9, :cond_a

    .line 1101
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_10

    .line 1100
    :catchall_3
    move-exception v0

    :goto_f
    if-eqz v9, :cond_8

    .line 1101
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1103
    :cond_8
    throw v0

    .line 1055
    .end local v9    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v20    # "view":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/View;
    :cond_9
    move/from16 v14, p3

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    .line 1105
    .end local v7    # "view":Landroid/view/View;
    .restart local v20    # "view":Landroid/view/View;
    :cond_a
    :goto_10
    invoke-virtual {v6}, Landroid/view/OplusLongshotViewDump$ViewNode;->getChildList()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v0, v5}, Landroid/view/OplusLongshotViewDump;->scrollNodesToJson(Lorg/json/JSONArray;Ljava/util/List;Z)V

    .line 1106
    .end local v6    # "viewNode":Landroid/view/OplusLongshotViewDump$ViewNode;
    .end local v20    # "view":Landroid/view/View;
    move-object/from16 v5, v19

    goto/16 :goto_0

    .line 1107
    :cond_b
    move/from16 v14, p3

    return-void
.end method

.method private blacklist selectScrollNodes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            ">;)V"
        }
    .end annotation

    .line 816
    .local p1, "scrollNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewDump$ViewNode;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    return-void

    .line 819
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 820
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 822
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/OplusLongshotViewDump$ViewNode;

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 823
    invoke-virtual {v0}, Landroid/view/OplusLongshotViewDump$ViewNode;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/OplusLongshotViewDump;->selectScrollNodes(Ljava/util/List;)V

    .line 824
    return-void
.end method

.method private blacklist sideRectsToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1145
    .local p1, "sideRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const-string v0, "sideRectsToJson:"

    const-string v1, "LongshotDump"

    const/4 v2, 0x0

    .line 1146
    .local v2, "jsSideArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1147
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v3

    .line 1148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1150
    .local v4, "rect":Landroid/graphics/Rect;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1151
    .local v5, "jsSide":Lorg/json/JSONObject;
    const-string v6, "side_rect"

    invoke-virtual {v4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1152
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    nop

    .end local v5    # "jsSide":Lorg/json/JSONObject;
    goto :goto_1

    .line 1155
    :catch_0
    move-exception v5

    .line 1156
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v6, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1153
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1154
    .local v5, "e":Lorg/json/JSONException;
    sget-boolean v6, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1157
    .end local v5    # "e":Lorg/json/JSONException;
    nop

    .line 1158
    .end local v4    # "rect":Landroid/graphics/Rect;
    :goto_1
    goto :goto_0

    .line 1160
    :cond_0
    return-object v2
.end method

.method private blacklist updateCoverRect(Landroid/view/OplusLongshotViewUtils;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "utils"    # Landroid/view/OplusLongshotViewUtils;
    .param p2, "dstRect"    # Landroid/graphics/Rect;
    .param p3, "srcRect"    # Landroid/graphics/Rect;
    .param p4, "coverRect"    # Landroid/graphics/Rect;

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    updateCoverRect : dstRect= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcRect= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverRect= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 828
    invoke-static {p4, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 829
    return v1

    .line 831
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 832
    .local v0, "rect":Landroid/graphics/Rect;
    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 833
    .local v2, "diffT":I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 834
    .local v3, "diffB":I
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 835
    const-string v4, "    updateCoverRect : diffT = diffB = 0"

    invoke-direct {p0, v4}, Landroid/view/OplusLongshotViewDump;->printMsg(Ljava/lang/String;)V

    .line 836
    return v1

    .line 838
    :cond_1
    if-le v3, v2, :cond_2

    .line 839
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 841
    :cond_2
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 843
    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/view/OplusLongshotViewDump;->isLargeHeight(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 844
    .local v1, "update":Z
    if-nez v1, :cond_4

    .line 845
    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 846
    .local v4, "top":I
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 847
    .local v5, "bottom":I
    if-le v5, v4, :cond_3

    sub-int v6, v5, v4

    iget v7, p0, Landroid/view/OplusLongshotViewDump;->mCoverHeight:I

    if-gt v6, v7, :cond_3

    .line 848
    const/4 v1, 0x1

    goto :goto_1

    .line 849
    :cond_3
    invoke-virtual {p1, p4, p3}, Landroid/view/OplusLongshotViewUtils;->isBottomBarRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 850
    const/4 v1, 0x1

    .line 853
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 854
    iget-object v4, p0, Landroid/view/OplusLongshotViewDump;->mFloatRects:Ljava/util/List;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 856
    .restart local v4    # "top":I
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 857
    .restart local v5    # "bottom":I
    if-gt v5, v4, :cond_5

    .line 858
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 860
    :cond_5
    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 861
    iput v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 864
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    :cond_6
    :goto_2
    return v1
.end method

.method private blacklist windowNodesToJson(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1121
    .local p1, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p2, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    const-string v0, "windowNodesToJson:"

    const-string v1, "LongshotDump"

    const/4 v2, 0x0

    .line 1122
    .local v2, "jsWindowArray":Lorg/json/JSONArray;
    invoke-direct {p0, p1, p2}, Landroid/view/OplusLongshotViewDump;->mergeWindowList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1123
    .local v3, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1124
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v4

    .line 1125
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/view/analysis/OplusWindowNode;

    .line 1127
    .local v5, "window":Lcom/oplus/view/analysis/OplusWindowNode;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1128
    .local v6, "jsWindow":Lorg/json/JSONObject;
    const-string v7, "window_statbar"

    invoke-virtual {v5}, Lcom/oplus/view/analysis/OplusWindowNode;->isStatusBar()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1129
    const-string v7, "window_navibar"

    invoke-virtual {v5}, Lcom/oplus/view/analysis/OplusWindowNode;->isNavigationBar()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1130
    const-string v7, "window_layer"

    invoke-virtual {v5}, Lcom/oplus/view/analysis/OplusWindowNode;->getSurfaceLayer()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1131
    const-string v7, "window_rect_decor"

    invoke-virtual {v5}, Lcom/oplus/view/analysis/OplusWindowNode;->getDecorRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1132
    const-string v7, "window_rect_visible"

    invoke-virtual {v5}, Lcom/oplus/view/analysis/OplusWindowNode;->getCoverRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1133
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    nop

    .end local v6    # "jsWindow":Lorg/json/JSONObject;
    goto :goto_1

    .line 1136
    :catch_0
    move-exception v6

    .line 1137
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1134
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 1135
    .local v6, "e":Lorg/json/JSONException;
    sget-boolean v7, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1138
    .end local v6    # "e":Lorg/json/JSONException;
    nop

    .line 1139
    .end local v5    # "window":Lcom/oplus/view/analysis/OplusWindowNode;
    :goto_1
    goto/16 :goto_0

    .line 1141
    :cond_0
    return-object v2
.end method


# virtual methods
.method public blacklist collectWindow(Landroid/view/View;ZZ)Lcom/oplus/view/analysis/OplusWindowNode;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isStatusBar"    # Z
    .param p3, "isNavigationBar"    # Z

    .line 171
    new-instance v0, Lcom/oplus/view/analysis/OplusWindowNode;

    invoke-direct {v0, p1, p2, p3}, Lcom/oplus/view/analysis/OplusWindowNode;-><init>(Landroid/view/View;ZZ)V

    return-object v0
.end method

.method public blacklist dumpViewRoot(Landroid/view/ViewRootImpl;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;Z[Ljava/lang/String;)V
    .locals 11
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "isLongshot"    # Z
    .param p6, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewRootImpl;",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 176
    .local p3, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p4, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    move-object v8, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpViewRoot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LongshotDump"

    invoke-static {v1, v0}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object v9, p1

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 179
    .local v10, "res":Landroid/content/res/Resources;
    const v0, 0xc050072

    :try_start_0
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v8, Landroid/view/OplusLongshotViewDump;->mMinScrollHeight:I

    .line 180
    const v0, 0xc050073

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v8, Landroid/view/OplusLongshotViewDump;->mMinScrollDistance:I

    .line 181
    const v0, 0xc050074

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v8, Landroid/view/OplusLongshotViewDump;->mMinListHeight:I

    .line 182
    const v0, 0xc050075

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v8, Landroid/view/OplusLongshotViewDump;->mCoverHeight:I

    .line 183
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v8, Landroid/view/OplusLongshotViewDump;->mScreenHeight:I

    .line 184
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v8, Landroid/view/OplusLongshotViewDump;->mScreenWidght:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "result":Lcom/oplus/screenshot/OplusLongshotDump;
    if-eqz p5, :cond_0

    .line 192
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/view/OplusLongshotViewDump;->dumpLongshot(Landroid/view/ViewRootImpl;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/OplusLongshotViewDump;->dumpScreenshot(Landroid/view/ViewRootImpl;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V

    .line 196
    :goto_0
    return-void

    .line 185
    .end local v0    # "result":Lcom/oplus/screenshot/OplusLongshotDump;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 187
    sget-boolean v2, Landroid/view/OplusLongshotViewDump;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public blacklist injectInputBegin()V
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/OplusLongshotViewDump$ViewNode;->disableOverScroll()V

    .line 202
    :cond_0
    return-void
.end method

.method public blacklist injectInputEnd()V
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/view/OplusLongshotViewDump$ViewNode;->resetOverScroll()V

    .line 208
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$dumpLongshot$2$android-view-OplusLongshotViewDump(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;
    .param p5, "systemWindows"    # Ljava/util/List;
    .param p6, "floatWindows"    # Ljava/util/List;

    .line 1344
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/view/OplusLongshotViewDump;->dumpLongshot(Landroid/content/Context;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/oplus/screenshot/OplusLongshotDump;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method synthetic blacklist lambda$dumpScrollCapture$1$android-view-OplusLongshotViewDump(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "results"    # Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;
    .param p3, "completed"    # Ljava/lang/Runnable;

    .line 362
    invoke-direct {p0, p1, p2, p3}, Landroid/view/OplusLongshotViewDump;->onScrollCaptureResults(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$requestScrollCapture$0$android-view-OplusLongshotViewDump(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V
    .locals 0
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "listener"    # Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .param p3, "results"    # Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/view/OplusLongshotViewDump;->dispatchScrollCaptureSearchResponse(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;
    .param p2, "listener"    # Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 229
    invoke-direct {p0, p1, p3}, Landroid/view/OplusLongshotViewDump;->beforeScrollCaptureSearch(Landroid/view/ViewRootImpl;Landroid/os/Bundle;)V

    .line 231
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    .line 232
    invoke-direct {p0, p1, p3}, Landroid/view/OplusLongshotViewDump;->createExcutor(Landroid/view/ViewRootImpl;Landroid/os/Bundle;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;-><init>(Ljava/util/concurrent/Executor;)V

    .line 234
    .local v0, "results":Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;
    invoke-direct {p0, p1, v0}, Landroid/view/OplusLongshotViewDump;->scrollCaptureSearch(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    .line 235
    new-instance v1, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda0;-><init>(Landroid/view/OplusLongshotViewDump;Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    .line 236
    .local v1, "onComplete":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->setOnCompleteListener(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    iget-object v2, p0, Landroid/view/OplusLongshotViewDump;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getScrollCaptureRequestTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_0
    return-void
.end method

.method public blacklist reset()V
    .locals 3

    .line 211
    sget-boolean v0, Landroid/view/OplusLongshotViewDump;->DBG:Z

    const-string v1, "LongshotDump"

    const-string v2, "reset ViewDump"

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/view/OplusLongshotViewDump;->injectInputEnd()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump;->mScrollNode:Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 214
    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump;->clearList()V

    .line 215
    return-void
.end method
