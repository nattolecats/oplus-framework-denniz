.class public Landroid/view/performance/OplusViewPerfInjector;
.super Ljava/lang/Object;
.source "OplusViewPerfInjector.java"

# interfaces
.implements Landroid/view/performance/IOplusViewPerfInjector;
.implements Landroid/view/performance/IOplusAdjustlayerType;


# static fields
.field private static final blacklist BOOST_VIEW_BILIBILI:Ljava/lang/String; = "com.bilibili.lib.homepage.widget.TabHost"

.field private static final blacklist BOOST_VIEW_CLASS:Ljava/lang/String; = "ConversationOverscrollListView"

.field private static final blacklist BOOST_VIEW_IQIYI:Ljava/lang/String; = "org.qiyi.basecore.widget"

.field private static final blacklist BOOST_VIEW_REDPACKET:Ljava/lang/String; = "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyNotHookReceiveUI"

.field private static blacklist CHANGE_LAYERTYPE_ENABLE:Z = false

.field private static final blacklist CLASS_NAME_SPECIAL_VIEW_01:Ljava/lang/String; = "com.tencent.mm.ui.base.MultiTouchImageView"

.field private static blacklist DEBUG:Z = false

.field private static final blacklist FORCE_HARDWARE_LIST:[Ljava/lang/String;

.field private static final blacklist SCALE_CURRENT_DURATION:F = 0.8f

.field private static blacklist TAG:Ljava/lang/String;

.field private static blacklist mBoostTime:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field blacklist mForceHWSize:I

.field private blacklist mIgnoreOnDescendantInvalidated:Z

.field private blacklist mIgnoreOnDescendantInvalidatedInViewGroup:Z

.field private blacklist mIsFinishBoost:Z

.field private blacklist mLayerPaint:Landroid/graphics/Paint;

.field private blacklist mLayerType:I

.field private blacklist mPendingLayerType:I

.field private blacklist mShouldBoostAnimation:Z

.field private blacklist mShouldCheckTouchBoost:Z

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 39
    const-string v0, "persist.sys.weixin.launchuiboost"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/performance/OplusViewPerfInjector;->mBoostTime:I

    .line 40
    const-class v0, Landroid/view/performance/OplusViewPerfInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/performance/OplusViewPerfInjector;->CHANGE_LAYERTYPE_ENABLE:Z

    .line 53
    const-string v1, "com.sina.weibo/.page.SearchResultActivity"

    const-string v2, "com.sina.weibo/.VisitorMainTabActivity"

    const-string v3, "com.sina.weibo/.MainTabActivity"

    const-string v4, "com.tencent.mm/com.tencent.mm.ui.chatting.gallery.ImageGalleryUI"

    const-string v5, "com.tencent.mm/com.tencent.mm.plugin.sns.ui.SnsBrowseUI"

    const-string v6, "com.tencent.mm/com.tencent.mm.plugin.sns.ui.SnsUploadBrowseUI"

    const-string v7, "com.tencent.mobileqq/cooperation.qzone.QzoneFeedsPluginProxyActivity"

    const-string v8, "com.tencent.mobileqq/com.tencent.mobileqq.activity.SplashActivity"

    const-string v9, "com.sina.weibo/.page.SearchResultActivity"

    const-string v10, "com.sina.weibo/.VisitorMainTabActivity"

    const-string v11, "com.sina.weibo/.MainTabActivity"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/performance/OplusViewPerfInjector;->FORCE_HARDWARE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mIgnoreOnDescendantInvalidated:Z

    .line 32
    iput-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mIgnoreOnDescendantInvalidatedInViewGroup:Z

    .line 41
    iput-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldBoostAnimation:Z

    .line 42
    iput-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mIsFinishBoost:Z

    .line 45
    iput-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldCheckTouchBoost:Z

    .line 48
    iput v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mPendingLayerType:I

    .line 49
    iput v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mLayerType:I

    .line 123
    const-string v0, "debug.imageview.forcehw.size"

    const/high16 v1, 0x1000000

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mForceHWSize:I

    .line 68
    iput-object p1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getLayerPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mLayerPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private blacklist adjustLayerTypeInternal(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 138
    const/4 v0, -0x1

    .line 139
    .local v0, "adjustedLayerType":I
    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    iput v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mLayerType:I

    .line 141
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    iget v5, p0, Landroid/view/performance/OplusViewPerfInjector;->mPendingLayerType:I

    if-ne v5, v3, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    if-ne v1, v3, :cond_4

    .line 151
    mul-int v1, p1, p2

    iget v3, p0, Landroid/view/performance/OplusViewPerfInjector;->mForceHWSize:I

    if-le v1, v3, :cond_4

    .line 152
    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/performance/OplusViewPerfInjector;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 153
    sget-boolean v1, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustLayerTypeInternal  to LAYER_TYPE_SOFTWARE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayerType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    iput v2, p0, Landroid/view/performance/OplusViewPerfInjector;->mPendingLayerType:I

    .line 155
    iput-boolean v4, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldBoostAnimation:Z

    goto :goto_1

    .line 143
    :cond_2
    :goto_0
    mul-int v1, p1, p2

    iget v4, p0, Landroid/view/performance/OplusViewPerfInjector;->mForceHWSize:I

    if-gt v1, v4, :cond_3

    .line 144
    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/performance/OplusViewPerfInjector;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 145
    sget-boolean v1, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustLayerTypeInternal  to LAYER_TYPE_HARDWARE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayerType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    :cond_3
    iput v2, p0, Landroid/view/performance/OplusViewPerfInjector;->mPendingLayerType:I

    .line 160
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist shouldForceLayerHardware(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 115
    sget-object v0, Landroid/view/performance/OplusViewPerfInjector;->FORCE_HARDWARE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 116
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 115
    .end local v4    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v2
.end method


# virtual methods
.method public blacklist adjustImageViewLayerType(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 126
    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/performance/OplusViewPerfInjector;->adjustLayerTypeInternal(II)V

    .line 129
    :cond_0
    return-void
.end method

.method public blacklist adjustPendingLayertype(I)V
    .locals 3
    .param p1, "layerType"    # I

    .line 101
    iget-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldCheckTouchBoost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/performance/OplusViewPerfInjector;->shouldForceLayerHardware(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mPendingLayerType:I

    .line 106
    sget-boolean v1, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v2, "adjustPendingLayertype LayerType  to LAYER_TYPE_HARDWARE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public blacklist checkBoostAnimation(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 163
    iget-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldBoostAnimation:Z

    const-string v1, "OSENSE_ACTION_ANIMATION"

    const-string v2, "setSceneActionTransit failed because remoteException"

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 164
    sget-boolean v0, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v4, "Boost  webchat animation"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    .line 166
    .local v4, "duration":J
    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    long-to-int v0, v4

    .line 168
    .local v0, "timeout":I
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v6

    invoke-virtual {v6, v3, v1, v0}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_2

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v3, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 172
    .end local v0    # "timeout":I
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v4    # "duration":J
    :cond_2
    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplExt;->isWebchatLauncherUI()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    sget-boolean v0, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v4, "Boost  animation WebchatLauncherUI"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    sget v4, Landroid/view/performance/OplusViewPerfInjector;->mBoostTime:I

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    iget-boolean v0, p1, Landroid/view/animation/Animation;->mSpeeduped:Z

    if-nez v0, :cond_5

    .line 180
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/animation/Animation;->mSpeeduped:Z

    goto :goto_3

    .line 172
    :cond_4
    :goto_2
    nop

    .line 184
    :cond_5
    :goto_3
    return-void
.end method

.method public blacklist checkBoostBuildDrawingCache()V
    .locals 7

    .line 187
    const/16 v0, 0x64

    .line 188
    .local v0, "timeoutSns":I
    const/16 v1, 0x1e

    .line 189
    .local v1, "timeoutMul":I
    iget-object v2, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SnsCommentShowAbLayout"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "OSENSE_ACTION_ANIMATION"

    const-string v4, "setSceneActionTransit failed because remoteException"

    const-string v5, ""

    if-eqz v2, :cond_1

    .line 190
    sget-boolean v2, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v6, "Boost  SnsCommentShowAbLayout"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v0}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "ex":Landroid/os/RemoteException;
    sget-object v3, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MultiTouchImageView"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    sget-boolean v2, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v6, "Boost  MultiTouchImageView"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v1}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    goto :goto_1

    .line 200
    :catch_1
    move-exception v2

    .line 201
    .restart local v2    # "ex":Landroid/os/RemoteException;
    sget-object v3, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist checkBoostOnPerformClick(Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    .local v1, "liStr":Ljava/lang/String;
    const/16 v2, 0x3e8

    .line 226
    .local v2, "timeout":I
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 227
    const-string v3, "com.qiyi.video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "tv.danmaku.bili"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    const-string v3, "com.tencent.mm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 229
    :cond_1
    if-eqz p1, :cond_6

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 232
    const-string v3, "org.qiyi.basecore.widget"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "setSceneActionTransit failed because remoteException"

    const-string v5, ""

    const-string v6, "Boost view "

    if-nez v3, :cond_4

    const-string v3, "com.bilibili.lib.homepage.widget.TabHost"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 241
    :cond_2
    const-string v3, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyNotHookReceiveUI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    sget-boolean v3, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 243
    sget-object v3, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v3

    const-string v6, "OSENSE_ACTION_LUCKY_MONEY"

    invoke-virtual {v3, v5, v6, v2}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    .line 248
    .local v3, "ex":Landroid/os/RemoteException;
    sget-object v5, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    sget-boolean v3, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 234
    sget-object v3, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v3

    const-string v6, "OSENSE_ACTION_ACTIVITY_START"

    sget v7, Landroid/view/performance/OplusViewPerfInjector;->mBoostTime:I

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 238
    :catch_1
    move-exception v3

    .line 239
    .restart local v3    # "ex":Landroid/os/RemoteException;
    sget-object v5, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_6
    :goto_1
    return-void
.end method

.method public blacklist checkBoostTouchEvent(I)V
    .locals 4
    .param p1, "action"    # I

    .line 207
    const/16 v0, 0x1f4

    .line 208
    .local v0, "timeout":I
    iget-boolean v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldCheckTouchBoost:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 209
    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConversationOverscrollListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget-boolean v1, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v2, "Boost  press enter webchat conversation."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v1

    const-string v2, ""

    const-string v3, "OSENSE_ACTION_TOUCH_BOOST"

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v2, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v3, "setSceneActionTransit failed because remoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist checkMutiTouchView()Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTouchImageView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkNeedBoostedPropertyAnimator(Landroid/view/ViewPropertyAnimator;)V
    .locals 6
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;

    .line 257
    iget-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldBoostAnimation:Z

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v0

    .line 259
    .local v0, "duration":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    .line 260
    .local v2, "timeout":I
    :goto_0
    sget-boolean v3, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Boost animator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v3

    const-string v4, ""

    const-string v5, "OSENSE_ACTION_ANIMATION"

    invoke-virtual {v3, v4, v5, v2}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_1

    .line 263
    :catch_0
    move-exception v3

    .line 264
    .local v3, "ex":Landroid/os/RemoteException;
    sget-object v4, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    const-string v5, "setSceneActionTransit failed because remoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "duration":J
    .end local v2    # "timeout":I
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist getOplusAdjustlayerTypeInstance()Landroid/view/performance/IOplusAdjustlayerType;
    .locals 1

    .line 74
    sget-boolean v0, Landroid/view/performance/OplusViewPerfInjector;->CHANGE_LAYERTYPE_ENABLE:Z

    if-eqz v0, :cond_0

    .line 75
    return-object p0

    .line 77
    :cond_0
    sget-object v0, Landroid/view/performance/IOplusAdjustlayerType;->DEFAULT:Landroid/view/performance/IOplusAdjustlayerType;

    return-object v0
.end method

.method public blacklist ignoreSpecailViewDescendantInvalidated(Landroid/view/ViewParent;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewParent;

    .line 270
    iget-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mIgnoreOnDescendantInvalidated:Z

    if-eqz v0, :cond_0

    .line 271
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 272
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    .local v0, "parentViewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mIgnoreOnDescendantInvalidatedInViewGroup:Z

    .line 278
    .end local v0    # "parentViewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public blacklist initView()V
    .locals 3

    .line 82
    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-boolean v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mShouldCheckTouchBoost:Z

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "viewClassName":Ljava/lang/String;
    const-string v2, "com.tencent.mm.ui.base.MultiTouchImageView"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iput-boolean v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mIgnoreOnDescendantInvalidated:Z

    .line 91
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 92
    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/performance/OplusViewPerfInjector;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 93
    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/performance/OplusViewPerfInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    iget-object v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    sget-boolean v0, Landroid/view/performance/OplusViewPerfInjector;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/view/performance/OplusViewPerfInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mView.getParent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/performance/OplusViewPerfInjector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3
    return-void
.end method

.method public blacklist isIgnoreSpecailViewDescendantInvalidated()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Landroid/view/performance/OplusViewPerfInjector;->mIgnoreOnDescendantInvalidatedInViewGroup:Z

    return v0
.end method
