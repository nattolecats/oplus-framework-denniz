.class public Lcom/oplus/telephony/SubscriptionManagerExt;
.super Lcom/oplus/telephony/BaseManagerExt;
.source "SubscriptionManagerExt.java"


# static fields
.field public static final whitelist ISUB_EXT:Ljava/lang/String; = "isub_ext"

.field private static final blacklist TAG:Ljava/lang/String; = "SubscriptionManagerExt"


# instance fields
.field private blacklist mISubExt:Lcom/oplus/telephony/ISubExt;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/oplus/telephony/BaseManagerExt;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static blacklist from(Landroid/content/Context;)Lcom/oplus/telephony/SubscriptionManagerExt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    const-string v0, "isub_ext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/telephony/SubscriptionManagerExt;

    return-object v0
.end method

.method private blacklist getISubExt()Lcom/oplus/telephony/ISubExt;
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/oplus/telephony/SubscriptionManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/telephony/SubscriptionManagerExt;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "isub_ext"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/telephony/ISubExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/telephony/ISubExt;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v1, "temp":Lcom/oplus/telephony/ISubExt;
    if-eqz v1, :cond_0

    .line 77
    :try_start_1
    iput-object v1, p0, Lcom/oplus/telephony/SubscriptionManagerExt;->mISubExt:Lcom/oplus/telephony/ISubExt;

    .line 78
    invoke-interface {v1}, Lcom/oplus/telephony/ISubExt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/telephony/SubscriptionManagerExt;->setIBinder(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/oplus/telephony/SubscriptionManagerExt;->mISubExt:Lcom/oplus/telephony/ISubExt;

    .line 84
    .end local v1    # "temp":Lcom/oplus/telephony/ISubExt;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oplus/telephony/SubscriptionManagerExt;->mISubExt:Lcom/oplus/telephony/ISubExt;

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
