.class Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$7;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Lcom/oplus/nwpower/OSysNetControlManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    .line 152
    iput-object p1, p0, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$7;->this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Lcom/oplus/nwpower/OSysNetControlManager;
    .locals 1

    .line 155
    invoke-static {}, Lcom/oplus/nwpower/OSysNetControlManager;->getInstance()Lcom/oplus/nwpower/OSysNetControlManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$7;->createService()Lcom/oplus/nwpower/OSysNetControlManager;

    move-result-object v0

    return-object v0
.end method
