.class public Lcom/oplus/wrapper/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# instance fields
.field private final blacklist mToast:Landroid/widget/Toast;


# direct methods
.method public constructor whitelist <init>(Landroid/widget/Toast;)V
    .locals 0
    .param p1, "toast"    # Landroid/widget/Toast;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oplus/wrapper/widget/Toast;->mToast:Landroid/widget/Toast;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/oplus/wrapper/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method
