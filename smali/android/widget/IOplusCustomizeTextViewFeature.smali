.class public interface abstract Landroid/widget/IOplusCustomizeTextViewFeature;
.super Ljava/lang/Object;
.source "IOplusCustomizeTextViewFeature.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/widget/IOplusCustomizeTextViewFeature;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusCustomizeTextViewFeature"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/widget/IOplusCustomizeTextViewFeature$1;

    invoke-direct {v0}, Landroid/widget/IOplusCustomizeTextViewFeature$1;-><init>()V

    sput-object v0, Landroid/widget/IOplusCustomizeTextViewFeature;->DEFAULT:Landroid/widget/IOplusCustomizeTextViewFeature;

    return-void
.end method


# virtual methods
.method public blacklist getClipboardStatus()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 25
    invoke-interface {p0}, Landroid/widget/IOplusCustomizeTextViewFeature;->getDefault()Landroid/widget/IOplusCustomizeTextViewFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/widget/IOplusCustomizeTextViewFeature;
    .locals 1

    .line 41
    sget-object v0, Landroid/widget/IOplusCustomizeTextViewFeature;->DEFAULT:Landroid/widget/IOplusCustomizeTextViewFeature;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 36
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCustomizeTextViewFeature:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    return-void
.end method
