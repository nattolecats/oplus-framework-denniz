.class Lcom/oplus/util/OplusHoraeThermalHelper$2;
.super Lcom/oplus/thermalcontrol/IThermalStatusListener$Stub;
.source "OplusHoraeThermalHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/util/OplusHoraeThermalHelper;->addHoraeThermalStatusListener(Ljava/util/concurrent/Executor;Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusHoraeThermalHelper;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$thermalListener:Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/util/OplusHoraeThermalHelper;Ljava/util/concurrent/Executor;Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/util/OplusHoraeThermalHelper;

    .line 335
    iput-object p1, p0, Lcom/oplus/util/OplusHoraeThermalHelper$2;->this$0:Lcom/oplus/util/OplusHoraeThermalHelper;

    iput-object p2, p0, Lcom/oplus/util/OplusHoraeThermalHelper$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/oplus/util/OplusHoraeThermalHelper$2;->val$thermalListener:Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;

    invoke-direct {p0}, Lcom/oplus/thermalcontrol/IThermalStatusListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$notifyThermalBroadCast$1(Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;II)V
    .locals 0
    .param p0, "thermalListener"    # Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;
    .param p1, "level"    # I
    .param p2, "temp"    # I

    .line 363
    invoke-interface {p0, p1, p2}, Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;->notifyThermalBroadCast(II)V

    .line 364
    return-void
.end method

.method static synthetic blacklist lambda$notifyThermalStatus$0(Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;I)V
    .locals 0
    .param p0, "thermalListener"    # Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;
    .param p1, "level"    # I

    .line 351
    invoke-interface {p0, p1}, Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;->thermalLevel(I)V

    .line 352
    return-void
.end method


# virtual methods
.method public whitelist empty1()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    return-void
.end method

.method public whitelist empty2()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    return-void
.end method

.method public whitelist notifyThermalBroadCast(II)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "temp"    # I

    .line 360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusHoraeThermalHelper$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oplus/util/OplusHoraeThermalHelper$2;->val$thermalListener:Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;

    new-instance v4, Lcom/oplus/util/OplusHoraeThermalHelper$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1, p2}, Lcom/oplus/util/OplusHoraeThermalHelper$2$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;II)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw v2
.end method

.method public whitelist notifyThermalStatus(I)V
    .locals 5
    .param p1, "level"    # I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIThermalStatusListener info is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoraeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 350
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusHoraeThermalHelper$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oplus/util/OplusHoraeThermalHelper$2;->val$thermalListener:Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;

    new-instance v4, Lcom/oplus/util/OplusHoraeThermalHelper$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Lcom/oplus/util/OplusHoraeThermalHelper$2$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 355
    nop

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 355
    throw v2
.end method
