.class public interface abstract Lcom/oplus/performance/IOplusPerformanceManager;
.super Ljava/lang/Object;
.source "IOplusPerformanceManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Lcom/oplus/performance/IOplusPerformanceManager;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusPerformanceManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/oplus/performance/IOplusPerformanceManager$1;

    invoke-direct {v0}, Lcom/oplus/performance/IOplusPerformanceManager$1;-><init>()V

    sput-object v0, Lcom/oplus/performance/IOplusPerformanceManager;->DEFAULT:Lcom/oplus/performance/IOplusPerformanceManager;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 47
    sget-object v0, Lcom/oplus/performance/IOplusPerformanceManager;->DEFAULT:Lcom/oplus/performance/IOplusPerformanceManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 43
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusPerformanceManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist ormsAction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 52
    return-void
.end method
