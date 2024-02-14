.class public Landroid/app/OplusUxIconConstants;
.super Ljava/lang/Object;
.source "OplusUxIconConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/OplusUxIconConstants$SystemProperty;,
        Landroid/app/OplusUxIconConstants$IconTheme;,
        Landroid/app/OplusUxIconConstants$IconLoader;
    }
.end annotation


# static fields
.field public static final whitelist DEBUG_UX_ICON:Z

.field public static final whitelist DEBUG_UX_ICON_TRACE:Z = true

.field public static final whitelist DEFAULT_RELATIVE_BRIGHTNESS:F = 0.84f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 28
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
