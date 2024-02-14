.class Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$14;
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
        "Landroid/os/renderacc/RenderAcceleratingManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    .line 213
    iput-object p1, p0, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$14;->this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/renderacc/RenderAcceleratingManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 216
    const-string v0, "render_accelerating"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 217
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/renderacc/IRenderAcceleratingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/renderacc/IRenderAcceleratingService;

    move-result-object v1

    .line 218
    .local v1, "service":Landroid/os/renderacc/IRenderAcceleratingService;
    new-instance v2, Landroid/os/renderacc/RenderAcceleratingManager;

    invoke-direct {v2, p1, v1}, Landroid/os/renderacc/RenderAcceleratingManager;-><init>(Landroid/content/Context;Landroid/os/renderacc/IRenderAcceleratingService;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$14;->createService(Landroid/app/ContextImpl;)Landroid/os/renderacc/RenderAcceleratingManager;

    move-result-object p1

    return-object p1
.end method
