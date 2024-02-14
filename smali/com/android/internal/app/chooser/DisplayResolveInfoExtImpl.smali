.class public Lcom/android/internal/app/chooser/DisplayResolveInfoExtImpl;
.super Ljava/lang/Object;
.source "DisplayResolveInfoExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/chooser/IDisplayResolveInfoExt;


# instance fields
.field private blacklist mIsMultiApp:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfoExtImpl;->mIsMultiApp:Z

    return-void
.end method

.method private blacklist getIsMultiApp()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfoExtImpl;->mIsMultiApp:Z

    return v0
.end method


# virtual methods
.method public blacklist changeUserIdIfNeed(Lcom/android/internal/app/IResolverActivityExt;Landroid/content/Intent;I)I
    .locals 3
    .param p1, "resolverActivityExt"    # Lcom/android/internal/app/IResolverActivityExt;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 50
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 53
    :cond_0
    const/16 v0, 0x200

    invoke-interface {p1, v0}, Lcom/android/internal/app/IResolverActivityExt;->hasCustomFlag(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/chooser/DisplayResolveInfoExtImpl;->getIsMultiApp()Z

    move-result v0

    const/16 v1, 0x3e7

    if-eqz v0, :cond_1

    .line 55
    const/16 p3, 0x3e7

    .line 56
    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 58
    :cond_1
    const/4 p3, 0x0

    .line 60
    :goto_0
    const/4 v0, -0x1

    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 61
    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 62
    .local v0, "fromUserId":I
    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-nez v0, :cond_4

    if-ne p3, v1, :cond_4

    .line 64
    :cond_3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMAService fillMultiAppInfo for cross form:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooseActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "fromUserId":I
    :cond_4
    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p2}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/OplusBaseIntent;

    .line 69
    .local v0, "oplusIntent":Landroid/content/OplusBaseIntent;
    if-eqz v0, :cond_5

    .line 70
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/OplusBaseIntent;->addOplusFlags(I)V

    .line 73
    .end local v0    # "oplusIntent":Landroid/content/OplusBaseIntent;
    :cond_5
    return p3

    .line 51
    :cond_6
    :goto_1
    return p3
.end method

.method public blacklist setIsMultiApp(Z)V
    .locals 0
    .param p1, "isMultiApp"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfoExtImpl;->mIsMultiApp:Z

    .line 46
    return-void
.end method

.method public blacklist shouldPrepareIntentForCrossProfileLaunch(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 91
    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p2}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/OplusBaseIntent;

    .line 92
    .local v0, "oplusIntent":Landroid/content/OplusBaseIntent;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/content/OplusBaseIntent;->getOplusFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_2

    .line 96
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 98
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist shouldPrepareIntentForCrossProfileLaunch(Lcom/android/internal/app/IResolverActivityExt;)Z
    .locals 3
    .param p1, "resolverActivityExt"    # Lcom/android/internal/app/IResolverActivityExt;

    .line 78
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    const/16 v1, 0x200

    invoke-interface {p1, v1}, Lcom/android/internal/app/IResolverActivityExt;->hasCustomFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    return v0

    .line 84
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_3
    :goto_1
    return v0
.end method
