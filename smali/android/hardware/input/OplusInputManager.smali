.class public Landroid/hardware/input/OplusInputManager;
.super Ljava/lang/Object;
.source "OplusInputManager.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "OplusInputManager"


# instance fields
.field private final blacklist mICallBack:Landroid/os/IBinder;

.field private blacklist mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 4

    .line 49
    const-string v0, "OplusInputManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/OplusInputManager;->mICallBack:Landroid/os/IBinder;

    .line 51
    :try_start_0
    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 53
    .local v1, "im":Landroid/hardware/input/IInputManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, IInputManager ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IOplusInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IOplusInputManager;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    .line 56
    if-nez v2, :cond_1

    .line 57
    const-string v2, "init failed, unknown IOplusInputManager!"

    invoke-static {v0, v2}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "init failed, unknown IInputManager!"

    invoke-static {v0, v2}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "im":Landroid/hardware/input/IInputManager;
    :cond_1
    :goto_0
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist injectShoulderTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "mode"    # I

    .line 76
    iget-object v0, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    const-string v1, "OplusInputManager"

    if-nez v0, :cond_0

    .line 77
    const-string v0, "injectShoulderTouchEvent failed, oim is null!"

    invoke-static {v1, v0}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectShoulderTouchEvent in oims, motionEvent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IOplusInputManager;->injectShoulderTouchEvent(Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectShoulderTouchEvent failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist registerAppDeathListener()V
    .locals 4

    .line 143
    iget-object v0, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "OplusInputManager"

    const-string v1, "registerAppDeathListener failed, oim is null!"

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    :cond_0
    const-string v0, "OplusInputManager"

    const-string v1, "registerAppDeathListener in oims"

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_0
    const-class v0, Landroid/hardware/input/OplusInputManager;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    iget-object v1, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    iget-object v2, p0, Landroid/hardware/input/OplusInputManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/hardware/input/IOplusInputManager;->registerAppDeathListener(Landroid/os/IBinder;)V

    .line 151
    monitor-exit v0

    .line 154
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/hardware/input/OplusInputManager;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .restart local p0    # "this":Landroid/hardware/input/OplusInputManager;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAppDeathListener failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setNeedMergeTouchEvent(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 96
    iget-object v0, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "OplusInputManager"

    const-string v1, "setNeedMergeTouchEvent failed, oim is null!"

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_0
    const-string v0, "OplusInputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedMergeTouchEvent in oims, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    const-class v0, Landroid/hardware/input/OplusInputManager;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    iget-object v1, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IOplusInputManager;->setNeedMergeTouchEvent(Z)V

    .line 104
    monitor-exit v0

    .line 107
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/hardware/input/OplusInputManager;
    .end local p1    # "enabled":Z
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .restart local p0    # "this":Landroid/hardware/input/OplusInputManager;
    .restart local p1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNeedMergeTouchEvent failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setShoulderTouchInfo(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "info"    # Landroid/os/Bundle;

    .line 119
    iget-object v0, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "OplusInputManager"

    const-string v2, "setShoulderTouchInfo failed, oim is null!"

    invoke-static {v0, v2}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_0
    const-string v0, "OplusInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShoulderTouchInfo in oims, info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    const-class v0, Landroid/hardware/input/OplusInputManager;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    iget-object v2, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    invoke-interface {v2, p1}, Landroid/hardware/input/IOplusInputManager;->setShoulderTouchInfo(Landroid/os/Bundle;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 127
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/hardware/input/OplusInputManager;
    .end local p1    # "info":Landroid/os/Bundle;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .restart local p0    # "this":Landroid/hardware/input/OplusInputManager;
    .restart local p1    # "info":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OplusInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShoulderTouchInfo failed, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist unRegisterAppDeathListener()V
    .locals 4

    .line 166
    iget-object v0, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "OplusInputManager"

    const-string v1, "unRegisterAppDeathListener failed, oim is null!"

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_0
    const-string v0, "OplusInputManager"

    const-string v1, "unRegisterAppDeathListener in oims"

    invoke-static {v0, v1}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    const-class v0, Landroid/hardware/input/OplusInputManager;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    iget-object v1, p0, Landroid/hardware/input/OplusInputManager;->mIOplusInputManager:Landroid/hardware/input/IOplusInputManager;

    iget-object v2, p0, Landroid/hardware/input/OplusInputManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/hardware/input/IOplusInputManager;->unRegisterAppDeathListener(Landroid/os/IBinder;)V

    .line 174
    monitor-exit v0

    .line 177
    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/hardware/input/OplusInputManager;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    .restart local p0    # "this":Landroid/hardware/input/OplusInputManager;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterAppDeathListener failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/debug/InputLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
