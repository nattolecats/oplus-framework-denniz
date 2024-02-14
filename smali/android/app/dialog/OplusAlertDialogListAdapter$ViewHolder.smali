.class public Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OplusAlertDialogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/dialog/OplusAlertDialogListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field blacklist mTextView:Landroid/widget/TextView;

.field final synthetic blacklist this$0:Landroid/app/dialog/OplusAlertDialogListAdapter;


# direct methods
.method public constructor whitelist <init>(Landroid/app/dialog/OplusAlertDialogListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/dialog/OplusAlertDialogListAdapter;

    .line 14
    iput-object p1, p0, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;->this$0:Landroid/app/dialog/OplusAlertDialogListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
