.class public Landroid/app/InstrumentationExtImpl;
.super Ljava/lang/Object;
.source "InstrumentationExtImpl.java"

# interfaces
.implements Landroid/app/IInstrumentationExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public blacklist beginHookExecStartActivity(Landroid/content/Intent;IILjava/lang/String;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 18
    const-string v1, "start"

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Landroid/content/Intent;IILjava/lang/String;)Z

    move-result v0

    .line 17
    return v0
.end method
