.class public Lcom/android/internal/app/chooser/SelectableTargetInfoExtImpl;
.super Ljava/lang/Object;
.source "SelectableTargetInfoExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/chooser/ISelectableTargetInfoExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist shouldPrepareIntentForCrossProfileLaunch(Lcom/android/internal/app/IResolverActivityExt;)Z
    .locals 3
    .param p1, "resolverActivityExt"    # Lcom/android/internal/app/IResolverActivityExt;

    .line 34
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    const/16 v1, 0x200

    invoke-interface {p1, v1}, Lcom/android/internal/app/IResolverActivityExt;->hasCustomFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 38
    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    return v0

    .line 40
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_3
    :goto_1
    return v0
.end method
