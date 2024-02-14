.class public Landroid/view/OplusViewRootUtil;
.super Ljava/lang/Object;
.source "OplusViewRootUtil.java"

# interfaces
.implements Landroid/view/IOplusViewRootUtil;


# static fields
.field private static final blacklist EVENT_270:F = 1.5707964f

.field private static final blacklist EVENT_90:F = -1.5707964f

.field private static final blacklist EVENT_ORI:F = 0.0f

.field private static final blacklist EVENT_OTHER:F = -3.1415927f

.field private static final blacklist GESTURE_BOTTOM_AREA_PROP:F = 0.05f

.field private static final blacklist GLOABL_SCALE_COMPAT_APP:F = 1.333333f

.field private static final blacklist HATEEROMORPHISM:Ljava/lang/String; = "oppo.systemui.disable.edgepanel"

.field public static final blacklist KEY_NAVIGATIONBAR_MODE:Ljava/lang/String; = "hide_navigationbar_enable"

.field private static final blacklist LOCAL_LOGV:Z = true

.field private static final blacklist MODE_NAVIGATIONBAR:I = 0x0

.field private static final blacklist MODE_NAVIGATIONBAR_GESTURE:I = 0x2

.field private static final blacklist MODE_NAVIGATIONBAR_GESTURE_SIDE:I = 0x3

.field private static final blacklist MODE_NAVIGATIONBAR_WITH_HIDE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OplusViewRootUtil"

.field private static blacklist mHeteromorphism:Z

.field private static blacklist mHeteromorphismHeight:I

.field private static blacklist sInstance:Landroid/view/OplusViewRootUtil;


# instance fields
.field private blacklist mCompactScale:F

.field private blacklist mDisplayInfo:Landroid/view/DisplayInfo;

.field private blacklist mFullScreen:Z

.field private blacklist mHideNavigationbarArea:I

.field private blacklist mIgnoring:Z

.field private blacklist mIsDisplayCompatApp:Z

.field private blacklist mNavBarMode:I

.field private blacklist mScreenHeight:I

.field private blacklist mScreenWidth:I

.field private blacklist mSideGestureAreaWidth:I

.field private blacklist mStatusBarHeight:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/view/OplusViewRootUtil;->sInstance:Landroid/view/OplusViewRootUtil;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/OplusViewRootUtil;->mHeteromorphism:Z

    .line 48
    const/4 v0, -0x1

    sput v0, Landroid/view/OplusViewRootUtil;->mHeteromorphismHeight:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/OplusViewRootUtil;->mCompactScale:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusViewRootUtil;->mFullScreen:Z

    .line 50
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Landroid/view/OplusViewRootUtil;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusViewRootUtil;->mNavBarMode:I

    .line 87
    return-void
.end method

.method public static blacklist getInstance()Landroid/view/OplusViewRootUtil;
    .locals 2

    .line 77
    const-class v0, Landroid/view/OplusViewRootUtil;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Landroid/view/OplusViewRootUtil;->sInstance:Landroid/view/OplusViewRootUtil;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Landroid/view/OplusViewRootUtil;

    invoke-direct {v1}, Landroid/view/OplusViewRootUtil;-><init>()V

    sput-object v1, Landroid/view/OplusViewRootUtil;->sInstance:Landroid/view/OplusViewRootUtil;

    .line 81
    :cond_0
    sget-object v1, Landroid/view/OplusViewRootUtil;->sInstance:Landroid/view/OplusViewRootUtil;

    monitor-exit v0

    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist shouldIgnore(IILandroid/view/MotionEvent;Landroid/view/Display;)Z
    .locals 18
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "display"    # Landroid/view/Display;

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const-string v3, "OplusViewRootUtil"

    if-eqz v2, :cond_0

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do not ignore inject event MotionEvent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v2, 0x0

    return v2

    .line 238
    :cond_0
    const/4 v2, 0x0

    .line 239
    .local v2, "ignore":Z
    const/4 v4, 0x0

    .line 240
    .local v4, "rotation":I
    if-eqz p4, :cond_1

    .line 241
    invoke-virtual/range {p4 .. p4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 243
    :cond_1
    iget-boolean v5, v0, Landroid/view/OplusViewRootUtil;->mIsDisplayCompatApp:Z

    if-eqz v5, :cond_2

    .line 244
    const-string v5, "shouldIgnore, sIsDisplayCompatApp"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move/from16 v5, p1

    int-to-float v6, v5

    const v7, 0x3faaaaa8

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 246
    .end local p1    # "downX":I
    .local v5, "downX":I
    move/from16 v6, p2

    int-to-float v8, v6

    mul-float/2addr v8, v7

    float-to-int v6, v8

    .end local p2    # "downY":I
    .local v6, "downY":I
    goto :goto_0

    .line 243
    .end local v5    # "downX":I
    .end local v6    # "downY":I
    .restart local p1    # "downX":I
    .restart local p2    # "downY":I
    :cond_2
    move/from16 v5, p1

    move/from16 v6, p2

    .line 248
    .end local p1    # "downX":I
    .end local p2    # "downY":I
    .restart local v5    # "downX":I
    .restart local v6    # "downY":I
    :goto_0
    iget v7, v0, Landroid/view/OplusViewRootUtil;->mNavBarMode:I

    const-string v8, " event "

    const-string v9, " rotation "

    const-string v10, " nav mode "

    const-string v11, " globalScale "

    const-string v12, " mStatusBarHeight "

    const-string v13, " mScreenWidth "

    const-string v14, " mScreenHeight "

    const-string v15, " downY "

    if-eqz v7, :cond_a

    move/from16 v16, v2

    .end local v2    # "ignore":Z
    .local v16, "ignore":Z
    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    move-object v7, v3

    goto/16 :goto_2

    .line 277
    :cond_3
    packed-switch v4, :pswitch_data_0

    move-object/from16 v17, v3

    move/from16 v2, v16

    goto :goto_1

    .line 291
    :pswitch_0
    iget v2, v0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    move-object/from16 v17, v3

    iget v3, v0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    if-ge v6, v2, :cond_6

    iget v2, v0, Landroid/view/OplusViewRootUtil;->mSideGestureAreaWidth:I

    if-lt v5, v2, :cond_4

    iget v3, v0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    sub-int/2addr v3, v2

    if-le v5, v3, :cond_5

    :cond_4
    const/4 v2, 0x3

    if-eq v7, v2, :cond_6

    .line 295
    :cond_5
    const/4 v2, 0x0

    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_1

    .line 297
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :cond_6
    const/4 v2, 0x1

    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_1

    .line 280
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :pswitch_1
    move-object/from16 v17, v3

    iget v2, v0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    iget v3, v0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    if-ge v6, v2, :cond_9

    iget v2, v0, Landroid/view/OplusViewRootUtil;->mSideGestureAreaWidth:I

    if-lt v5, v2, :cond_7

    iget v3, v0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    sub-int/2addr v3, v2

    if-le v5, v3, :cond_8

    :cond_7
    const/4 v2, 0x3

    if-eq v7, v2, :cond_9

    .line 284
    :cond_8
    const/4 v2, 0x0

    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_1

    .line 286
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :cond_9
    const/4 v2, 0x1

    .line 288
    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    nop

    .line 301
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nav gesture mode swipeFromBottom ignore "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mCompactScale:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mNavBarMode:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v17

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 248
    :cond_a
    move/from16 v16, v2

    move-object v7, v3

    .line 249
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :goto_2
    packed-switch v4, :pswitch_data_1

    move/from16 v2, v16

    goto :goto_3

    .line 266
    :pswitch_2
    iget v2, v0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    if-le v5, v2, :cond_b

    .line 267
    const/4 v2, 0x0

    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_3

    .line 269
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :cond_b
    const/4 v2, 0x1

    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_3

    .line 259
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :pswitch_3
    iget v2, v0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    iget v3, v0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    if-ge v5, v2, :cond_c

    .line 260
    const/4 v2, 0x0

    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_3

    .line 262
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :cond_c
    const/4 v2, 0x1

    .line 264
    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_3

    .line 252
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :pswitch_4
    iget v2, v0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    iget v3, v0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    if-ge v6, v2, :cond_d

    .line 253
    const/4 v2, 0x0

    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    goto :goto_3

    .line 255
    .end local v2    # "ignore":Z
    .restart local v16    # "ignore":Z
    :cond_d
    const/4 v2, 0x1

    .line 257
    .end local v16    # "ignore":Z
    .restart local v2    # "ignore":Z
    nop

    .line 273
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    const-string v7, "nav bar mode ignore "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " downX "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mCompactScale:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/view/OplusViewRootUtil;->mNavBarMode:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v17

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public whitelist checkGestureConfig(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_navigationbar_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/OplusViewRootUtil;->mNavBarMode:I

    .line 214
    return-void
.end method

.method public whitelist getCompactScale()F
    .locals 1

    .line 160
    iget v0, p0, Landroid/view/OplusViewRootUtil;->mCompactScale:F

    return v0
.end method

.method public blacklist getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/view/OplusViewRootUtil;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public blacklist getOplusLongshotViewHelper(Ljava/lang/ref/WeakReference;)Landroid/view/IOplusLongshotViewHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;)",
            "Landroid/view/IOplusLongshotViewHelper;"
        }
    .end annotation

    .line 229
    .local p1, "viewAncestor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewRootImpl;>;"
    new-instance v0, Landroid/view/OplusLongshotViewHelper;

    invoke-direct {v0, p1}, Landroid/view/OplusLongshotViewHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public whitelist getScreenHeight()I
    .locals 1

    .line 165
    iget v0, p0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    return v0
.end method

.method public whitelist getScreenWidth()I
    .locals 1

    .line 170
    iget v0, p0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    return v0
.end method

.method public whitelist initSwipState(Landroid/view/Display;Landroid/content/Context;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "context"    # Landroid/content/Context;

    .line 91
    const-string v0, "OplusViewRootUtil"

    const-string v1, "initSwipState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/OplusViewRootUtil;->initSwipState(Landroid/view/Display;Landroid/content/Context;Z)V

    .line 93
    return-void
.end method

.method public whitelist initSwipState(Landroid/view/Display;Landroid/content/Context;Z)V
    .locals 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isDisplayCompatApp"    # Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSwipState, isDisplayCompatApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusViewRootUtil"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-boolean p3, p0, Landroid/view/OplusViewRootUtil;->mIsDisplayCompatApp:Z

    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t initSwipState because display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not default display"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/view/OplusViewRootUtil;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 109
    .local v2, "h":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    .local v3, "w":I
    if-le v2, v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput v4, p0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    .line 111
    if-le v2, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iput v4, p0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v4, p0, Landroid/view/OplusViewRootUtil;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 115
    .local v4, "height":I
    iget-object v5, p0, Landroid/view/OplusViewRootUtil;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 116
    .local v5, "width":I
    if-le v4, v5, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    move v4, v6

    .line 117
    nop

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x15

    iput v6, p0, Landroid/view/OplusViewRootUtil;->mHideNavigationbarArea:I

    .line 119
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc05000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    .line 120
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "oppo.systemui.disable.edgepanel"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    sput-boolean v6, Landroid/view/OplusViewRootUtil;->mHeteromorphism:Z

    .line 121
    if-eqz v6, :cond_4

    .line 122
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc0d0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Landroid/view/OplusViewRootUtil;->mHeteromorphismHeight:I

    .line 126
    :cond_4
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    .local v6, "appMetrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/view/OplusViewRootUtil;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v7, v6}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v7

    iput v7, p0, Landroid/view/OplusViewRootUtil;->mCompactScale:F

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "hide_navigationbar_enable"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/view/OplusViewRootUtil;->mNavBarMode:I

    .line 136
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xc0d000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/view/OplusViewRootUtil;->mSideGestureAreaWidth:I

    .line 137
    if-eqz p3, :cond_5

    .line 138
    const-string v7, "sIsDisplayCompatApp"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v1, p0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    int-to-float v1, v1

    const v7, 0x3faaaaa8

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/OplusViewRootUtil;->mScreenHeight:I

    .line 140
    iget v1, p0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    .line 142
    :cond_5
    iget v1, p0, Landroid/view/OplusViewRootUtil;->mScreenWidth:I

    int-to-float v1, v1

    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/OplusViewRootUtil;->mStatusBarHeight:I

    .line 144
    return-void
.end method

.method public whitelist needScale(IILandroid/view/Display;)Z
    .locals 2
    .param p1, "noncompatDensity"    # I
    .param p2, "density"    # I
    .param p3, "display"    # Landroid/view/Display;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 151
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p1, p2, :cond_1

    .line 153
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist swipeFromBottom(Landroid/view/MotionEvent;IILandroid/view/Display;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "noncompatDensity"    # I
    .param p3, "density"    # I
    .param p4, "display"    # Landroid/view/Display;

    .line 176
    const-string v0, "OplusViewRootUtil"

    const-string v1, "swipeFromBottom!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t intercept event because display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not default display"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v2

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t intercept event because event source is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v2

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    iget-boolean v0, p0, Landroid/view/OplusViewRootUtil;->mIgnoring:Z

    if-eqz v0, :cond_3

    .line 200
    iput-boolean v2, p0, Landroid/view/OplusViewRootUtil;->mIgnoring:Z

    .line 201
    const/4 v0, 0x1

    return v0

    .line 190
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 191
    .local v0, "downY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 192
    .local v1, "downX":I
    iget v2, p0, Landroid/view/OplusViewRootUtil;->mCompactScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2, p3, p4}, Landroid/view/OplusViewRootUtil;->needScale(IILandroid/view/Display;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget v2, p0, Landroid/view/OplusViewRootUtil;->mCompactScale:F

    int-to-float v3, v0

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 194
    int-to-float v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 196
    :cond_2
    invoke-direct {p0, v1, v0, p1, p4}, Landroid/view/OplusViewRootUtil;->shouldIgnore(IILandroid/view/MotionEvent;Landroid/view/Display;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/OplusViewRootUtil;->mIgnoring:Z

    .line 197
    nop

    .line 207
    .end local v0    # "downY":I
    .end local v1    # "downX":I
    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroid/view/OplusViewRootUtil;->mIgnoring:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
