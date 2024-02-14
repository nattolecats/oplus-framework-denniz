.class public Landroid/view/OplusAccidentallyTouchHelper;
.super Ljava/lang/Object;
.source "OplusAccidentallyTouchHelper.java"

# interfaces
.implements Landroid/view/IOplusAccidentallyTouchHelper;


# static fields
.field private static final blacklist DIRECT_FLAG:I = 0x5

.field private static final blacklist ENABLE_FLAG:I = 0x7

.field static final blacklist TAG_WM:Ljava/lang/String; = "OplusAccidentallyManager"

.field private static final blacklist WHITE_LIST_FLAG:I = 0x6

.field private static volatile blacklist sInstance:Landroid/view/OplusAccidentallyTouchHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/view/OplusAccidentallyTouchHelper;->sInstance:Landroid/view/OplusAccidentallyTouchHelper;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static whitelist getInstance()Landroid/view/OplusAccidentallyTouchHelper;
    .locals 2

    .line 43
    sget-object v0, Landroid/view/OplusAccidentallyTouchHelper;->sInstance:Landroid/view/OplusAccidentallyTouchHelper;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Landroid/view/OplusAccidentallyTouchHelper;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Landroid/view/OplusAccidentallyTouchHelper;->sInstance:Landroid/view/OplusAccidentallyTouchHelper;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Landroid/view/OplusAccidentallyTouchHelper;

    invoke-direct {v1}, Landroid/view/OplusAccidentallyTouchHelper;-><init>()V

    sput-object v1, Landroid/view/OplusAccidentallyTouchHelper;->sInstance:Landroid/view/OplusAccidentallyTouchHelper;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Landroid/view/OplusAccidentallyTouchHelper;->sInstance:Landroid/view/OplusAccidentallyTouchHelper;

    return-object v0
.end method

.method private blacklist updateTouchPanelInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "enable"    # Ljava/lang/String;
    .param p2, "direct"    # Ljava/lang/String;
    .param p3, "whiteList"    # Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accidentPrevention >>> updateTouchPanelInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusAccidentallyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x6

    invoke-direct {p0, p3, v0}, Landroid/view/OplusAccidentallyTouchHelper;->writeTouchPanelFile(Ljava/lang/String;I)V

    .line 110
    const/4 v0, 0x5

    invoke-direct {p0, p2, v0}, Landroid/view/OplusAccidentallyTouchHelper;->writeTouchPanelFile(Ljava/lang/String;I)V

    .line 111
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/view/OplusAccidentallyTouchHelper;->writeTouchPanelFile(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method private blacklist writeTouchPanelFile(Ljava/lang/String;I)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 115
    const-string v0, "OplusAccidentallyManager"

    const/4 v1, 0x0

    .line 117
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/oplus/touchnode/OplusTouchNodeManager;->getInstance()Lcom/oplus/touchnode/OplusTouchNodeManager;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/oplus/touchnode/OplusTouchNodeManager;->writeNodeFile(ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 122
    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write touch panel file excption "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accidentPrevention >>> writeNarrowFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method


# virtual methods
.method public blacklist getAccidentallyTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;
    .locals 1

    .line 77
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEdgeEnable()Z
    .locals 1

    .line 141
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getEdgeEnable()Z

    move-result v0

    return v0
.end method

.method public whitelist getEdgeT1()I
    .locals 1

    .line 146
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getEdgeT1()I

    move-result v0

    return v0
.end method

.method public whitelist getEdgeT2()I
    .locals 1

    .line 136
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getEdgeT2()I

    move-result v0

    return v0
.end method

.method public whitelist getOriEdgeT1()I
    .locals 1

    .line 131
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getOriEdgeT1()I

    move-result v0

    return v0
.end method

.method public whitelist initData(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->initData(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public whitelist initOnAmsReady()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->init()V

    .line 65
    return-void
.end method

.method public whitelist updataeAccidentPreventionState(Landroid/content/Context;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z
    .param p3, "rotation"    # I

    .line 84
    const-string v0, "1"

    const-string v1, "0"

    if-eqz p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 85
    .local v2, "whiteList":Ljava/lang/String;
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusAccidentallyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    :pswitch_0
    const-string v0, "2"

    invoke-direct {p0, v1, v0, v2}, Landroid/view/OplusAccidentallyTouchHelper;->updateTouchPanelInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    goto :goto_1

    .line 95
    :pswitch_1
    invoke-direct {p0, v0, v1, v2}, Landroid/view/OplusAccidentallyTouchHelper;->updateTouchPanelInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_1

    .line 91
    :pswitch_2
    invoke-direct {p0, v1, v0, v2}, Landroid/view/OplusAccidentallyTouchHelper;->updateTouchPanelInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    goto :goto_1

    .line 87
    :pswitch_3
    invoke-direct {p0, v0, v1, v2}, Landroid/view/OplusAccidentallyTouchHelper;->updateTouchPanelInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    nop

    .line 105
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist updatePointerEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/content/res/OplusBaseConfiguration;)Landroid/view/MotionEvent;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mView"    # Landroid/view/View;
    .param p3, "mLastConfiguration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 59
    invoke-static {}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->updatePointerEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/content/res/OplusBaseConfiguration;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method
