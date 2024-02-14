.class Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$9;
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
        "Landroid/telecom/TelecomManagerExt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    .line 172
    iput-object p1, p0, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$9;->this$0:Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/telecom/TelecomManagerExt;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 175
    new-instance v0, Landroid/telecom/TelecomManagerExt;

    invoke-direct {v0, p1}, Landroid/telecom/TelecomManagerExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistryExtImpl$StaticExtImpl$9;->createService(Landroid/app/ContextImpl;)Landroid/telecom/TelecomManagerExt;

    move-result-object p1

    return-object p1
.end method
