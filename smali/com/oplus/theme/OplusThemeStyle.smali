.class public Lcom/oplus/theme/OplusThemeStyle;
.super Ljava/lang/Object;
.source "OplusThemeStyle.java"

# interfaces
.implements Lcom/oplus/theme/IOplusThemeStyle;


# static fields
.field public static final whitelist DEFAULT_DIALOG_BOOTMSG_THEME:I = 0xc030026

.field public static final whitelist DEFAULT_DIALOG_SHARE_THEME:I = 0xc030020

.field public static final whitelist DEFAULT_DIALOG_THEME:I = 0xc030007

.field public static final whitelist DEFAULT_SYSTEM_THEME:I = 0xc030002

.field private static final blacklist NEW_METADATA_STYLE_TITLE:Ljava/lang/String; = "oplus.support.options"

.field private static final blacklist OLD_METADATA_STYLE_TITLE:Ljava/lang/String; = "color.support.options"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getDialogAlertShareThemeStyle(I)I
    .locals 1
    .param p1, "theme"    # I

    .line 50
    const v0, 0xc030020

    return v0
.end method

.method public whitelist getDialogBootMessageThemeStyle(I)I
    .locals 1
    .param p1, "theme"    # I

    .line 45
    const v0, 0xc030026

    return v0
.end method

.method public whitelist getDialogThemeStyle(I)I
    .locals 1
    .param p1, "theme"    # I

    .line 40
    const v0, 0xc030007

    return v0
.end method

.method public whitelist getMetaDataStyleTitle(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isNew"    # Z

    .line 55
    if-eqz p1, :cond_0

    const-string v0, "oplus.support.options"

    goto :goto_0

    :cond_0
    const-string v0, "color.support.options"

    :goto_0
    return-object v0
.end method

.method public whitelist getSystemThemeStyle(I)I
    .locals 1
    .param p1, "theme"    # I

    .line 35
    const v0, 0xc030002

    return v0
.end method
