.class public Landroid/app/OplusUxIconConstants$SystemProperty;
.super Ljava/lang/Object;
.source "OplusUxIconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusUxIconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemProperty"
.end annotation


# static fields
.field public static final whitelist FEATURE_UX_ICON_DISABLE:Ljava/lang/String; = "oplus.uxicons.disable.uxicons"

.field public static final whitelist KEY_THEME_FLAG:Ljava/lang/String; = "persist.sys.themeflag"

.field public static final whitelist KEY_UX_ICON_CONFIG:Ljava/lang/String; = "key_ux_icon_config"

.field public static final whitelist KEY_UX_ICON_THEME_FLAG:Ljava/lang/String; = "persist.sys.themeflag.uxicon"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
