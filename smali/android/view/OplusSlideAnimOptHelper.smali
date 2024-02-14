.class public Landroid/view/OplusSlideAnimOptHelper;
.super Ljava/lang/Object;
.source "OplusSlideAnimOptHelper.java"


# static fields
.field private static final blacklist FEATURE_NAME:Ljava/lang/String; = "oplus.software.scroll.animation_opt"

.field private static final blacklist PROPERTY_DEBUG_ENABLE_ALL_PACKAGE:Ljava/lang/String; = "debug.choreographer.scroll.effect.all.enable"

.field private static final blacklist PROPERTY_DEBUG_ENABLE_WHITELIST:Ljava/lang/String; = "debug.choreographer.scroll.effect.whitelist.enable"

.field private static final blacklist PROPERTY_DEBUG_SWITCH:Ljava/lang/String; = "debug.choreographer.scroll.effect"

.field public static final blacklist SCROLL_STATE_FLING:I = 0x1

.field public static final blacklist SCROLL_STATE_FLING_END:I = 0x2

.field public static final blacklist SCROLL_STATE_IDLE:I = 0x0

.field private static final blacklist SYSTEM_SERVER_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;


# instance fields
.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mChoreographerExt:Landroid/view/IChoreographerExt;

.field private blacklist mCurrentActivityName:Ljava/lang/String;

.field blacklist mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

.field private blacklist mFrameIntervalMillis:J

.field private blacklist mFrameIntervalNanos:J

.field private blacklist mIsActivityEnable:Z

.field private blacklist mIsAllPackageEnable:Z

.field private blacklist mIsBlacklistMode:Z

.field private blacklist mIsOptEnable:Z

.field private blacklist mIsScrollOptDebugEnable:Z

.field private blacklist mIsScrollOptInitialized:Z

.field private blacklist mNeedUpdateActivitEnableStatus:Z

.field private blacklist mScrollOptObject:Ljava/lang/Object;

.field private blacklist mScrollState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    const-class v0, Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    nop

    .line 51
    const-string v0, "debug.choreographer.scroll.effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsScrollOptDebugEnable:Z

    .line 53
    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsOptEnable:Z

    .line 59
    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsScrollOptInitialized:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    .line 63
    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    .line 65
    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mNeedUpdateActivitEnableStatus:Z

    .line 67
    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsAllPackageEnable:Z

    .line 69
    iput-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mCurrentActivityName:Ljava/lang/String;

    .line 71
    const-wide/16 v2, 0x10

    iput-wide v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalMillis:J

    .line 72
    const-wide/32 v2, 0xfe502a

    iput-wide v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalNanos:J

    .line 75
    iput-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    .line 77
    iput v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    .line 80
    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsBlacklistMode:Z

    return-void
.end method

.method private blacklist checkListMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 319
    const-string v0, "dynamic_filter"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/filter/DynamicFilterManager;

    .line 320
    .local v0, "manager":Lcom/oplus/filter/DynamicFilterManager;
    if-nez v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    const-string v1, "scroll_opt"

    invoke-virtual {v0, v1}, Lcom/oplus/filter/DynamicFilterManager;->hasFilter(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsBlacklistMode:Z

    .line 325
    sget-object v1, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkListMode: is blacklist mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsBlacklistMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public static blacklist getInstance()Landroid/view/OplusSlideAnimOptHelper;
    .locals 2

    .line 105
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-nez v0, :cond_1

    .line 106
    const-class v0, Landroid/view/OplusSlideAnimOptHelper;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/view/OplusSlideAnimOptHelper;

    invoke-direct {v1}, Landroid/view/OplusSlideAnimOptHelper;-><init>()V

    sput-object v1, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 111
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 113
    :cond_1
    :goto_0
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    return-object v0
.end method

.method private blacklist getScrollEffectOptEnable(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, "isOptEnable":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 187
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/OplusSlideAnimOptHelper;->checkListMode(Landroid/content/Context;)V

    .line 188
    iget-object v3, p0, Landroid/view/OplusSlideAnimOptHelper;->mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    if-nez v3, :cond_1

    .line 189
    iget-boolean v3, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsBlacklistMode:Z

    if-nez v3, :cond_0

    .line 190
    const-string v3, "scroll_opt"

    .line 191
    invoke-static {p1, v3}, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    move-result-object v3

    iput-object v3, p0, Landroid/view/OplusSlideAnimOptHelper;->mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    goto :goto_0

    .line 193
    :cond_0
    const-string v3, "scroll_black"

    .line 194
    invoke-static {p1, v3}, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    move-result-object v3

    iput-object v3, p0, Landroid/view/OplusSlideAnimOptHelper;->mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    .line 197
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/view/OplusSlideAnimOptHelper;->mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    if-eqz v3, :cond_3

    .line 198
    invoke-virtual {v3, v0}, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->inFilter(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/view/OplusSlideAnimOptHelper;->isPackageEnable(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    const/4 v1, 0x1

    .line 201
    iget-object v3, p0, Landroid/view/OplusSlideAnimOptHelper;->mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    iget-object v4, p0, Landroid/view/OplusSlideAnimOptHelper;->mCurrentActivityName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->containsItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/view/OplusSlideAnimOptHelper;->isActivityEnable(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    iput-boolean v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    goto :goto_1

    .line 205
    :cond_2
    iput-boolean v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mNeedUpdateActivitEnableStatus:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_3
    :goto_1
    goto :goto_2

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to query whitelist, package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    .line 215
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    const-string v3, "debug.choreographer.scroll.effect.whitelist.enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 216
    sget-object v3, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    const-string v4, "getScrollEffectOptEnable: whitelist not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x0

    .line 220
    :cond_5
    const/4 v3, 0x0

    const-string v4, "debug.choreographer.scroll.effect.all.enable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 221
    sget-object v3, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    const-string v4, "getScrollEffectOptEnable: adb package enable, all package enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x1

    .line 223
    iput-boolean v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsAllPackageEnable:Z

    .line 225
    :cond_6
    sget-object v2, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scrollEffectOpt enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v1
.end method

.method private blacklist isActivityEnable(Z)Z
    .locals 1
    .param p1, "containsItem"    # Z

    .line 333
    iget-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsBlacklistMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static blacklist isCurrentSceneEnable()Z
    .locals 1

    .line 100
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    iget-boolean v0, v0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isInMainThread()Z
    .locals 2

    .line 118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isOptDebugEnable()Z
    .locals 1

    .line 92
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    iget-boolean v0, v0, Landroid/view/OplusSlideAnimOptHelper;->mIsScrollOptDebugEnable:Z

    return v0
.end method

.method public static blacklist isOptEnable()Z
    .locals 1

    .line 84
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->sOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    iget-boolean v0, v0, Landroid/view/OplusSlideAnimOptHelper;->mIsOptEnable:Z

    return v0
.end method

.method private blacklist isPackageEnable(Z)Z
    .locals 1
    .param p1, "inFilter"    # Z

    .line 329
    iget-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsBlacklistMode:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getFrameInterval()J
    .locals 2

    .line 278
    iget-wide v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalMillis:J

    return-wide v0
.end method

.method public blacklist getFrameIntervalNanos()J
    .locals 2

    .line 273
    iget-wide v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public blacklist initScrollOpt(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 135
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    const-string v1, "initScrollOpt: not running in mainthread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 138
    :cond_0
    if-nez p1, :cond_1

    .line 139
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    const-string v1, "initScrollOpt: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    sget-object v0, Landroid/view/OplusSlideAnimOptHelper;->TAG:Ljava/lang/String;

    const-string v1, "initScrollOpt: not enabled in system_server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mChoreographer:Landroid/view/Choreographer;

    .line 150
    new-instance v1, Landroid/view/OplusSlideAnimOptHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/view/OplusSlideAnimOptHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/OplusSlideAnimOptHelper;Landroid/content/Context;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public blacklist isFling()Z
    .locals 2

    .line 293
    iget v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isFlingEnd()Z
    .locals 2

    .line 288
    iget v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isFlinging()Z
    .locals 1

    .line 283
    iget v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$initScrollOpt$0$android-view-OplusSlideAnimOptHelper(Landroid/content/Context;)V
    .locals 5
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 151
    iget-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsScrollOptInitialized:Z

    if-nez v0, :cond_1

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsScrollOptInitialized:Z

    .line 153
    invoke-direct {p0, p1}, Landroid/view/OplusSlideAnimOptHelper;->getScrollEffectOptEnable(Landroid/content/Context;)Z

    move-result v0

    .line 154
    .local v0, "isOptEnable":Z
    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v1, Landroid/view/Choreographer;->mChoreographerExt:Landroid/view/IChoreographerExt;

    iput-object v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mChoreographerExt:Landroid/view/IChoreographerExt;

    .line 156
    iget-object v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-interface {v1, v2}, Landroid/view/IChoreographerExt;->setSlideAnimOptHelper(Landroid/view/Choreographer;)V

    .line 157
    iget-object v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalNanos:J

    .line 158
    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iput-wide v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalMillis:J

    .line 160
    iget-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    if-eqz v1, :cond_0

    .line 161
    iget-object v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mChoreographerExt:Landroid/view/IChoreographerExt;

    invoke-interface {v2, v1}, Landroid/view/IChoreographerExt;->resetOptState(Z)V

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mNeedUpdateActivitEnableStatus:Z

    .line 170
    :cond_0
    iput-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsOptEnable:Z

    .line 172
    .end local v0    # "isOptEnable":Z
    :cond_1
    return-void
.end method

.method public blacklist resetOptState()V
    .locals 5

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    .line 299
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    .line 300
    iget-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mNeedUpdateActivitEnableStatus:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 301
    iput-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mNeedUpdateActivitEnableStatus:Z

    .line 303
    iget-object v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mFilterHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    if-eqz v1, :cond_0

    .line 305
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/view/OplusSlideAnimOptHelper;->mCurrentActivityName:Ljava/lang/String;

    .line 304
    invoke-virtual {v1, v3, v4}, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->containsItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/view/OplusSlideAnimOptHelper;->isActivityEnable(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iput-boolean v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    goto :goto_0

    .line 308
    :cond_0
    iput-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    .line 312
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsAllPackageEnable:Z

    if-eqz v0, :cond_2

    .line 313
    iput-boolean v2, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    .line 315
    :cond_2
    iget-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mChoreographerExt:Landroid/view/IChoreographerExt;

    iget-boolean v1, p0, Landroid/view/OplusSlideAnimOptHelper;->mIsActivityEnable:Z

    invoke-interface {v0, v1}, Landroid/view/IChoreographerExt;->resetOptState(Z)V

    .line 316
    return-void
.end method

.method public blacklist updateCurrentActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Landroid/view/OplusSlideAnimOptHelper;->mCurrentActivityName:Ljava/lang/String;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mNeedUpdateActivitEnableStatus:Z

    .line 179
    return-void
.end method

.method public blacklist updateFrameInterval(J)V
    .locals 2
    .param p1, "newFrameIntervalNanos"    # J

    .line 267
    iput-wide p1, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalNanos:J

    .line 268
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    iput-wide v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mFrameIntervalMillis:J

    .line 269
    return-void
.end method

.method public blacklist updateScrollerSimpleState(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "state"    # I

    .line 249
    iget-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    .line 253
    iput-object p1, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_0
    iput p2, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    .line 259
    :goto_0
    if-nez p2, :cond_1

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    .line 263
    :cond_1
    return-void
.end method

.method public blacklist updateScrollerState(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "state"    # I

    .line 231
    iget-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    .line 235
    iput-object p1, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_0
    iput p2, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollState:I

    .line 241
    :goto_0
    if-nez p2, :cond_1

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OplusSlideAnimOptHelper;->mScrollOptObject:Ljava/lang/Object;

    .line 245
    :cond_1
    return-void
.end method
