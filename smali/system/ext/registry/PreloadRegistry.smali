.class public Lsystem/ext/registry/PreloadRegistry;
.super Ljava/lang/Object;
.source "PreloadRegistry.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 10
    const-class v0, Lsystem/ext/preload/IServicesPreloadExt;

    new-instance v1, Lsystem/ext/registry/PreloadRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lsystem/ext/registry/PreloadRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lsystem/ext/loader/core/ExtRegistry;->registerExt(Ljava/lang/Class;Lsystem/ext/loader/core/ExtCreator;)V

    .line 11
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
