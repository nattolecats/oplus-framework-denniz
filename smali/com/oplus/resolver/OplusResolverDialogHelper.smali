.class public Lcom/oplus/resolver/OplusResolverDialogHelper;
.super Ljava/lang/Object;
.source "OplusResolverDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_CHOOSER_STOP:Ljava/lang/String; = "oplus.intent.action.STOP_CHOOSER"

.field private static final blacklist CODE:Ljava/lang/String; = "20120"

.field private static final blacklist GALLERY_PIN_LIST:Ljava/lang/String; = "gallery_pin_list"

.field private static final blacklist KEY:Ljava/lang/String; = "49"

.field private static final blacklist KEY_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist NEW_APP_HEYTAP_MARKET:Ljava/lang/String; = "com.heytap.market"

.field private static final blacklist PERSON_PROFILE:Ljava/lang/String; = "person_profile"

.field private static final blacklist RECOMMEND_EVENT_ID:Ljava/lang/String; = "resolver_recommend"

.field private static final blacklist SECRET:Ljava/lang/String; = "be7a52eaeb67a660ecfdcff7c742c8a2"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverDialogHelper"

.field private static final blacklist TYPE_GALLERY:Ljava/lang/String; = "gallery"

.field private static final blacklist WORK_PROFILE:Ljava/lang/String; = "work_profile"


# instance fields
.field private blacklist mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDialogBuilder:Landroid/app/dialog/IOplusAlertDialogBuilderExt;

.field private blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private blacklist mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private blacklist mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

.field private blacklist mOriginIntent:Landroid/content/Intent;

.field private blacklist mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

.field private blacklist mProfileSelectedListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

.field private blacklist mRiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewPager:Lcom/oplus/resolver/OplusResolverDialogViewPager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongClickListener(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnItemClickListener(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclickMoreIcon(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/app/Activity;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->clickMoreIcon(Landroid/app/Activity;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowMarket(Lcom/oplus/resolver/OplusResolverDialogHelper;ZLandroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->showMarket(ZLandroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msupport(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->support(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/app/Activity;Landroid/content/Intent;[Landroid/content/Intent;ZLjava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p5, "displayResolverlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mProfileSelectedListener:Ljava/util/Set;

    .line 108
    const-class v0, Landroid/app/dialog/IOplusAlertDialogBuilderExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/dialog/IOplusAlertDialogBuilderExt;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mDialogBuilder:Landroid/app/dialog/IOplusAlertDialogBuilderExt;

    .line 110
    new-instance v0, Lcom/oplus/resolver/OplusResolverDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/oplus/resolver/OplusResolverDialogHelper$1;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v0, Lcom/oplus/resolver/OplusResolverDialogHelper$2;

    invoke-direct {v0, p0}, Lcom/oplus/resolver/OplusResolverDialogHelper$2;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 267
    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 153
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    .line 154
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mActivity:Landroid/app/Activity;

    .line 155
    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    .line 156
    new-instance v0, Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {v0, p1, p2}, Lcom/oplus/resolver/OplusResolverOshare;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    .line 157
    if-eqz p5, :cond_0

    .line 158
    iput-object p5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    goto :goto_0

    .line 160
    :cond_0
    if-eqz p2, :cond_7

    if-nez p3, :cond_1

    goto/16 :goto_1

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 175
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 176
    if-eqz p4, :cond_5

    const/16 v1, 0x40

    :cond_5
    or-int/2addr v1, v3

    .line 175
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 178
    .end local v0    # "in":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0, p3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->addInitiaIntents([Landroid/content/Intent;)V

    .line 180
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverDialogHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p1}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/resolver/OplusResolverInfoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    .line 182
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-virtual {v0, v2, p2}, Lcom/oplus/resolver/OplusResolverInfoHelper;->resort(Ljava/util/List;Landroid/content/Intent;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resort "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 161
    :cond_7
    :goto_1
    return-void
.end method

.method private blacklist addInitiaIntents([Landroid/content/Intent;)V
    .locals 6
    .param p1, "initialIntents"    # [Landroid/content/Intent;

    .line 193
    if-eqz p1, :cond_3

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 195
    aget-object v1, p1, v0

    .line 196
    .local v1, "ii":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 197
    goto :goto_1

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 200
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v2, :cond_1

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusResolverDialogHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto :goto_1

    .line 204
    :cond_1
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 205
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 206
    instance-of v4, v1, Landroid/content/pm/LabeledIntent;

    if-eqz v4, :cond_2

    .line 207
    move-object v4, v1

    check-cast v4, Landroid/content/pm/LabeledIntent;

    .line 208
    .local v4, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v4}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 209
    invoke-virtual {v4}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v5

    iput v5, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 210
    invoke-virtual {v4}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {v4}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v5

    iput v5, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 213
    .end local v4    # "li":Landroid/content/pm/LabeledIntent;
    :cond_2
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v1    # "ii":Landroid/content/Intent;
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 469
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, ""

    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 471
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    .line 472
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 474
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist clickMoreIcon(Landroid/app/Activity;I)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickMoreIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverDialogHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    invoke-virtual {v0, p2}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->isMoreIconPositionAndClick(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const v0, 0xc020077

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/widget/indicator/OplusPageIndicator;

    .line 286
    .local v0, "dotsView":Lcom/oplus/widget/indicator/OplusPageIndicator;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    invoke-virtual {v1}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->getCount()I

    move-result v1

    .line 287
    .local v1, "pageCount":I
    invoke-virtual {v0, v1}, Lcom/oplus/widget/indicator/OplusPageIndicator;->setDotsCount(I)V

    .line 288
    const/4 v2, 0x1

    return v2

    .line 290
    .end local v0    # "dotsView":Lcom/oplus/widget/indicator/OplusPageIndicator;
    .end local v1    # "pageCount":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist initTabProfile(Landroid/widget/TabWidget;)V
    .locals 8
    .param p1, "tabHost"    # Landroid/widget/TabWidget;

    .line 611
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 612
    .local v0, "tabHostParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 613
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 615
    invoke-virtual {p1, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 616
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 617
    invoke-virtual {p1, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    invoke-virtual {p1, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 619
    .local v4, "tx":Landroid/widget/TextView;
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 614
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "tx":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    return-void
.end method

.method private blacklist isMarketEnable()Z
    .locals 5

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "exist":Z
    const/4 v1, 0x0

    .line 481
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.heytap.market"

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 485
    goto :goto_0

    .line 483
    :catch_0
    move-exception v2

    .line 484
    .local v2, "var4":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 486
    .end local v2    # "var4":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    .line 487
    const/4 v0, 0x1

    .line 489
    :cond_0
    return v0
.end method

.method static synthetic blacklist lambda$showTargetDetails$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog1"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 333
    return-void
.end method

.method private blacklist listToString(Ljava/util/List;C)Ljava/lang/String;
    .locals 3
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 361
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 364
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist resetTabsHeaderStyle(Landroid/widget/TabWidget;)V
    .locals 5
    .param p1, "tabWidget"    # Landroid/widget/TabWidget;

    .line 597
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 598
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 600
    .local v2, "tx":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    const v4, 0x106000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    .end local v2    # "tx":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    return-void
.end method

.method private blacklist setResolveView(ZLandroid/os/UserHandle;Lcom/oplus/resolver/OplusResolverDialogViewPager;Lcom/oplus/widget/indicator/OplusPageIndicator;Landroid/widget/CheckBox;ZI)V
    .locals 11
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "viewPager"    # Lcom/oplus/resolver/OplusResolverDialogViewPager;
    .param p4, "dotView"    # Lcom/oplus/widget/indicator/OplusPageIndicator;
    .param p5, "mCheckbox"    # Landroid/widget/CheckBox;
    .param p6, "safeForwardingMode"    # Z
    .param p7, "placeholderCount"    # I

    .line 220
    move-object v0, p0

    move-object v1, p3

    new-instance v10, Lcom/oplus/resolver/OplusResolverPagerAdapter;

    iget-object v5, v0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    iget-object v7, v0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    move-object v2, v10

    move v3, p1

    move-object v4, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/oplus/resolver/OplusResolverPagerAdapter;-><init>(ZLandroid/os/UserHandle;Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Z)V

    iput-object v10, v0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    .line 222
    iput-object v1, v0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mViewPager:Lcom/oplus/resolver/OplusResolverDialogViewPager;

    .line 223
    move/from16 v2, p7

    invoke-virtual {v10, v2}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->setPlaceholderCount(I)V

    .line 224
    iget-object v3, v0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    invoke-virtual {p3, v3}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setAdapter(Lcom/oplus/widget/OplusPagerAdapter;)V

    .line 226
    new-instance v3, Lcom/oplus/resolver/OplusResolverDialogHelper$3;

    invoke-direct {v3, p0, p3}, Lcom/oplus/resolver/OplusResolverDialogHelper$3;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Lcom/oplus/resolver/OplusResolverDialogViewPager;)V

    invoke-virtual {p3, v3}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setResolverItemEventListener(Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;)V

    .line 247
    new-instance v3, Lcom/oplus/resolver/OplusResolverDialogHelper$4;

    move-object v4, p4

    invoke-direct {v3, p0, p4}, Lcom/oplus/resolver/OplusResolverDialogHelper$4;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Lcom/oplus/widget/indicator/OplusPageIndicator;)V

    invoke-virtual {p3, v3}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setOnPageChangeListener(Lcom/oplus/widget/OplusViewPager$OnPageChangeListener;)V

    .line 264
    return-void
.end method

.method private blacklist showMarket(ZLandroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "support"    # Z
    .param p2, "marketJump"    # Landroid/view/View;
    .param p3, "intentType"    # Ljava/lang/String;

    .line 405
    if-nez p1, :cond_0

    .line 406
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 407
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    const-string v0, "txt"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    const-string p3, "text"

    .line 413
    :cond_1
    move-object v0, p3

    .line 414
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-void
.end method

.method private blacklist startRecommend(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .line 418
    const-string v0, "code"

    const-string v1, "OplusResolverDialogHelper"

    const-string v2, "1"

    const/4 v3, 0x0

    .line 420
    .local v3, "code":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "/recapp"

    .line 421
    .local v6, "path":Ljava/lang/String;
    const-string v7, "content://oaps_mk"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 422
    .local v7, "uri":Landroid/net/Uri;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v9, "rtp"

    invoke-virtual {v8, v9, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v9, "goback"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v9, "secret"

    const-string v10, "be7a52eaeb67a660ecfdcff7c742c8a2"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v9, "enterId"

    const-string v10, "49"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v9, "sgtp"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-direct {p0, p1, v7, v6, v8}, Lcom/oplus/resolver/OplusResolverDialogHelper;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 429
    .local v2, "responseBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 430
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startRecommend:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ",response:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-ne v3, v5, :cond_1

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "type"

    invoke-virtual {v0, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    const-string v10, "20120"

    const-string v11, "resolver_recommend"

    invoke-static {v9, v10, v11, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 437
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "statistics data [resolver_recommend]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "responseBundle":Landroid/os/Bundle;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    .line 440
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 442
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    if-ne v3, v5, :cond_2

    move v4, v5

    :cond_2
    return v4
.end method

.method private blacklist support(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 446
    const-string v0, "code"

    const-string v1, "/recapp"

    .line 447
    .local v1, "path":Ljava/lang/String;
    const-string v2, "content://oaps_mk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 448
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "/support"

    .line 449
    .local v3, "supportPath":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "tp"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v5, "secret"

    const-string v6, "be7a52eaeb67a660ecfdcff7c742c8a2"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v5, "enterId"

    const-string v6, "49"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v5, "sgtp"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v5, 0x0

    .line 456
    .local v5, "code":I
    :try_start_0
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/oplus/resolver/OplusResolverDialogHelper;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 457
    .local v6, "responseBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 458
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v0

    .line 462
    .end local v6    # "responseBundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    .line 461
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 463
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oaps support:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "OplusResolverDialogHelper"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private blacklist updateActiveTabStyle(Landroid/widget/TabHost;)V
    .locals 3
    .param p1, "tabHost"    # Landroid/widget/TabHost;

    .line 605
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xc08005f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 606
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 607
    .local v0, "tx":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    const v2, 0xc010005

    invoke-static {v1, v2}, Lcom/oplus/util/OplusContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    return-void
.end method

.method private blacklist updateDotView(Landroid/view/View;)V
    .locals 2
    .param p1, "dotView"    # Landroid/view/View;

    .line 624
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/oplus/widget/indicator/OplusPageIndicator;

    if-nez v1, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->getCount()I

    move-result v0

    .line 628
    .local v0, "dotCount":I
    move-object v1, p1

    check-cast v1, Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-virtual {v1, v0}, Lcom/oplus/widget/indicator/OplusPageIndicator;->setDotsCount(I)V

    .line 629
    return-void

    .line 625
    .end local v0    # "dotCount":I
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updatePageSize(ZLandroid/os/UserHandle;)V
    .locals 1
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 684
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, p1, p2}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 687
    :cond_0
    return-void
.end method

.method private blacklist updatePinnedData(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "isPinned":Z
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gallery_pin_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "galleryPinList":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pinList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusResolverDialogHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 342
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 343
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 344
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v6

    .line 346
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v3, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    const/16 v5, 0x3b

    invoke-direct {p0, v3, v5}, Lcom/oplus/resolver/OplusResolverDialogHelper;->listToString(Ljava/util/List;C)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "newString":Ljava/lang/String;
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putStringForUser : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method


# virtual methods
.method public whitelist addProfileSelectedListener(Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;

    .line 690
    if-eqz p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mProfileSelectedListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_0
    return-void
.end method

.method public whitelist clearDrawableCache()V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->clearDrawableCache()V

    .line 712
    :cond_0
    return-void
.end method

.method public whitelist createView(ZLandroid/os/UserHandle;ZI)Landroid/view/View;
    .locals 11
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "safeForwardingMode"    # Z
    .param p4, "count"    # I

    .line 577
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc09040e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 579
    .local v0, "view":Landroid/view/View;
    const v1, 0xc020076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/resolver/OplusResolverDialogViewPager;

    .line 580
    .local v1, "viewPager":Lcom/oplus/resolver/OplusResolverDialogViewPager;
    const v2, 0xc020077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/oplus/widget/indicator/OplusPageIndicator;

    .line 582
    .local v10, "dotView":Lcom/oplus/widget/indicator/OplusPageIndicator;
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v10

    move v8, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/oplus/resolver/OplusResolverDialogHelper;->setResolveView(ZLandroid/os/UserHandle;Lcom/oplus/resolver/OplusResolverDialogViewPager;Lcom/oplus/widget/indicator/OplusPageIndicator;Landroid/widget/CheckBox;ZI)V

    .line 583
    invoke-direct {p0, v10}, Lcom/oplus/resolver/OplusResolverDialogHelper;->updateDotView(Landroid/view/View;)V

    .line 584
    return-object v0
.end method

.method public whitelist dialogHelperDestroy()V
    .locals 4

    .line 493
    const-string v0, "fail to unregister receiver, "

    const-string v1, "OplusResolverDialogHelper"

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v2}, Lcom/oplus/resolver/OplusResolverOshare;->onDestroy()V

    .line 496
    :try_start_0
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 505
    goto :goto_1

    .line 503
    :catch_1
    move-exception v2

    .line 504
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public whitelist getPagerAdapter()Lcom/oplus/resolver/OplusResolverPagerAdapter;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    return-object v0
.end method

.method public whitelist getResolveInforList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist initCheckBox(Landroid/content/Intent;Landroid/view/View;Z)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "alwaysUseOption"    # Z

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "checkBoxContainer":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 634
    const v1, 0xc020081

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 635
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 636
    move-object v1, v0

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 640
    :cond_0
    const/4 v1, 0x0

    .line 642
    .local v1, "openFlag":Z
    :try_start_0
    const-string v2, "oplus_filemanager_openflag"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 645
    goto :goto_0

    .line 643
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 648
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_1
    return v1
.end method

.method public whitelist initChooserTopBroadcast()V
    .locals 4

    .line 565
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 566
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "oplus.intent.action.STOP_CHOOSER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mAPKChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    return-void
.end method

.method public whitelist initNfcView(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 517
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 523
    return-void

    .line 525
    :cond_1
    const v1, 0xc020074

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 526
    .local v2, "nfcPanel":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewStub;

    if-eqz v3, :cond_2

    .line 527
    move-object v3, v2

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 528
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 529
    .end local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 530
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :goto_0
    return-void

    .line 518
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "nfcPanel":Landroid/view/View;
    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist initOShareService()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshare;->initOShareService()V

    .line 133
    return-void
.end method

.method public whitelist initOShareView(Landroid/view/View;)V
    .locals 1
    .param p1, "oShareView"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverOshare;->initOShareView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public whitelist initTabView(Landroid/view/View;Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;
    .param p3, "currentPage"    # I

    .line 535
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mProfileSelectedListener:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    const v0, 0xc02000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 537
    .local v0, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 538
    const-string v1, "person_profile"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0xc02000a

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 539
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    instance-of v4, v3, Lcom/android/internal/app/ResolverActivity;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityWrapper;->getPersonalTabLabel()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 540
    :cond_0
    const v4, 0x1040824

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 539
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 541
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 542
    const-string v3, "work_profile"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 543
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    instance-of v4, v3, Lcom/android/internal/app/ResolverActivity;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IResolverActivityWrapper;->getWorkTabLabel()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 544
    :cond_1
    const v4, 0x1040828

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 543
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 545
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 546
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->initTabProfile(Landroid/widget/TabWidget;)V

    .line 547
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->resetTabsHeaderStyle(Landroid/widget/TabWidget;)V

    .line 548
    rsub-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 549
    invoke-virtual {v0, p3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 550
    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 551
    new-instance v2, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda2;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/widget/TabHost;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 562
    return-void
.end method

.method synthetic blacklist lambda$initTabView$4$com-oplus-resolver-OplusResolverDialogHelper(Landroid/widget/TabHost;Ljava/lang/String;)V
    .locals 3
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "tabId"    # Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->resetTabsHeaderStyle(Landroid/widget/TabWidget;)V

    .line 553
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 554
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mProfileSelectedListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;

    .line 555
    .local v1, "l":Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;
    const-string v2, "person_profile"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;->onProfileSelected(I)V

    goto :goto_1

    .line 558
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;->onProfileSelected(I)V

    .line 560
    .end local v1    # "l":Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;
    :goto_1
    goto :goto_0

    .line 561
    :cond_1
    return-void
.end method

.method synthetic blacklist lambda$showMarket$2$com-oplus-resolver-OplusResolverDialogHelper(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->startRecommend(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method synthetic blacklist lambda$showMarket$3$com-oplus-resolver-OplusResolverDialogHelper(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 414
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic blacklist lambda$showTargetDetails$0$com-oplus-resolver-OplusResolverDialogHelper(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ResolverListAdapter;Landroid/content/pm/ResolveInfo;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p5, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p6, "dialog12"    # Landroid/content/DialogInterface;
    .param p7, "which"    # I

    .line 315
    packed-switch p7, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 324
    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 326
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0xc0a000e

    const v3, 0xc0a0011

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 317
    .end local v0    # "in":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->updatePinnedData(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p4}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 321
    nop

    .line 331
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist oSharePause()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshare;->onPause()V

    .line 510
    return-void
.end method

.method public whitelist oShareResume()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshare;->onResume()V

    .line 514
    return-void
.end method

.method public whitelist reLoadTabPlaceholderCount(ZLandroid/os/UserHandle;I)V
    .locals 2
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "placeholderCount"    # I

    .line 588
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    invoke-virtual {v0, p3}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->setPlaceholderCount(I)V

    .line 589
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 590
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 592
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->notifyDataSetChanged()V

    .line 593
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mViewPager:Lcom/oplus/resolver/OplusResolverDialogViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setCurrentItem(I)V

    .line 594
    return-void
.end method

.method public whitelist removeProfileSelectedListener(Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;

    .line 696
    if-eqz p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mProfileSelectedListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 699
    :cond_0
    return-void
.end method

.method public whitelist resortListAndNotifyChange(ZLandroid/os/UserHandle;Ljava/util/List;)V
    .locals 7
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 655
    .local p3, "displayResolverlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->getPagerAdapter()Lcom/oplus/resolver/OplusResolverPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->getMoreIconTotalPosition()I

    move-result v0

    .line 656
    .local v0, "oldMoreIcon":I
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 657
    .local v1, "oldCount":I
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    invoke-virtual {v2}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->getCount()I

    move-result v2

    .line 659
    .local v2, "oldPageCount":I
    if-eqz p3, :cond_0

    .line 660
    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    .line 662
    :cond_0
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Lcom/oplus/resolver/OplusResolverInfoHelper;->resort(Ljava/util/List;Landroid/content/Intent;)V

    .line 663
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 664
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sort "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mRiList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusResolverDialogHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-direct {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 669
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/oplus/util/OplusResolverIntentUtil;->isChooserAction(Landroid/content/Intent;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    .line 670
    invoke-virtual {v3, v5}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getResolveTopSize(Landroid/content/Intent;)I

    move-result v3

    if-ne v0, v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    .line 671
    invoke-virtual {v3}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 672
    .local v3, "needUpdateMoreIcon":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 673
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->updateNeedMoreIcon(Landroid/content/Intent;)V

    .line 674
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mActivity:Landroid/app/Activity;

    const v6, 0xc020077

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/resolver/OplusResolverDialogHelper;->updateDotView(Landroid/view/View;)V

    .line 676
    :cond_4
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mPagerAdapter:Lcom/oplus/resolver/OplusResolverPagerAdapter;

    invoke-virtual {v5}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->notifyDataSetChanged()V

    .line 678
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mViewPager:Lcom/oplus/resolver/OplusResolverDialogViewPager;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 679
    invoke-virtual {v5, v4}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setCurrentItem(I)V

    .line 681
    :cond_5
    return-void
.end method

.method public whitelist restoreProfilePager(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pageNumber"    # I

    .line 702
    const v0, 0xc02000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 703
    .local v0, "tabHost":Landroid/widget/TabHost;
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 706
    :cond_0
    return-void
.end method

.method public whitelist setIsSplitScreenMode(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 148
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverOshare;->setIsSplitScreenMode(Z)V

    .line 149
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 274
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 275
    return-void
.end method

.method public whitelist setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "longclickListener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 270
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 271
    return-void
.end method

.method public whitelist showRecommend(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 374
    const v0, 0xc020082

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "marketJump":Landroid/view/View;
    if-nez v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->isMarketEnable()Z

    move-result v1

    const-string v2, "OplusResolverDialogHelper"

    const/16 v3, 0x8

    if-nez v1, :cond_1

    .line 379
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const-string v1, "Market is disable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOriginIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/oplus/util/OplusResolverIntentUtil;->getIntentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "intentType":Ljava/lang/String;
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    invoke-virtual {v4, v1}, Lcom/oplus/resolver/OplusResolverInfoHelper;->isMarketRecommendType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    const-string v3, "not is MarketRecommend Type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 390
    :cond_2
    new-instance v2, Lcom/oplus/resolver/OplusResolverDialogHelper$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/oplus/resolver/OplusResolverDialogHelper$5;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/view/View;Ljava/lang/String;)V

    .line 401
    .local v2, "sortingTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 402
    return-void
.end method

.method public blacklist showTargetDetails(Landroid/content/pm/ResolveInfo;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 16
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 298
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "componentName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 301
    .local v0, "pinned":Z
    const/4 v1, 0x0

    .line 303
    .local v1, "pinPrefList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, v7, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gallery_pin_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "galleryPinList":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ";"

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    move-object v11, v1

    goto :goto_0

    .line 304
    :cond_0
    move-object v11, v1

    .line 307
    .end local v1    # "pinPrefList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "pinPrefList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v11, :cond_1

    .line 308
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v12, v0

    goto :goto_1

    .line 307
    :cond_1
    move v12, v0

    .line 310
    .end local v0    # "pinned":Z
    .local v12, "pinned":Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTargetDetails : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", componentName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPinned : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverDialogHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, v7, Lcom/oplus/resolver/OplusResolverDialogHelper;->mDialogBuilder:Landroid/app/dialog/IOplusAlertDialogBuilderExt;

    iget-object v1, v7, Lcom/oplus/resolver/OplusResolverDialogHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/app/dialog/IOplusAlertDialogBuilderExt;->getBottomBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    if-eqz v12, :cond_2

    const v0, 0xc070021    # 1.040006E-31f

    goto :goto_2

    :cond_2
    const v0, 0xc070020    # 1.0400059E-31f

    :goto_2
    move v15, v0

    new-instance v6, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v7, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda3;-><init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ResolverListAdapter;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v14, v15, v7}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 334
    return-void
.end method

.method public whitelist tearDown(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper;->mOplusResolverOshare:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshare;->dismissOShareView()V

    .line 141
    const v0, 0xc020074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "nfcView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 143
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method
