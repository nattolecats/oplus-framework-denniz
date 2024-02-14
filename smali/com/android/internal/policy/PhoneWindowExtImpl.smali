.class public Lcom/android/internal/policy/PhoneWindowExtImpl;
.super Ljava/lang/Object;
.source "PhoneWindowExtImpl.java"

# interfaces
.implements Lcom/android/internal/policy/IPhoneWindowExt;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mIsUseDefaultNavigationBarColor:Z

.field private blacklist mOpm:Landroid/content/pm/OplusPackageManager;

.field private blacklist mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mIsUseDefaultNavigationBarColor:Z

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getContentParent()Landroid/view/ViewGroup;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getWindowTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWrapper()Lcom/android/internal/policy/IPhoneWindowWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/IPhoneWindowWrapper;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookGenerateLayout(Lcom/android/internal/policy/PhoneWindow;Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 7
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .param p3, "context"    # Landroid/content/Context;

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mOpm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x23

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 99
    .local v0, "navigationBarThemeColor":I
    if-ne v0, v1, :cond_1

    .line 100
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mIsUseDefaultNavigationBarColor:Z

    .line 101
    invoke-static {p3}, Lcom/oplus/statusbar/OplusStatusBarController;->getDefaultNavigationBarColor(Landroid/content/Context;)I

    move-result v0

    .line 103
    :cond_1
    invoke-static {}, Lcom/oplus/statusbar/OplusStatusBarController;->getInstance()Lcom/oplus/statusbar/OplusStatusBarController;

    move-result-object v1

    .line 104
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 103
    move-object v2, p3

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/statusbar/OplusStatusBarController;->caculateSystemBarColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 106
    return-void
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/pm/OplusPackageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mOpm:Landroid/content/pm/OplusPackageManager;

    .line 49
    return-void
.end method

.method public blacklist isUseDefaultNavigationBarColor()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mIsUseDefaultNavigationBarColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWrapper()Lcom/android/internal/policy/IPhoneWindowWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/IPhoneWindowWrapper;->isForcedNavigationBarColor()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setSystemBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWrapper()Lcom/android/internal/policy/IPhoneWindowWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/IPhoneWindowWrapper;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    .line 56
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    iput p1, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 57
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getWrapper()Lcom/android/internal/policy/IPhoneWindowWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IPhoneWindowWrapper;->setForcedStatusBarColor(Z)V

    .line 58
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    iput p1, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 59
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getWrapper()Lcom/android/internal/policy/IPhoneWindowWrapper;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IPhoneWindowWrapper;->setForcedNavigationBarColor(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 61
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 62
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    .line 66
    .local v1, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v1, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Window$WindowControllerCallback;->updateStatusBarColor(I)V

    .line 68
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindowExtImpl;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Window$WindowControllerCallback;->updateNavigationBarColor(I)V

    .line 70
    :cond_1
    return-void
.end method
