.class public interface abstract Lcom/oplus/theme/IOplusThemeStyle;
.super Ljava/lang/Object;
.source "IOplusThemeStyle.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusThemeStyle"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/oplus/theme/IOplusThemeStyle$1;

    invoke-direct {v0}, Lcom/oplus/theme/IOplusThemeStyle$1;-><init>()V

    sput-object v0, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 39
    sget-object v0, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    return-object v0
.end method

.method public whitelist getDialogAlertShareThemeStyle(I)I
    .locals 0
    .param p1, "theme"    # I

    .line 60
    return p1
.end method

.method public whitelist getDialogBootMessageThemeStyle(I)I
    .locals 0
    .param p1, "theme"    # I

    .line 55
    return p1
.end method

.method public whitelist getDialogThemeStyle(I)I
    .locals 0
    .param p1, "theme"    # I

    .line 50
    return p1
.end method

.method public whitelist getMetaDataStyleTitle(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isNew"    # Z

    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getSystemThemeStyle(I)I
    .locals 0
    .param p1, "theme"    # I

    .line 46
    return p1
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 34
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusThemeStyle:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method
