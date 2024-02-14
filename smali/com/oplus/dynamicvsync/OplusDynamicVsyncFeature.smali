.class public Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;
.super Ljava/lang/Object;
.source "OplusDynamicVsyncFeature.java"

# interfaces
.implements Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature$InstanceHolder;
    }
.end annotation


# static fields
.field public static final blacklist DEBUG:Z

.field private static final blacklist OPLUS_DYNAMICVSYNC_SERVICE_NAME:Ljava/lang/String; = "oplusdynamicvsync"

.field private static final blacklist TAG:Ljava/lang/String; = "DynamicVsyncClient"

.field private static final blacklist mOplusDebug:Z


# instance fields
.field private blacklist mOplusDynamicVsyncService:Lcom/oplus/dynamicvsync/IOplusDynamicVsync;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 31
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDebug:Z

    .line 33
    nop

    .line 34
    const-string v0, "persist.sys.dynamicvsync.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->DEBUG:Z

    .line 33
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDynamicVsyncService:Lcom/oplus/dynamicvsync/IOplusDynamicVsync;

    .line 40
    sget-boolean v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "DynamicVsyncClient"

    const-string v1, "OplusDynamicVsyncFeature create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;
    .locals 1

    .line 50
    sget-object v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature$InstanceHolder;->INSTANCE:Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;

    .line 51
    .local v0, "instance":Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;
    return-object v0
.end method

.method private blacklist getService()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDynamicVsyncService:Lcom/oplus/dynamicvsync/IOplusDynamicVsync;

    if-nez v0, :cond_1

    .line 94
    const-string v0, "oplusdynamicvsync"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 96
    const-string v1, "DynamicVsyncClient"

    const-string v2, "failed to get dynamicvsync service:binder null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/oplus/dynamicvsync/IOplusDynamicVsync$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/dynamicvsync/IOplusDynamicVsync;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDynamicVsyncService:Lcom/oplus/dynamicvsync/IOplusDynamicVsync;

    .line 101
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist doAnimation(ILjava/lang/String;)V
    .locals 3
    .param p1, "durationInMs"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDebug:Z

    const-string v1, "DynamicVsyncClient"

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAnimation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->getService()V

    .line 61
    iget-object v0, p0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDynamicVsyncService:Lcom/oplus/dynamicvsync/IOplusDynamicVsync;

    if-nez v0, :cond_1

    .line 62
    const-string v0, "failed to get dynamicvsync service:binder null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 67
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/dynamicvsync/IOplusDynamicVsync;->doAnimation(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "requestRefreshRate failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist flingEvent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "durationInMs"    # I

    .line 75
    sget-boolean v0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDebug:Z

    const-string v1, "DynamicVsyncClient"

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingEvent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->getService()V

    .line 80
    iget-object v0, p0, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->mOplusDynamicVsyncService:Lcom/oplus/dynamicvsync/IOplusDynamicVsync;

    if-nez v0, :cond_1

    .line 81
    const-string v0, "failed to get dynamicvsync service:binder null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 86
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/dynamicvsync/IOplusDynamicVsync;->flingEvent(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "requestRefreshRate failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
