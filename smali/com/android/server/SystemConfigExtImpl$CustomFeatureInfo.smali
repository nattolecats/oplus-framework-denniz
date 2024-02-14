.class Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;
.super Landroid/content/pm/FeatureInfo;
.source "SystemConfigExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfigExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomFeatureInfo"
.end annotation


# instance fields
.field public blacklist priority:Lcom/android/server/FeaturePriority;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Landroid/content/pm/FeatureInfo;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;-><init>()V

    return-void
.end method
