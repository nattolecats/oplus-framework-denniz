.class Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;
.super Ljava/lang/Object;
.source "BaseManagerExt.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/telephony/BaseManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/telephony/BaseManagerExt;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/telephony/BaseManagerExt;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;->this$0:Lcom/oplus/telephony/BaseManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/telephony/BaseManagerExt;Lcom/oplus/telephony/BaseManagerExt$DeathRecipient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;-><init>(Lcom/oplus/telephony/BaseManagerExt;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;->this$0:Lcom/oplus/telephony/BaseManagerExt;

    iget-object v0, v0, Lcom/oplus/telephony/BaseManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;->this$0:Lcom/oplus/telephony/BaseManagerExt;

    invoke-static {v1}, Lcom/oplus/telephony/BaseManagerExt;->-$$Nest$fgetmBinder(Lcom/oplus/telephony/BaseManagerExt;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 81
    :try_start_1
    iget-object v1, p0, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;->this$0:Lcom/oplus/telephony/BaseManagerExt;

    invoke-static {v1}, Lcom/oplus/telephony/BaseManagerExt;->-$$Nest$fgetmBinder(Lcom/oplus/telephony/BaseManagerExt;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;->this$0:Lcom/oplus/telephony/BaseManagerExt;

    invoke-static {v2}, Lcom/oplus/telephony/BaseManagerExt;->-$$Nest$fgetmServiceDeath(Lcom/oplus/telephony/BaseManagerExt;)Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unlinkToDeath NoSuchElementException."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    iget-object v1, p0, Lcom/oplus/telephony/BaseManagerExt$DeathRecipient;->this$0:Lcom/oplus/telephony/BaseManagerExt;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/telephony/BaseManagerExt;->-$$Nest$fputmBinder(Lcom/oplus/telephony/BaseManagerExt;Landroid/os/IBinder;)V

    .line 87
    :cond_0
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
