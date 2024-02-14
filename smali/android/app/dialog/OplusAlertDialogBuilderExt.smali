.class public Landroid/app/dialog/OplusAlertDialogBuilderExt;
.super Ljava/lang/Object;
.source "OplusAlertDialogBuilderExt.java"

# interfaces
.implements Landroid/app/dialog/IOplusAlertDialogBuilderExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public blacklist getBottomBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->createBottomBuilder(Landroid/content/Context;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCenterBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-static {p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->createCenterBuilder(Landroid/content/Context;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method
