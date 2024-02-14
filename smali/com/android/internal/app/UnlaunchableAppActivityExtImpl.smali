.class public Lcom/android/internal/app/UnlaunchableAppActivityExtImpl;
.super Ljava/lang/Object;
.source "UnlaunchableAppActivityExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/IUnlaunchableAppActivityExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public blacklist adjustThemeResIdForDialog()I
    .locals 2

    .line 15
    sget-object v0, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/theme/IOplusThemeStyle;

    const v1, 0xc030007

    invoke-interface {v0, v1}, Lcom/oplus/theme/IOplusThemeStyle;->getDialogThemeStyle(I)I

    move-result v0

    return v0
.end method
