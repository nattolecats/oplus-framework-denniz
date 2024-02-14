.class public interface abstract Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;
.super Ljava/lang/Object;
.source "IOplusDynamicVsyncFeature.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusDynamicVsyncFeature"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature$1;

    invoke-direct {v0}, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature$1;-><init>()V

    sput-object v0, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->DEFAULT:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    return-void
.end method


# virtual methods
.method public blacklist doAnimation(ILjava/lang/String;)V
    .locals 0
    .param p1, "durationInMs"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method public blacklist flingEvent(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "durationInMs"    # I

    .line 58
    return-void
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 45
    sget-object v0, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->DEFAULT:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 41
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusDynamicVsyncFeature:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method
