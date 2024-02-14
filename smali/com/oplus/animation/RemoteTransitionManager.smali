.class public Lcom/oplus/animation/RemoteTransitionManager;
.super Ljava/lang/Object;
.source "RemoteTransitionManager.java"


# static fields
.field public static final whitelist ACTIVITY_TYPE_STANDARD:I

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteTransitionManager"

.field public static final whitelist TRANSIT_ACTIVITY_CLOSE:I

.field public static final whitelist TRANSIT_ACTIVITY_OPEN:I

.field public static final whitelist TRANSIT_ACTIVITY_RELAUNCH:I

.field public static final whitelist TRANSIT_KEYGUARD_GOING_AWAY:I

.field public static final whitelist TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I

.field public static final whitelist TRANSIT_KEYGUARD_OCCLUDE:I

.field public static final whitelist TRANSIT_KEYGUARD_UNOCCLUDE:I

.field public static final whitelist TRANSIT_NONE:I

.field public static final whitelist TRANSIT_TASK_CLOSE:I

.field public static final whitelist TRANSIT_TASK_OPEN:I

.field public static final whitelist TRANSIT_TASK_OPEN_BEHIND:I

.field public static final whitelist TRANSIT_TASK_TO_BACK:I

.field public static final whitelist TRANSIT_TASK_TO_FRONT:I

.field public static final whitelist TRANSIT_UNSET:I

.field public static final whitelist TRANSIT_WALLPAPER_CLOSE:I

.field public static final whitelist TRANSIT_WALLPAPER_INTRA_CLOSE:I

.field public static final whitelist TRANSIT_WALLPAPER_INTRA_OPEN:I

.field public static final whitelist TRANSIT_WALLPAPER_OPEN:I


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mDefinition:Landroid/view/RemoteAnimationDefinition;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/oplus/animation/RemoteTransitionManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostAsyncCallback(Lcom/oplus/animation/RemoteTransitionManager;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/animation/RemoteTransitionManager;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapRemoteAnimationTarget(Lcom/oplus/animation/RemoteTransitionManager;[Landroid/view/RemoteAnimationTarget;)[Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/animation/RemoteTransitionManager;->wrapRemoteAnimationTarget([Landroid/view/RemoteAnimationTarget;)[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    const-string v0, "TRANSIT_UNSET"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_UNSET:I

    .line 73
    const-string v0, "TRANSIT_OLD_NONE"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_NONE:I

    .line 80
    const-string v0, "TRANSIT_OLD_ACTIVITY_OPEN"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_ACTIVITY_OPEN:I

    .line 88
    const-string v0, "TRANSIT_OLD_ACTIVITY_CLOSE"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_ACTIVITY_CLOSE:I

    .line 95
    const-string v0, "TRANSIT_OLD_TASK_OPEN"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_TASK_OPEN:I

    .line 103
    const-string v0, "TRANSIT_OLD_TASK_CLOSE"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_TASK_CLOSE:I

    .line 111
    const-string v0, "TRANSIT_OLD_TASK_TO_FRONT"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_TASK_TO_FRONT:I

    .line 118
    const-string v0, "TRANSIT_OLD_TASK_TO_BACK"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_TASK_TO_BACK:I

    .line 126
    const-string v0, "TRANSIT_OLD_WALLPAPER_CLOSE"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_WALLPAPER_CLOSE:I

    .line 134
    const-string v0, "TRANSIT_OLD_WALLPAPER_OPEN"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_WALLPAPER_OPEN:I

    .line 142
    const-string v0, "TRANSIT_OLD_WALLPAPER_INTRA_OPEN"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_WALLPAPER_INTRA_OPEN:I

    .line 150
    const-string v0, "TRANSIT_OLD_WALLPAPER_INTRA_CLOSE"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_WALLPAPER_INTRA_CLOSE:I

    .line 158
    const-string v0, "TRANSIT_OLD_TASK_OPEN_BEHIND"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_TASK_OPEN_BEHIND:I

    .line 165
    const-string v0, "TRANSIT_OLD_ACTIVITY_RELAUNCH"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_ACTIVITY_RELAUNCH:I

    .line 172
    const-string v0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_KEYGUARD_GOING_AWAY:I

    .line 179
    const-string v0, "TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I

    .line 186
    const-string v0, "TRANSIT_OLD_KEYGUARD_OCCLUDE"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_KEYGUARD_OCCLUDE:I

    .line 193
    const-string v0, "TRANSIT_OLD_KEYGUARD_UNOCCLUDE"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->TRANSIT_KEYGUARD_UNOCCLUDE:I

    .line 200
    const-string v0, "ACTIVITY_TYPE_STANDARD"

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->getOriginType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/animation/RemoteTransitionManager;->ACTIVITY_TYPE_STANDARD:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 205
    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    .line 206
    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mHandler:Landroid/os/Handler;

    .line 207
    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 232
    iput-object p1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    .line 233
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 234
    .local v0, "window":Landroid/view/Window;
    :cond_0
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 236
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 240
    .end local v1    # "decorView":Landroid/view/View;
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mHandler:Landroid/os/Handler;

    .line 241
    new-instance v1, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v1}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    iput-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 242
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 205
    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    .line 206
    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mHandler:Landroid/os/Handler;

    .line 207
    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 217
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 220
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mHandler:Landroid/os/Handler;

    .line 221
    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    iput-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 222
    return-void
.end method

.method private static blacklist getOriginType(Ljava/lang/String;)I
    .locals 17
    .param p0, "typeName"    # Ljava/lang/String;

    .line 445
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "TRANSIT_TASK_OPEN_BEHIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "TRANSIT_TASK_TO_FRONT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v14

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "TRANSIT_WALLPAPER_INTRA_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "TRANSIT_OLD_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "TRANSIT_TASK_TO_BACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v13

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "TRANSIT_TASK_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "TRANSIT_ACTIVITY_RELAUNCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "ACTIVITY_TYPE_STANDARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "TRANSIT_ACTIVITY_CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "TRANSIT_KEYGUARD_OCCLUDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_b
    const-string v1, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    goto :goto_1

    :sswitch_c
    const-string v1, "TRANSIT_WALLPAPER_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v11

    goto :goto_1

    :sswitch_d
    const-string v1, "TRANSIT_KEYGUARD_GOING_AWAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_e
    const-string v1, "TRANSIT_ACTIVITY_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_f
    const-string v1, "TRANSIT_UNSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v15

    goto :goto_1

    :sswitch_10
    const-string v1, "TRANSIT_TASK_CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_11
    const-string v1, "TRANSIT_KEYGUARD_UNOCCLUDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_12
    const-string v1, "TRANSIT_WALLPAPER_CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_1

    :goto_0
    move/from16 v1, v16

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 485
    return v16

    .line 483
    :pswitch_0
    return v2

    .line 481
    :pswitch_1
    const/16 v1, 0x17

    return v1

    .line 479
    :pswitch_2
    const/16 v1, 0x16

    return v1

    .line 477
    :pswitch_3
    const/16 v1, 0x15

    return v1

    .line 475
    :pswitch_4
    const/16 v1, 0x14

    return v1

    .line 473
    :pswitch_5
    return v3

    .line 471
    :pswitch_6
    return v4

    .line 469
    :pswitch_7
    return v5

    .line 467
    :pswitch_8
    return v6

    .line 465
    :pswitch_9
    return v7

    .line 463
    :pswitch_a
    return v8

    .line 461
    :pswitch_b
    return v9

    .line 459
    :pswitch_c
    return v10

    .line 457
    :pswitch_d
    return v11

    .line 455
    :pswitch_e
    return v12

    .line 453
    :pswitch_f
    return v13

    .line 451
    :pswitch_10
    return v14

    .line 449
    :pswitch_11
    return v15

    .line 447
    :pswitch_12
    return v16

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca3f951 -> :sswitch_12
        -0x5df7c2cd -> :sswitch_11
        -0x5c88ab56 -> :sswitch_10
        -0x55c8ea83 -> :sswitch_f
        -0x4a8e9c12 -> :sswitch_e
        -0x4a4c8820 -> :sswitch_d
        -0x2cc5f96d -> :sswitch_c
        -0x1d228bd2 -> :sswitch_b
        -0x113db954 -> :sswitch_a
        -0x7efab4c -> :sswitch_9
        0x5555581 -> :sswitch_8
        0x7dde8f2 -> :sswitch_7
        0x1243434a -> :sswitch_6
        0x15cf8d38 -> :sswitch_5
        0x2c37027d -> :sswitch_4
        0x2eee437c -> :sswitch_3
        0x41256d34 -> :sswitch_2
        0x5ae99333 -> :sswitch_1
        0x6847a621 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist makeRemoteAnimationRunner(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)Landroid/view/IRemoteAnimationRunner$Stub;
    .locals 1
    .param p1, "animationCallback"    # Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    .line 537
    new-instance v0, Lcom/oplus/animation/RemoteTransitionManager$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/animation/RemoteTransitionManager$1;-><init>(Lcom/oplus/animation/RemoteTransitionManager;Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)V

    return-object v0
.end method

.method private blacklist postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 585
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 586
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 587
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 588
    return-void
.end method

.method private blacklist transferViewToSurface(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 10
    .param p1, "launchView"    # Landroid/view/View;

    .line 490
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 491
    return-object v0

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 494
    .local v1, "root":Landroid/view/ViewRootImpl;
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 496
    .local v2, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 497
    .local v3, "shadowSize":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 498
    .local v4, "shadowTouchPoint":Landroid/graphics/Point;
    invoke-virtual {v2, v3, v4}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 500
    iget v5, v3, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_5

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-ltz v5, :cond_5

    iget v5, v4, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_5

    iget v5, v4, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_1

    goto :goto_1

    .line 506
    :cond_1
    iget v5, v3, Landroid/graphics/Point;->x:I

    if-eqz v5, :cond_2

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-nez v5, :cond_3

    .line 507
    :cond_2
    const/4 v5, 0x1

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 508
    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 511
    :cond_3
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    .line 512
    .local v5, "session":Landroid/view/SurfaceSession;
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6, v5}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 513
    const-string v7, "launchView_surface"

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 514
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    .line 515
    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 516
    const-string v7, "transferViewToSurface"

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 517
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 518
    .local v6, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    .line 519
    .local v7, "surface":Landroid/view/Surface;
    invoke-virtual {v7, v6}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 523
    invoke-virtual {v7}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_4
    invoke-virtual {v7, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    :goto_0
    nop

    .line 526
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    :try_start_0
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 527
    invoke-virtual {v2, v0}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {v7, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 530
    nop

    .line 532
    return-object v6

    .line 529
    :catchall_0
    move-exception v8

    invoke-virtual {v7, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 530
    throw v8

    .line 502
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "session":Landroid/view/SurfaceSession;
    .end local v6    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v7    # "surface":Landroid/view/Surface;
    :cond_5
    :goto_1
    const-string v5, "RemoteTransitionManager"

    const-string v6, "transferViewToSurface: launchView dimensions must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-object v0
.end method

.method private blacklist wrapRemoteAnimationTarget([Landroid/view/RemoteAnimationTarget;)[Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    .locals 5
    .param p1, "apps"    # [Landroid/view/RemoteAnimationTarget;

    .line 591
    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 592
    .local v0, "length":I
    :goto_0
    new-array v1, v0, [Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    .line 593
    .local v1, "appsCompat":[Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 594
    new-instance v3, Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lcom/oplus/animation/RemoteAnimationTargetWrapper;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v3, v1, v2

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client-wrapRemoteAnimationTarget, appsCompat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", apps[i]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", launchViewInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    iget-object v4, v4, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RemoteTransitionManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 599
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public whitelist addRemoteAnimation(IILcom/oplus/animation/RemoteAnimationCallbackWrapper;JJ)V
    .locals 8
    .param p1, "transition"    # I
    .param p2, "activityTypeFilter"    # I
    .param p3, "animationCallback"    # Lcom/oplus/animation/RemoteAnimationCallbackWrapper;
    .param p4, "duration"    # J
    .param p6, "statusBarTransitionDelay"    # J

    .line 274
    invoke-direct {p0, p3}, Lcom/oplus/animation/RemoteTransitionManager;->makeRemoteAnimationRunner(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v6

    .line 275
    .local v6, "runner":Landroid/view/IRemoteAnimationRunner;
    new-instance v7, Landroid/view/RemoteAnimationAdapter;

    move-object v0, v7

    move-object v1, v6

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 276
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    invoke-virtual {v1, p1, p2, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(IILandroid/view/RemoteAnimationAdapter;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRemoteAnimation transition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activityTypeFilter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteTransitionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public whitelist clearLaunchViewInfoForWindow()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    const-string v0, "RemoteTransitionManager"

    const-string v1, "clearLaunchViewInfoForWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplExt;->clearLaunchViewInfoForWindow()V

    .line 404
    return-void
.end method

.method public whitelist createLaunchViewInfo(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Point;)Lcom/oplus/animation/LaunchViewInfo;
    .locals 5
    .param p1, "launchView"    # Landroid/view/View;
    .param p2, "launchPackage"    # Ljava/lang/String;
    .param p3, "extLocation"    # Landroid/graphics/Point;

    .line 356
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 361
    .local v0, "launchViewInfo":Lcom/oplus/animation/LaunchViewInfo;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 362
    .local v1, "viewLocation":Landroid/graphics/Point;
    if-eqz p3, :cond_1

    .line 363
    move-object v1, p3

    goto :goto_0

    .line 365
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 366
    .local v2, "pts":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 367
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 368
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 371
    .end local v2    # "pts":[I
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/animation/RemoteTransitionManager;->transferViewToSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v2

    .line 372
    .local v2, "viewSurface":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_2

    .line 373
    new-instance v3, Lcom/oplus/animation/LaunchViewInfo;

    invoke-direct {v3, v2, v1, p2}, Lcom/oplus/animation/LaunchViewInfo;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;Ljava/lang/String;)V

    move-object v0, v3

    .line 375
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createLaunchViewInfo: launchViewInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RemoteTransitionManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-object v0

    .line 357
    .end local v0    # "launchViewInfo":Lcom/oplus/animation/LaunchViewInfo;
    .end local v1    # "viewLocation":Landroid/graphics/Point;
    .end local v2    # "viewSurface":Landroid/view/SurfaceControl;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getActivityLaunchOptions(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;JJ)Landroid/app/ActivityOptions;
    .locals 8
    .param p1, "animationCallback"    # Lcom/oplus/animation/RemoteAnimationCallbackWrapper;
    .param p2, "duration"    # J
    .param p4, "statusBarTransitionDelay"    # J

    .line 255
    invoke-direct {p0, p1}, Lcom/oplus/animation/RemoteTransitionManager;->makeRemoteAnimationRunner(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v6

    .line 256
    .local v6, "runner":Landroid/view/IRemoteAnimationRunner;
    new-instance v7, Landroid/view/RemoteAnimationAdapter;

    move-object v0, v7

    move-object v1, v6

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 257
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityLaunchOptions duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusBarTransitionDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteTransitionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {v0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$scheduleApply$0$com-oplus-animation-RemoteTransitionManager(Ljava/util/ArrayList;J)V
    .locals 4
    .param p1, "params"    # Ljava/util/ArrayList;
    .param p2, "frame"    # J

    .line 429
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 430
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 431
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/animation/SurfaceParamsWrapper;

    .line 432
    .local v2, "surfaceParamsWrapper":Lcom/oplus/animation/SurfaceParamsWrapper;
    iget-object v3, v2, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    invoke-virtual {v2, v0}, Lcom/oplus/animation/SurfaceParamsWrapper;->applyTo(Landroid/view/SurfaceControl$Transaction;)V

    .line 430
    .end local v2    # "surfaceParamsWrapper":Lcom/oplus/animation/SurfaceParamsWrapper;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 436
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 437
    return-void
.end method

.method public whitelist registerRemoteAnimationsForActivity()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerRemoteAnimationsForActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", definition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteTransitionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 311
    :cond_0
    return-void
.end method

.method public whitelist registerRemoteAnimationsForWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 288
    const-string v0, "RemoteTransitionManager"

    if-nez p1, :cond_0

    .line 289
    const-string v1, "registerRemoteAnimationsForWindow: rootView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 293
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRemoteAnimationsForWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/animation/RemoteTransitionManager;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    invoke-interface {v0, v2}, Landroid/view/IViewRootImplExt;->registerRemoteAnimationsForWindow(Landroid/view/RemoteAnimationDefinition;)V

    goto :goto_0

    .line 297
    :cond_1
    const-string v2, "registerRemoteAnimationsForWindow: viewRoot is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void
.end method

.method public whitelist scheduleApply(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/animation/SurfaceParamsWrapper;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/animation/SurfaceParamsWrapper;>;"
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 428
    new-instance v1, Lcom/oplus/animation/RemoteTransitionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oplus/animation/RemoteTransitionManager$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/animation/RemoteTransitionManager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 439
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 441
    :cond_0
    return-void
.end method

.method public whitelist setLaunchViewInfoForWindow(Lcom/oplus/animation/LaunchViewInfo;)V
    .locals 2
    .param p1, "launchViewInfo"    # Lcom/oplus/animation/LaunchViewInfo;

    .line 386
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLaunchViewInfoForWindow: launchViewInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteTransitionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IViewRootImplExt;->setLaunchViewInfoForWindow(Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public whitelist setWallpaperZoomOut(Landroid/os/IBinder;FLandroid/content/Context;)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F
    .param p3, "context"    # Landroid/content/Context;

    .line 415
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 416
    invoke-static {p3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 418
    :cond_0
    return-void
.end method

.method public whitelist unregisterRemoteAnimationsForActivity()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterRemoteAnimationsForActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteTransitionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->unregisterRemoteAnimations()V

    .line 344
    :cond_0
    return-void
.end method

.method public whitelist unregisterRemoteAnimationsForWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 320
    const-string v0, "RemoteTransitionManager"

    if-nez p1, :cond_0

    .line 321
    const-string v1, "unregisterRemoteAnimationsForWindow: rootView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 325
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterRemoteAnimationsForWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplExt;->unregisterRemoteAnimationsForWindow()V

    .line 328
    const/4 v1, 0x0

    goto :goto_0

    .line 330
    :cond_1
    const-string v2, "unregisterRemoteAnimationsForWindow: viewRoot is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void
.end method
