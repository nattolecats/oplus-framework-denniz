.class public Lcom/android/internal/app/ResolverListAdapterExtImpl;
.super Ljava/lang/Object;
.source "ResolverListAdapterExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/IResolverListAdapterExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListAdapterExtImpl"

.field protected static blacklist sIsCtsTest:Z

.field protected static blacklist sIsOpShareUi:Z


# instance fields
.field private blacklist mPlaceholderResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->sIsCtsTest:Z

    .line 50
    sput-boolean v0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->sIsOpShareUi:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->mResolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    .line 59
    return-void
.end method

.method private blacklist isDisplayResolveInfoExist(Ljava/util/List;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 4
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ")Z"
        }
    .end annotation

    .line 145
    .local p1, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 146
    .local v1, "displayResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    .end local v1    # "displayResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addMultiAppResolveInfoIfNeed(Ljava/util/List;Ljava/util/List;Lcom/android/internal/app/ResolverListController;Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 18
    .param p3, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/android/internal/app/ResolverListController;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "displayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    if-eqz v2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 100
    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->hasCustomFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 106
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    const/16 v6, 0x3e7

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    const/4 v6, 0x0

    move-object/from16 v7, p3

    :try_start_1
    invoke-virtual {v7, v6, v6, v2, v0}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 110
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v8, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 111
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_4

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 113
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0xc040080

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v9, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v9

    move-object/from16 v16, v9

    .line 115
    .local v16, "resolveIntent":Landroid/content/Intent;
    new-instance v17, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/content/Intent;

    .line 118
    invoke-virtual {v8, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 119
    if-nez v16, :cond_1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    move-object v14, v6

    goto :goto_0

    :cond_1
    move-object/from16 v14, v16

    :goto_0
    const/4 v15, 0x0

    move-object/from16 v9, v17

    move-object v11, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    move-object/from16 v6, v17

    .line 122
    .local v6, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v9, v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayResolveInfoExt:Lcom/android/internal/app/chooser/IDisplayResolveInfoExt;

    if-eqz v9, :cond_2

    .line 123
    iget-object v9, v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayResolveInfoExt:Lcom/android/internal/app/chooser/IDisplayResolveInfoExt;

    invoke-interface {v9, v5}, Lcom/android/internal/app/chooser/IDisplayResolveInfoExt;->setIsMultiApp(Z)V

    .line 125
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v9, -0x2

    if-eq v5, v9, :cond_3

    .line 126
    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iput v9, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 130
    :cond_3
    invoke-direct {v1, v4, v6}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isDisplayResolveInfoExist(Ljava/util/List;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 131
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .end local v0    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .end local v6    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "name":Ljava/lang/String;
    .end local v16    # "resolveIntent":Landroid/content/Intent;
    :cond_4
    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v7, p3

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "MultiApp"

    const-string v6, "addMultiAppResolveInfoIfNeed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v7, p3

    .line 140
    :goto_2
    return-void
.end method

.method public blacklist checkIsCtsTest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 202
    invoke-static {p1, p2}, Lcom/oplus/util/OplusResolverUtil;->isChooserCtsTest(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->sIsCtsTest:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isOpShareUi()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->sIsOpShareUi:Z

    .line 204
    return-void
.end method

.method public blacklist getPlaceholderResolveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->mPlaceholderResolveList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "ii"    # Landroid/content/Intent;
    .param p2, "mPm"    # Landroid/content/pm/PackageManager;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 157
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 158
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v1, v3

    .line 161
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v0, v3

    .line 162
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v3

    .line 167
    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 168
    const/high16 v4, 0x10000

    invoke-virtual {p2, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    move-object v1, v4

    .line 171
    :cond_2
    if-nez v1, :cond_3

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResolverListAdapterExtImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v3

    .line 175
    :cond_3
    return-object v0
.end method

.method public blacklist hasCustomFlag(I)Z
    .locals 3
    .param p1, "flag"    # I

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->mResolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getWrapper()Lcom/android/internal/app/IResolverListAdapterWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListCommunicator()Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    move-result-object v0

    .line 85
    .local v0, "rlcc":Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/app/ResolverActivity;

    if-eqz v1, :cond_0

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v1

    .line 87
    .local v1, "resolverActivityExt":Lcom/android/internal/app/IResolverActivityExt;
    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v1, p1}, Lcom/android/internal/app/IResolverActivityExt;->hasCustomFlag(I)Z

    move-result v2

    return v2

    .line 91
    .end local v1    # "resolverActivityExt":Lcom/android/internal/app/IResolverActivityExt;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist hookAddResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolverListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "ii"    # Landroid/content/Intent;
    .param p4, "ri"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/ResolverListAdapter;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 209
    .local p5, "mDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    instance-of v0, p1, Lcom/android/internal/app/ChooserActivity;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p2, p4}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    .line 211
    .local v0, "getter":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    new-instance v8, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 212
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p4}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v7

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 211
    invoke-interface {p5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v1, 0x1

    return v1

    .line 215
    .end local v0    # "getter":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookonCreateView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "mInflater"    # Landroid/view/LayoutInflater;
    .param p2, "resId"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isOpShareUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const v0, 0xc09042a

    goto :goto_0

    .line 222
    :cond_0
    move v0, p2

    :goto_0
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isOpShareUi()Z
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOriginUi()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setPlaceholderResolveList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isOriginUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->mPlaceholderResolveList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->mPlaceholderResolveList:Ljava/util/List;

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapterExtImpl;->mPlaceholderResolveList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    return-void
.end method

.method public blacklist sortComponentsNull(Ljava/util/List;Z)Z
    .locals 3
    .param p1, "sortedComponents"    # Ljava/util/List;
    .param p2, "originShow"    # Z

    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isOriginUi()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 181
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isOriginUi()Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    return v1

    .line 183
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isOriginUi()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    return v1

    .line 185
    :cond_3
    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapterExtImpl;->isOriginUi()Z

    move-result v2

    if-nez v2, :cond_5

    .line 186
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    return v0

    .line 188
    :cond_5
    return v1
.end method
