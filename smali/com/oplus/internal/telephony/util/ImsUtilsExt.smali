.class public Lcom/oplus/internal/telephony/util/ImsUtilsExt;
.super Ljava/lang/Object;
.source "ImsUtilsExt.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isSimLessRttSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/QtiImsUtils;->isSimLessRttSupported(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method
