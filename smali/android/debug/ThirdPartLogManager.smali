.class public Landroid/debug/ThirdPartLogManager;
.super Landroid/debug/IDebugLogManager;
.source "ThirdPartLogManager.java"


# static fields
.field private static final blacklist MM_MOVE_XLOG_ACTION:Ljava/lang/String; = "wechat.shell.MOVE_XLOG"

.field private static final blacklist MM_PKG:Ljava/lang/String; = "com.tencent.mm"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Landroid/debug/ThirdPartLogManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/debug/ThirdPartLogManager;->TAG_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/debug/ThirdPartLogManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/debug/ThirdPartLogManager;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/ThirdPartLogManager;->sInstance:Landroid/debug/ThirdPartLogManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/debug/ThirdPartLogManager;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/ThirdPartLogManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    sget-object v0, Landroid/debug/ThirdPartLogManager;->sInstance:Landroid/debug/ThirdPartLogManager;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Landroid/debug/ThirdPartLogManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Landroid/debug/ThirdPartLogManager;->sInstance:Landroid/debug/ThirdPartLogManager;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Landroid/debug/ThirdPartLogManager;

    invoke-direct {v1, p0}, Landroid/debug/ThirdPartLogManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/ThirdPartLogManager;->sInstance:Landroid/debug/ThirdPartLogManager;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Landroid/debug/ThirdPartLogManager;->sInstance:Landroid/debug/ThirdPartLogManager;

    return-object v0
.end method


# virtual methods
.method public blacklist setLogDump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    sget-object v0, Landroid/debug/ThirdPartLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogDump: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Landroid/debug/ThirdPartLogManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "wechat.shell.MOVE_XLOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Landroid/debug/ThirdPartLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Landroid/debug/ThirdPartLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogOff: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    sget-object v0, Landroid/debug/ThirdPartLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogOn: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/debug/ThirdPartLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
