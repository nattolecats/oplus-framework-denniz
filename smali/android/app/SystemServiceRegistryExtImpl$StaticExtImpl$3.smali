.class Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$3;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistryExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;->registerService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Lcom/oplus/os/LinearmotorVibrator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    .line 104
    iput-object p1, p0, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$3;->this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/oplus/os/LinearmotorVibrator;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 107
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.vibrator_lmvibrator"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "linearmotor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 109
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oplus/os/ILinearmotorVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/os/ILinearmotorVibratorService;

    move-result-object v1

    .line 110
    .local v1, "service":Lcom/oplus/os/ILinearmotorVibratorService;
    new-instance v2, Lcom/oplus/os/LinearmotorVibrator;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/oplus/os/LinearmotorVibrator;-><init>(Landroid/content/Context;Lcom/oplus/os/ILinearmotorVibratorService;)V

    return-object v2

    .line 112
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "service":Lcom/oplus/os/ILinearmotorVibratorService;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$3;->createService(Landroid/app/ContextImpl;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object p1

    return-object p1
.end method
