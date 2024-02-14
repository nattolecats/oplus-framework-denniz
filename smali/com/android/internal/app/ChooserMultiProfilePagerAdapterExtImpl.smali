.class public Lcom/android/internal/app/ChooserMultiProfilePagerAdapterExtImpl;
.super Ljava/lang/Object;
.source "ChooserMultiProfilePagerAdapterExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/IChooserMultiProfilePagerAdapterExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ChooserMultiProfilePagerAdapterExtImpl"


# instance fields
.field private blacklist mDebug:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapterExtImpl;->mDebug:Z

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getChooserProfileDescriptor(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 29
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapterExtImpl;->mDebug:Z

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "ChooserMultiProfilePagerAdapterExtImpl"

    const-string v1, "getChooserProfileDescriptor in impl"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.op_share_sheet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 33
    const v0, 0x1090061

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 35
    :cond_1
    const v0, 0xc090420

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method
