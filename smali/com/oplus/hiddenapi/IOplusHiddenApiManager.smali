.class public interface abstract Lcom/oplus/hiddenapi/IOplusHiddenApiManager;
.super Ljava/lang/Object;
.source "IOplusHiddenApiManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist DEBUG_DETAIL:Z = false

.field public static final blacklist DEFAULT:Lcom/oplus/hiddenapi/IOplusHiddenApiManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 14
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/hiddenapi/IOplusHiddenApiManager;->DEBUG:Z

    .line 17
    new-instance v0, Lcom/oplus/hiddenapi/IOplusHiddenApiManager$1;

    invoke-direct {v0}, Lcom/oplus/hiddenapi/IOplusHiddenApiManager$1;-><init>()V

    sput-object v0, Lcom/oplus/hiddenapi/IOplusHiddenApiManager;->DEFAULT:Lcom/oplus/hiddenapi/IOplusHiddenApiManager;

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 37
    return-void
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 13
    invoke-interface {p0}, Lcom/oplus/hiddenapi/IOplusHiddenApiManager;->getDefault()Lcom/oplus/hiddenapi/IOplusHiddenApiManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Lcom/oplus/hiddenapi/IOplusHiddenApiManager;
    .locals 1

    .line 25
    sget-object v0, Lcom/oplus/hiddenapi/IOplusHiddenApiManager;->DEFAULT:Lcom/oplus/hiddenapi/IOplusHiddenApiManager;

    return-object v0
.end method

.method public blacklist getExemptions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 21
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusHiddenApiManagerExt:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist initAndRegisterSettingsListener(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 29
    return-void
.end method
