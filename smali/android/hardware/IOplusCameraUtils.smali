.class public interface abstract Landroid/hardware/IOplusCameraUtils;
.super Ljava/lang/Object;
.source "IOplusCameraUtils.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/hardware/IOplusCameraUtils;

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusCameraUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Landroid/hardware/IOplusCameraUtils$1;

    invoke-direct {v0}, Landroid/hardware/IOplusCameraUtils$1;-><init>()V

    sput-object v0, Landroid/hardware/IOplusCameraUtils;->DEFAULT:Landroid/hardware/IOplusCameraUtils;

    return-void
.end method


# virtual methods
.method public whitelist getComponentName()Ljava/lang/String;
    .locals 1

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 19
    sget-object v0, Landroid/hardware/IOplusCameraUtils;->DEFAULT:Landroid/hardware/IOplusCameraUtils;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 14
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCameraUtils:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method
