.class public Lsystem/ext/preload/ServicesPreloadExtImpl;
.super Lsystem/ext/loader/preload/PreloadExtImpl;
.source "ServicesPreloadExtImpl.java"

# interfaces
.implements Lsystem/ext/preload/IServicesPreloadExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lsystem/ext/loader/preload/PreloadExtImpl;-><init>()V

    .line 8
    const-string v0, "system.ext.registry.ServicesRegistry"

    invoke-virtual {p0, v0}, Lsystem/ext/preload/ServicesPreloadExtImpl;->register(Ljava/lang/String;)V

    .line 9
    const-string v0, "system.ext.registry.BaseServicesCoreRegistry"

    invoke-virtual {p0, v0}, Lsystem/ext/preload/ServicesPreloadExtImpl;->register(Ljava/lang/String;)V

    .line 10
    const-string v0, "system.ext.registry.BiometricsServicesCoreRegistry"

    invoke-virtual {p0, v0}, Lsystem/ext/preload/ServicesPreloadExtImpl;->register(Ljava/lang/String;)V

    .line 11
    const-string v0, "system.ext.registry.SocServicesCoreRegistry"

    invoke-virtual {p0, v0}, Lsystem/ext/preload/ServicesPreloadExtImpl;->register(Ljava/lang/String;)V

    .line 12
    const-string v0, "system.ext.registry.SocApexJobschedulerServiceRegistry"

    invoke-virtual {p0, v0}, Lsystem/ext/preload/ServicesPreloadExtImpl;->register(Ljava/lang/String;)V

    .line 13
    const-string v0, "system.ext.registry.ApexJobschedulerServicesRegistry"

    invoke-virtual {p0, v0}, Lsystem/ext/preload/ServicesPreloadExtImpl;->register(Ljava/lang/String;)V

    .line 14
    return-void
.end method
