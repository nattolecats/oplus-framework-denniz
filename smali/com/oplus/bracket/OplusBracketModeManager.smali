.class public Lcom/oplus/bracket/OplusBracketModeManager;
.super Ljava/lang/Object;
.source "OplusBracketModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;
    }
.end annotation


# static fields
.field public static final whitelist CLIENT_DISABLE_TOUCH:I = 0x4

.field private static final blacklist CLIENT_DISABLE_TOUCH_STR:Ljava/lang/String; = "CLIENT_DISABLE_TOUCH"

.field public static final whitelist CLIENT_ENABLE_TOUCH:I = 0x3

.field private static final blacklist CLIENT_ENABLE_TOUCH_STR:Ljava/lang/String; = "CLIENT_ENABLE_TOUCH"

.field public static final whitelist CLIENT_ENTER_BRACKET:I = 0x1

.field private static final blacklist CLIENT_ENTER_BRACKET_STR:Ljava/lang/String; = "CLIENT_ENTER_BRACKET"

.field public static final whitelist CLIENT_EXIT_BRACKET:I = 0x2

.field private static final blacklist CLIENT_EXIT_BRACKET_STR:Ljava/lang/String; = "CLIENT_EXIT_BRACKET"

.field public static final whitelist CLIENT_INVISIBLE_TOUCH:I = 0x6

.field private static final blacklist CLIENT_INVISIBLE_TOUCH_STR:Ljava/lang/String; = "CLIENT_INVISIBLE_TOUCH"

.field public static final whitelist CLIENT_VISIBLE_TOUCH:I = 0x5

.field private static final blacklist CLIENT_VISIBLE_TOUCH_STR:Ljava/lang/String; = "CLIENT_VISIBLE_TOUCH"

.field public static final whitelist SEVER_QUEST_DCS_TOUCH:I = 0x4

.field public static final whitelist SEVER_QUEST_TOUCH:I = 0x3

.field public static final whitelist TAG:Ljava/lang/String; = "OplusBracketModeManager"

.field public static final whitelist WINDOWING_MODE_BRACKET:I = 0x73

.field public static final whitelist WINDOW_TYPE_MODE_BRACKET:I = 0x843

.field private static volatile blacklist sInstance:Lcom/oplus/bracket/OplusBracketModeManager;


# instance fields
.field private blacklist mBracketRect:Landroid/graphics/Rect;

.field private blacklist mHasRegister:Z

.field private blacklist mInBracketMode:Z

.field private blacklist mInnerListener:Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOAms:Landroid/app/OplusActivityManager;

.field private blacklist mObserver:Lcom/oplus/bracket/IOplusBracketWindowObserver;

.field private blacklist mTouchModeEnable:Z

.field private blacklist mUpdateDCS:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmObserver(Lcom/oplus/bracket/OplusBracketModeManager;Lcom/oplus/bracket/IOplusBracketWindowObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mObserver:Lcom/oplus/bracket/IOplusBracketWindowObserver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchModeEnable(Lcom/oplus/bracket/OplusBracketModeManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mTouchModeEnable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdateDCS(Lcom/oplus/bracket/OplusBracketModeManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mUpdateDCS:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mBracketRect:Landroid/graphics/Rect;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mTouchModeEnable:Z

    .line 63
    iput-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mHasRegister:Z

    .line 65
    iput-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mUpdateDCS:Z

    .line 67
    new-instance v0, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;-><init>(Lcom/oplus/bracket/OplusBracketModeManager;Lcom/oplus/bracket/OplusBracketModeManager$InnerListener-IA;)V

    iput-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInnerListener:Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;

    .line 71
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mOAms:Landroid/app/OplusActivityManager;

    .line 72
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/bracket/OplusBracketModeManager;
    .locals 2

    .line 109
    sget-object v0, Lcom/oplus/bracket/OplusBracketModeManager;->sInstance:Lcom/oplus/bracket/OplusBracketModeManager;

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lcom/oplus/bracket/OplusBracketModeManager;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/oplus/bracket/OplusBracketModeManager;->sInstance:Lcom/oplus/bracket/OplusBracketModeManager;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/oplus/bracket/OplusBracketModeManager;

    invoke-direct {v1}, Lcom/oplus/bracket/OplusBracketModeManager;-><init>()V

    sput-object v1, Lcom/oplus/bracket/OplusBracketModeManager;->sInstance:Lcom/oplus/bracket/OplusBracketModeManager;

    .line 114
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/bracket/OplusBracketModeManager;->sInstance:Lcom/oplus/bracket/OplusBracketModeManager;

    return-object v0
.end method

.method public static whitelist modeChangeReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 234
    packed-switch p0, :pswitch_data_0

    .line 250
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_0
    const-string v0, "CLIENT_INVISIBLE_TOUCH"

    return-object v0

    .line 244
    :pswitch_1
    const-string v0, "CLIENT_VISIBLE_TOUCH"

    return-object v0

    .line 242
    :pswitch_2
    const-string v0, "CLIENT_DISABLE_TOUCH"

    return-object v0

    .line 240
    :pswitch_3
    const-string v0, "CLIENT_ENABLE_TOUCH"

    return-object v0

    .line 238
    :pswitch_4
    const-string v0, "CLIENT_EXIT_BRACKET"

    return-object v0

    .line 236
    :pswitch_5
    const-string v0, "CLIENT_ENTER_BRACKET"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist addOnConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/oplus/bracket/IOplusBracketModeChangedListener;

    .line 126
    const-string v0, "OplusBracketModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnConfigChangedListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/bracket/OplusBracketLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->addBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 134
    :cond_0
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusBracketModeManager"

    const-string v3, "addOnConfigChangedListener remoteException "

    invoke-static {v2, v3}, Lcom/oplus/bracket/OplusBracketLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 135
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist disableOnClick(Landroid/view/View;Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 182
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 183
    return v0

    .line 185
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mTouchModeEnable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInBracketMode:Z

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p2}, Landroid/view/InputEvent;->isTainted()Z

    move-result v0

    return v0

    .line 188
    :cond_1
    return v0
.end method

.method public whitelist onConfigChange(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 192
    if-nez p1, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    instance-of v0, p1, Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_1

    .line 196
    return-void

    .line 198
    :cond_1
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x73

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInBracketMode:Z

    .line 199
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mHasRegister:Z

    if-nez v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mBracketRect:Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInBracketMode:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mHasRegister:Z

    if-nez v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInnerListener:Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;

    invoke-virtual {p0, v0}, Lcom/oplus/bracket/OplusBracketModeManager;->addOnConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    .line 204
    iput-boolean v2, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mHasRegister:Z

    .line 206
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mHasRegister:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInBracketMode:Z

    if-nez v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInnerListener:Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;

    invoke-virtual {p0, v0}, Lcom/oplus/bracket/OplusBracketModeManager;->removeOnConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    .line 208
    iput-boolean v3, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mHasRegister:Z

    .line 210
    :cond_5
    return-void
.end method

.method public blacklist onSurfaceViewShow(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 216
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mObserver:Lcom/oplus/bracket/IOplusBracketWindowObserver;

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInnerListener:Lcom/oplus/bracket/OplusBracketModeManager$InnerListener;

    invoke-interface {v0, v1, p1}, Lcom/oplus/bracket/IOplusBracketWindowObserver;->onSurfaceViewShow(Lcom/oplus/bracket/IOplusBracketModeChangedListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusBracketModeManager"

    const-string v2, "setSurfaceViewFlag: "

    invoke-static {v1, v2}, Lcom/oplus/bracket/OplusBracketLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist removeOnConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/oplus/bracket/IOplusBracketModeChangedListener;

    .line 146
    const-string v0, "OplusBracketModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOnConfigChangedListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/bracket/OplusBracketLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->removeBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 154
    :cond_0
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusBracketModeManager"

    const-string v3, "removeOnConfigChangedListener remoteException "

    invoke-static {v2, v3}, Lcom/oplus/bracket/OplusBracketLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 155
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist updateDCSTouch()V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mUpdateDCS:Z

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/bracket/OplusBracketModeManager;->onSurfaceViewShow(I)V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mUpdateDCS:Z

    .line 231
    :cond_0
    return-void
.end method

.method public blacklist updateInputEventInTouchPanel(Landroid/view/View;Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "inputEventReceiver"    # Landroid/view/InputEventReceiver;

    .line 163
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 164
    return v0

    .line 166
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mTouchModeEnable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/bracket/OplusBracketModeManager;->mInBracketMode:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, p2

    check-cast v1, Landroid/view/MotionEvent;

    .line 171
    .local v1, "ev":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 172
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 173
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setTainted(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/oplus/bracket/OplusBracketModeManager;->updateDCSTouch()V

    .line 175
    return v0

    .line 178
    .end local v1    # "ev":Landroid/view/MotionEvent;
    :cond_1
    return v0
.end method
