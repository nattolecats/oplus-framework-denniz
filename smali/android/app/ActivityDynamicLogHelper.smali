.class Landroid/app/ActivityDynamicLogHelper;
.super Ljava/lang/Object;
.source "ActivityDynamicLogHelper.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist enableDynamicalLogIfNeed()V
    .locals 3

    .line 25
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    .local v0, "on":Z
    const-string v1, "sys.activity.thread.log"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "open":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 28
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 30
    :cond_0
    invoke-static {v0}, Landroid/app/ActivityDynamicLogHelper;->setDynamicalLogEnable(Z)V

    .line 31
    return-void
.end method

.method static blacklist setDynamicalLogEnable(Z)V
    .locals 1
    .param p0, "on"    # Z

    .line 34
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->localLOGV:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 35
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->DEBUG_BROADCAST:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 36
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->DEBUG_SERVICE:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 37
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->DEBUG_MESSAGES:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 38
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->DEBUG_MEMORY_TRIM:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 39
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->DEBUG_BROADCAST_LIGHT:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 40
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->DEBUG_CONFIGURATION:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 41
    sget-object v0, Landroid/app/OplusMirrorActivityThread;->DEBUG_PROVIDER:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorActivityThread;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 42
    sget-object v0, Landroid/app/OplusMirrorTransactionExecutor;->DEBUG_RESOLVER:Lcom/oplus/reflect/RefBoolean;

    invoke-static {v0, p0}, Landroid/app/OplusMirrorTransactionExecutor;->setBooleanValue(Lcom/oplus/reflect/RefBoolean;Z)V

    .line 43
    return-void
.end method
