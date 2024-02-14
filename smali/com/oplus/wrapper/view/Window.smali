.class public Lcom/oplus/wrapper/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# instance fields
.field private final blacklist mWindow:Landroid/view/Window;


# direct methods
.method public constructor whitelist <init>(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oplus/wrapper/view/Window;->mWindow:Landroid/view/Window;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist setCloseOnTouchOutside(Z)V
    .locals 1
    .param p1, "close"    # Z

    .line 44
    iget-object v0, p0, Lcom/oplus/wrapper/view/Window;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 45
    return-void
.end method
