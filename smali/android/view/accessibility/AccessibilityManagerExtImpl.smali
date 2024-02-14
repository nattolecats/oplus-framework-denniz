.class public Landroid/view/accessibility/AccessibilityManagerExtImpl;
.super Ljava/lang/Object;
.source "AccessibilityManagerExtImpl.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManagerExt;


# static fields
.field private static final blacklist COLOR_STATE_DIRECT_ENABLED:I = 0x80


# instance fields
.field private blacklist mIsDirectEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManagerExtImpl;->mIsDirectEnabled:Z

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManagerExtImpl;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist directEnable(Z)Z
    .locals 1
    .param p1, "managerEnable"    # Z

    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManagerExtImpl;->getDirectEnabledState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getDirectEnabledState()Z
    .locals 2

    .line 32
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManagerExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManagerExtImpl;->mIsDirectEnabled:Z

    monitor-exit v0

    return v1

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setDirectEnabledState(I)V
    .locals 2
    .param p1, "stateFlags"    # I

    .line 26
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManagerExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManagerExtImpl;->mIsDirectEnabled:Z

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
