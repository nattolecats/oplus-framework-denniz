.class public abstract Lcom/oplus/telephony/BaseManagerExt;
.super Ljava/lang/Object;
.source "BaseManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;
    }
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field protected blacklist mContext:Landroid/content/Context;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mServiceDeath:Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinder(Lcom/oplus/telephony/BaseManagerExt;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oplus/telephony/BaseManagerExt;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceDeath(Lcom/oplus/telephony/BaseManagerExt;)Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/oplus/telephony/BaseManagerExt;->mServiceDeath:Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBinder(Lcom/oplus/telephony/BaseManagerExt;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/telephony/BaseManagerExt;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/telephony/BaseManagerExt;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;-><init>(Lcom/oplus/telephony/BaseManagerExt;Lcom/oplus/telephony/BaseManagerExt$DeathRecipient-IA;)V

    iput-object v0, p0, Lcom/oplus/telephony/BaseManagerExt;->mServiceDeath:Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iput-object v0, p0, Lcom/oplus/telephony/BaseManagerExt;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/oplus/telephony/BaseManagerExt;->mContext:Landroid/content/Context;

    .line 50
    :goto_0
    return-void
.end method


# virtual methods
.method protected blacklist isServiceConnected()Z
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/oplus/telephony/BaseManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/oplus/telephony/BaseManagerExt;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    .local v1, "isConnected":Z
    :goto_0
    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "binder not Connected."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    monitor-exit v0

    return v1

    .line 72
    .end local v1    # "isConnected":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist setIBinder(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .line 53
    iget-object v0, p0, Lcom/oplus/telephony/BaseManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iput-object p1, p0, Lcom/oplus/telephony/BaseManagerExt;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz p1, :cond_0

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/oplus/telephony/BaseManagerExt;->mServiceDeath:Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "linkToDeath NoSuchElementException."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
