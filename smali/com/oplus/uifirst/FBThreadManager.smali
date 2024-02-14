.class public Lcom/oplus/uifirst/FBThreadManager;
.super Ljava/lang/Object;
.source "FBThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;,
        Lcom/oplus/uifirst/FBThreadManager$TaskPara;,
        Lcom/oplus/uifirst/FBThreadManager$FBPara;
    }
.end annotation


# static fields
.field private static final blacklist ACTIVITY_PARA_SWITCH:I = 0x1

.field private static final blacklist ALL_PACKAGE_NAME:Ljava/lang/String; = "*"

.field private static final blacklist APP_PARA_OP_TAG:Ljava/lang/String; = "app_para "

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DISABLED_OP:Ljava/lang/String; = "disabled"

.field private static final blacklist FILTER_OFB:Ljava/lang/String; = "ofb"

.field private static final blacklist FILTER_OFB_PARA:Ljava/lang/String; = "ofb_app_para"

.field private static final blacklist FILTER_OFB_TASK_PARA:Ljava/lang/String; = "ofb_task_para"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusUIFirst_FB"

.field private static final blacklist TASK_PARA_OP_TAG:Ljava/lang/String; = "task_para "

.field private static final blacklist TOP_APP_PARA_SWITCH:I


# instance fields
.field private final blacklist DISABLED_FB_OP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist EMPTY_FB_THREAD_OP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActivityPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

.field private blacklist mActivityPkgName:Ljava/lang/String;

.field private final blacklist mAppPidsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mAppUxMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurFbPkgName:Ljava/lang/String;

.field private blacklist mDefaultPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

.field private blacklist mFbFeatureDisabled:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsDefaultPara:Z

.field private blacklist mLastPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

.field private final blacklist mPidTidsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPkgFbFeatureDisabled:Z

.field private blacklist mTopAppPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

.field private final blacklist mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Handler;)V
    .locals 9
    .param p1, "uifManager"    # Lcom/oplus/uifirst/OplusUIFirstManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;

    .line 69
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    .line 70
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    .line 71
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/oplus/uifirst/FBThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    .line 76
    iput-boolean v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z

    .line 77
    iput-boolean v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mPkgFbFeatureDisabled:Z

    .line 78
    const-string v3, ""

    iput-object v3, p0, Lcom/oplus/uifirst/FBThreadManager;->mCurFbPkgName:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/oplus/uifirst/FBThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    .line 91
    iput-object p2, p0, Lcom/oplus/uifirst/FBThreadManager;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    invoke-direct {v3}, Lcom/oplus/uifirst/Utils$ThreadOp;-><init>()V

    .line 94
    .local v3, "disabledOp":Lcom/oplus/uifirst/Utils$ThreadOp;
    const-string v4, "disabled"

    iput-object v4, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    .line 95
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v0, "ofb"

    const-string v5, "*"

    invoke-virtual {p1, v0, v5}, Lcom/oplus/uifirst/OplusUIFirstManager;->getFilterConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "config":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 100
    invoke-static {v0}, Lcom/oplus/uifirst/Utils;->parseThreadOp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 101
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 102
    invoke-virtual {p0, v5}, Lcom/oplus/uifirst/FBThreadManager;->filterOutPrj(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 105
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 107
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    .line 108
    .local v6, "result":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_0
    check-cast v7, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 112
    .local v7, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v8, v7, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    iput-boolean v2, p0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z

    .line 114
    invoke-static {v1}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgEnabled(Z)V

    goto :goto_1

    .line 116
    :cond_1
    invoke-static {v2}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgEnabled(Z)V

    .line 117
    invoke-virtual {p0, v7}, Lcom/oplus/uifirst/FBThreadManager;->setUpDefaultPara(Lcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 123
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v6    # "result":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v7    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mDefaultPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    if-nez v1, :cond_3

    .line 125
    new-instance v1, Lcom/oplus/uifirst/FBThreadManager$FBPara;

    invoke-direct {v1}, Lcom/oplus/uifirst/FBThreadManager$FBPara;-><init>()V

    iput-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mDefaultPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    .line 127
    :cond_3
    return-void
.end method

.method private blacklist addPid(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 235
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 236
    .local v0, "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_0
    return-void
.end method

.method private blacklist addTid2Pid(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .line 270
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 271
    .local v0, "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 272
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_0
    return-void
.end method

.method private blacklist fetchAppPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .locals 3
    .param p1, "paraCfg"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    const-string v1, "ofb_app_para"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->getFilterConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "config":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePara "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUIFirst_FB"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v1, 0x0

    .line 688
    .local v1, "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    if-eqz v0, :cond_0

    .line 689
    invoke-direct {p0, v0}, Lcom/oplus/uifirst/FBThreadManager;->parseAppPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FBPara;

    move-result-object v1

    .line 692
    :cond_0
    return-object v1
.end method

.method private blacklist fetchTaskPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    .locals 3
    .param p1, "paraCfg"    # Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    const-string v1, "ofb_task_para"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->getFilterConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "config":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePara "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUIFirst_FB"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v1, 0x0

    .line 733
    .local v1, "para":Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    if-eqz v0, :cond_0

    .line 734
    invoke-direct {p0, v0}, Lcom/oplus/uifirst/FBThreadManager;->parseTaskPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$TaskPara;

    move-result-object v1

    .line 737
    :cond_0
    return-object v1
.end method

.method static synthetic blacklist lambda$addGlThread$1(ILcom/oplus/uifirst/Utils$ThreadOp;)Z
    .locals 1
    .param p0, "tid"    # I
    .param p1, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 156
    iget-object v0, p1, Lcom/oplus/uifirst/Utils$ThreadOp;->mPattern:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oplus/uifirst/Utils;->isMatchedTid(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$filterOutPrj$3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "localPrjNum"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 607
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getFbThreadOps$2(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)Z
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 220
    iget-object v0, p1, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$new$0(Lcom/oplus/uifirst/Utils$ThreadOp;)Z
    .locals 1
    .param p0, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 107
    iget-object v0, p0, Lcom/oplus/uifirst/Utils$ThreadOp;->mPrjNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist parseAppPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .locals 6
    .param p1, "config"    # Ljava/lang/String;

    .line 696
    new-instance v0, Lcom/oplus/uifirst/FBThreadManager$FBPara;

    invoke-direct {v0}, Lcom/oplus/uifirst/FBThreadManager$FBPara;-><init>()V

    .line 698
    .local v0, "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :try_start_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .local v1, "reader":Landroid/util/JsonReader;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 700
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1

    .line 701
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "jsonName":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "boost_migr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "boost_freq"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "vutil_margin"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 713
    new-instance v3, Ljava/io/IOException;

    goto :goto_3

    .line 710
    :pswitch_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->vutilMargin:I

    .line 711
    goto :goto_2

    .line 707
    :pswitch_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostMigr:I

    .line 708
    goto :goto_2

    .line 704
    :pswitch_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostFreq:I

    .line 705
    nop

    .line 715
    .end local v2    # "jsonName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 713
    .restart local v2    # "jsonName":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown para: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .end local v1    # "reader":Landroid/util/JsonReader;
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "config":Ljava/lang/String;
    throw v3

    .line 716
    .end local v2    # "jsonName":Ljava/lang/String;
    .restart local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v1    # "reader":Landroid/util/JsonReader;
    .restart local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .restart local p1    # "config":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 720
    .end local v1    # "reader":Landroid/util/JsonReader;
    nop

    .line 722
    return-object v0

    .line 698
    .restart local v1    # "reader":Landroid/util/JsonReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "config":Ljava/lang/String;
    :goto_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 717
    .end local v1    # "reader":Landroid/util/JsonReader;
    .restart local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .restart local p1    # "config":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "para json config error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUIFirst_FB"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v2, 0x0

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x4dbc2655 -> :sswitch_2
        0x67357994 -> :sswitch_1
        0x673886a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist parseTaskPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    .locals 6
    .param p1, "config"    # Ljava/lang/String;

    .line 741
    new-instance v0, Lcom/oplus/uifirst/FBThreadManager$TaskPara;

    invoke-direct {v0}, Lcom/oplus/uifirst/FBThreadManager$TaskPara;-><init>()V

    .line 743
    .local v0, "para":Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    :try_start_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .local v1, "reader":Landroid/util/JsonReader;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 745
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1

    .line 746
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "jsonName":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "width"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "depth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 755
    new-instance v3, Ljava/io/IOException;

    goto :goto_3

    .line 752
    :pswitch_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/oplus/uifirst/FBThreadManager$TaskPara;->width:I

    .line 753
    goto :goto_2

    .line 749
    :pswitch_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/oplus/uifirst/FBThreadManager$TaskPara;->depth:I

    .line 750
    nop

    .line 757
    .end local v2    # "jsonName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 755
    .restart local v2    # "jsonName":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown para: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    .end local v1    # "reader":Landroid/util/JsonReader;
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "config":Ljava/lang/String;
    throw v3

    .line 758
    .end local v2    # "jsonName":Ljava/lang/String;
    .restart local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    .restart local v1    # "reader":Landroid/util/JsonReader;
    .restart local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .restart local p1    # "config":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 762
    .end local v1    # "reader":Landroid/util/JsonReader;
    nop

    .line 764
    return-object v0

    .line 743
    .restart local v1    # "reader":Landroid/util/JsonReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "config":Ljava/lang/String;
    :goto_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 759
    .end local v1    # "reader":Landroid/util/JsonReader;
    .restart local v0    # "para":Lcom/oplus/uifirst/FBThreadManager$TaskPara;
    .restart local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .restart local p1    # "config":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "para json config error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUIFirst_FB"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v2, 0x0

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5b0cac3 -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist removePid(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 246
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;

    .line 247
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-eqz v0, :cond_1

    .line 248
    iget-object v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v1, p2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 249
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 250
    iget-object v3, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 252
    :cond_0
    iget-object v3, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v3, p2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 253
    if-eq v1, v2, :cond_1

    .line 254
    iget-object v2, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    .line 257
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 258
    .local v1, "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_2
    return-void
.end method

.method private blacklist removeTid4Pid(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .line 281
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 282
    .local v0, "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    return-void
.end method

.method private blacklist restoreDefaultPara()V
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mIsDefaultPara:Z

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mDefaultPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    invoke-direct {p0, v0}, Lcom/oplus/uifirst/FBThreadManager;->setUpPara(Lcom/oplus/uifirst/FBThreadManager$FBPara;)V

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mIsDefaultPara:Z

    .line 790
    :cond_0
    return-void
.end method

.method private blacklist setUpPara(Lcom/oplus/uifirst/FBThreadManager$FBPara;)V
    .locals 3
    .param p1, "para"    # Lcom/oplus/uifirst/FBThreadManager$FBPara;

    .line 768
    if-nez p1, :cond_0

    .line 769
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mDefaultPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    if-eq p1, v0, :cond_1

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mIsDefaultPara:Z

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mLastPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    invoke-virtual {p1, v0}, Lcom/oplus/uifirst/FBThreadManager$FBPara;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    return-void

    .line 780
    :cond_2
    iput-object p1, p0, Lcom/oplus/uifirst/FBThreadManager;->mLastPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    .line 782
    iget v0, p1, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostFreq:I

    iget v1, p1, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostMigr:I

    iget v2, p1, Lcom/oplus/uifirst/FBThreadManager$FBPara;->vutilMargin:I

    invoke-static {v0, v1, v2}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgAppFrameParam(III)V

    .line 783
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist addGlThread(Ljava/lang/String;II)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-nez v0, :cond_1

    .line 140
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_2
    const-string v1, "add_gl"

    invoke-virtual {p0, p1, v1}, Lcom/oplus/uifirst/FBThreadManager;->getFbThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    .line 158
    .local v2, "matched":Z
    if-eqz v2, :cond_3

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/oplus/uifirst/FBThreadManager;->addPid(Ljava/lang/String;I)V

    .line 160
    invoke-direct {p0, p2, p3}, Lcom/oplus/uifirst/FBThreadManager;->addTid2Pid(II)V

    .line 162
    iget-object v3, p0, Lcom/oplus/uifirst/FBThreadManager;->mCurFbPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4, v4}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgFrameTask(IIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_3
    monitor-exit p0

    return-void

    .line 146
    .end local v2    # "matched":Z
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local v1    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist appExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 196
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist filterOutPrj(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation

    .line 601
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    invoke-static {}, Lcom/oplus/uifirst/Utils;->getProjectNumber()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "localPrjNum":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 603
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 605
    .local v2, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mPrjNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 606
    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mPrjNum:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "projectNums":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    .line 608
    .local v4, "contains":Z
    if-nez v4, :cond_0

    .line 609
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 612
    .end local v2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v3    # "projectNums":[Ljava/lang/String;
    .end local v4    # "contains":Z
    :cond_0
    goto :goto_0

    .line 613
    :cond_1
    return-object p1
.end method

.method declared-synchronized blacklist getFbThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;

    .line 201
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mOps:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mOps:Ljava/util/List;

    iget-object v2, p0, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    .line 206
    monitor-exit p0

    return-object v2

    .line 209
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mOps:Ljava/util/List;

    iget-object v2, p0, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_2

    .line 210
    monitor-exit p0

    return-object v2

    .line 220
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mOps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/oplus/uifirst/FBThreadManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 202
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 199
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "event":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist getFbThreadStat(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist handleActivityEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 418
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z

    if-eqz v3, :cond_0

    .line 419
    return-void

    .line 423
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 431
    move-object/from16 v5, p3

    return-void

    .line 428
    :sswitch_0
    const-string v3, "resume"

    .line 429
    .local v3, "event":Ljava/lang/String;
    goto :goto_0

    .line 425
    .end local v3    # "event":Ljava/lang/String;
    :sswitch_1
    const-string v3, "start"

    .line 426
    .restart local v3    # "event":Ljava/lang/String;
    nop

    .line 434
    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/oplus/uifirst/FBThreadManager;->getFbThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 436
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " activity event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusUIFirst_FB"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {v6, v4}, Lcom/oplus/uifirst/Utils;->printThreadOps(Ljava/lang/String;Ljava/util/List;)V

    .line 439
    const/4 v6, 0x4

    if-eqz v4, :cond_8

    iget-object v8, v0, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;

    if-eq v4, v8, :cond_8

    iget-object v8, v0, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;

    if-ne v4, v8, :cond_1

    move-object/from16 v5, p3

    goto/16 :goto_5

    .line 447
    :cond_1
    const/4 v8, 0x0

    .line 449
    .local v8, "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, "activityTag":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 451
    .local v11, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v12, v11, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, v11, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 452
    iget-object v12, v11, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    iget-object v15, v11, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v5, p3

    invoke-virtual {v12, v13, v5, v14, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 453
    iget-object v12, v11, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    .line 454
    .local v12, "opTag":Ljava/lang/String;
    const-string v13, "app_para "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 455
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/oplus/uifirst/FBThreadManager;->fetchAppPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FBPara;

    move-result-object v8

    goto :goto_3

    .line 456
    :cond_2
    const-string v13, "task_para "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 457
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 458
    .local v13, "msg":Landroid/os/Message;
    const/16 v14, 0x9

    iput v14, v13, Landroid/os/Message;->what:I

    .line 459
    new-instance v14, Landroid/util/Pair;

    invoke-direct {v14, v2, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v14, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 460
    iget-object v14, v0, Lcom/oplus/uifirst/FBThreadManager;->mHandler:Landroid/os/Handler;

    iget v15, v11, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    move-object/from16 v17, v8

    .end local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .local v17, "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    int-to-long v7, v15

    invoke-virtual {v14, v13, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 456
    .end local v13    # "msg":Landroid/os/Message;
    .end local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :cond_3
    move-object/from16 v17, v8

    .end local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    goto :goto_2

    .line 452
    .end local v12    # "opTag":Ljava/lang/String;
    .end local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :cond_4
    move-object/from16 v17, v8

    .end local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    goto :goto_2

    .line 451
    .end local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :cond_5
    move-object/from16 v5, p3

    move-object/from16 v17, v8

    .line 464
    .end local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .end local v11    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .restart local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :goto_2
    move-object/from16 v8, v17

    .end local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :goto_3
    goto :goto_1

    .line 467
    :cond_6
    move-object/from16 v5, p3

    move-object/from16 v17, v8

    .end local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    if-ne v6, v1, :cond_7

    .line 468
    move-object/from16 v8, v17

    const/4 v6, 0x1

    const/4 v7, 0x0

    .end local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    invoke-virtual {v0, v2, v7, v8, v6}, Lcom/oplus/uifirst/FBThreadManager;->handleParaSwitch(Ljava/lang/String;Lcom/oplus/uifirst/FBThreadManager$FBPara;Lcom/oplus/uifirst/FBThreadManager$FBPara;I)V

    goto :goto_4

    .line 467
    .end local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :cond_7
    move-object/from16 v8, v17

    .line 470
    .end local v17    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .restart local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :goto_4
    return-void

    .line 439
    .end local v8    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .end local v9    # "activityTag":Ljava/lang/String;
    :cond_8
    move-object/from16 v5, p3

    .line 441
    :goto_5
    if-ne v6, v1, :cond_9

    .line 442
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v7, v6}, Lcom/oplus/uifirst/FBThreadManager;->handleParaSwitch(Ljava/lang/String;Lcom/oplus/uifirst/FBThreadManager$FBPara;Lcom/oplus/uifirst/FBThreadManager$FBPara;I)V

    .line 444
    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method declared-synchronized blacklist handleFbThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-nez v0, :cond_0

    .line 489
    monitor-exit p0

    return-void

    .line 492
    :cond_0
    :try_start_1
    iget-object v1, p3, Lcom/oplus/uifirst/Utils$ThreadOp;->mPattern:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/oplus/uifirst/Utils;->findMatchedTids(ILjava/lang/String;)Landroid/util/IntArray;

    move-result-object v1

    .line 493
    .local v1, "tids":Landroid/util/IntArray;
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v2, :cond_1

    .line 494
    monitor-exit p0

    return-void

    .line 497
    :cond_1
    :try_start_2
    const-string v2, "OplusUIFirst_FB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFbThreadOp find: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 500
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 501
    .local v3, "tid":I
    invoke-direct {p0, p1, p2}, Lcom/oplus/uifirst/FBThreadManager;->addPid(Ljava/lang/String;I)V

    .line 502
    invoke-direct {p0, p2, v3}, Lcom/oplus/uifirst/FBThreadManager;->addTid2Pid(II)V

    .line 504
    iget-object v4, p0, Lcom/oplus/uifirst/FBThreadManager;->mCurFbPkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 505
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p2, v3, v5, v4, v4}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgFrameTask(IIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    .end local v3    # "tid":I
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 486
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local v1    # "tids":Landroid/util/IntArray;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist handleFbThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    monitor-enter p0

    .line 473
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/FBThreadManager;->getFbThreadStat(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-nez v0, :cond_0

    .line 475
    monitor-exit p0

    return-void

    .line 478
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 479
    iget-object v2, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/oplus/uifirst/FBThreadManager;->handleFbThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 482
    iget-object v2, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/oplus/uifirst/FBThreadManager;->handleFbThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 472
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist handleParaSwitch(Ljava/lang/String;Lcom/oplus/uifirst/FBThreadManager$FBPara;Lcom/oplus/uifirst/FBThreadManager$FBPara;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "topPara"    # Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .param p3, "activityPara"    # Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .param p4, "paraSwitch"    # I

    monitor-enter p0

    .line 636
    :try_start_0
    const-string v0, "OplusUIFirst_FB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleParaSwitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x1

    .line 641
    .local v0, "isActivity":Z
    if-nez p4, :cond_1

    .line 642
    iput-object p2, p0, Lcom/oplus/uifirst/FBThreadManager;->mTopAppPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    .line 647
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    const/4 v0, 0x0

    goto :goto_0

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 652
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPkgName:Ljava/lang/String;

    .line 653
    iput-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    goto :goto_0

    .line 655
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_6

    .line 656
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPkgName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 658
    .local v1, "isSamePkg":Z
    iput-object p3, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    .line 659
    iput-object p1, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPkgName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    if-nez v1, :cond_2

    if-nez p3, :cond_2

    .line 663
    monitor-exit p0

    return-void

    .line 665
    .end local v1    # "isSamePkg":Z
    .restart local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_2
    nop

    .line 669
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mActivityPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    if-eqz v1, :cond_4

    .line 670
    invoke-direct {p0, v1}, Lcom/oplus/uifirst/FBThreadManager;->setUpPara(Lcom/oplus/uifirst/FBThreadManager$FBPara;)V

    goto :goto_1

    .line 672
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_4
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mTopAppPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    if-eqz v1, :cond_5

    .line 673
    invoke-direct {p0, v1}, Lcom/oplus/uifirst/FBThreadManager;->setUpPara(Lcom/oplus/uifirst/FBThreadManager$FBPara;)V

    goto :goto_1

    .line 675
    :cond_5
    invoke-direct {p0}, Lcom/oplus/uifirst/FBThreadManager;->restoreDefaultPara()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    :goto_1
    monitor-exit p0

    return-void

    .line 666
    :cond_6
    monitor-exit p0

    return-void

    .line 635
    .end local v0    # "isActivity":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "topPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .end local p3    # "activityPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .end local p4    # "paraSwitch":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "isolated"    # Z
    .param p5, "processName"    # Ljava/lang/String;

    .line 518
    iget-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z

    if-eqz v0, :cond_0

    .line 519
    return-void

    .line 523
    :cond_0
    const-string v0, "OplusUIFirst_FB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " proc start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/FBThreadManager;->appExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 528
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    const-string v1, "ofb"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->getFilterConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "config":Ljava/lang/String;
    const-string v1, "OplusUIFirst_FB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-nez v0, :cond_1

    .line 534
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/oplus/uifirst/FBThreadManager;->setFbThreadOps(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 536
    :cond_1
    invoke-static {v0}, Lcom/oplus/uifirst/Utils;->parseThreadOp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 537
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 538
    invoke-virtual {p0, v1}, Lcom/oplus/uifirst/FBThreadManager;->filterOutPrj(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 541
    :cond_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 544
    :cond_3
    const/4 v2, 0x0

    .line 545
    .local v2, "disabled":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 546
    .local v4, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    const-string v5, "disabled"

    iget-object v6, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 547
    iget-object v3, p0, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;

    invoke-virtual {p0, p1, v3}, Lcom/oplus/uifirst/FBThreadManager;->setFbThreadOps(Ljava/lang/String;Ljava/util/List;)V

    .line 548
    const/4 v2, 0x1

    .line 549
    goto :goto_1

    .line 551
    .end local v4    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :cond_4
    goto :goto_0

    .line 552
    :cond_5
    :goto_1
    if-nez v2, :cond_7

    .line 553
    invoke-virtual {p0, p1, v1}, Lcom/oplus/uifirst/FBThreadManager;->setFbThreadOps(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 542
    .end local v2    # "disabled":Z
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/oplus/uifirst/FBThreadManager;->setFbThreadOps(Ljava/lang/String;Ljava/util/List;)V

    .line 563
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :cond_7
    :goto_3
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;

    .line 565
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-eqz v0, :cond_9

    .line 566
    if-nez p4, :cond_8

    .line 567
    iput p2, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mUid:I

    .line 568
    iget-object v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_4

    .line 570
    :cond_8
    iget-object v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    .line 572
    :goto_4
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mHasChecked:Z

    .line 574
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    const-string v0, "start_p"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uifirst/FBThreadManager;->getFbThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 579
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    const-string v1, "OplusUIFirst_FB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v1, "OplusUIFirst_FB"

    invoke-static {v1, v0}, Lcom/oplus/uifirst/Utils;->printThreadOps(Ljava/lang/String;Ljava/util/List;)V

    .line 583
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;

    if-ne v0, v1, :cond_a

    goto :goto_6

    .line 587
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 588
    .local v2, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 589
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 590
    iput p3, v3, Landroid/os/Message;->arg1:I

    .line 591
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 592
    iget-object v4, p0, Lcom/oplus/uifirst/FBThreadManager;->mHandler:Landroid/os/Handler;

    iget v5, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 594
    const-string v4, "OplusUIFirst_FB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleProcessStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_5

    .line 597
    :cond_b
    return-void

    .line 584
    :cond_c
    :goto_6
    return-void

    .line 574
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method blacklist moveToBack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I

    .line 360
    iget-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z

    if-eqz v0, :cond_0

    .line 361
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " moveToBack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusUIFirst_FB"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method blacklist moveToFore(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I

    .line 370
    iget-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z

    if-eqz v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    const-string v0, "to_fore"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uifirst/FBThreadManager;->getFbThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "toForeOps":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toForeOps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUIFirst_FB"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {v2, v0}, Lcom/oplus/uifirst/Utils;->printThreadOps(Ljava/lang/String;Ljava/util/List;)V

    .line 379
    if-eqz v0, :cond_4

    .line 380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 381
    .local v3, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v4, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mMode:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 382
    iget-object v4, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mMode:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v6, "repeat"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "oneshot"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v7

    :goto_1
    const/16 v4, 0x9

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 394
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/FBThreadManager;->getFbThreadStat(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;

    move-result-object v5

    .line 395
    .local v5, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-eqz v5, :cond_3

    iget-boolean v6, v5, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mHasChecked:Z

    if-eqz v6, :cond_2

    .line 396
    goto :goto_2

    .line 398
    :cond_2
    iput-boolean v7, v5, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mHasChecked:Z

    .line 399
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 400
    .local v6, "msg":Landroid/os/Message;
    iput v4, v6, Landroid/os/Message;->what:I

    .line 401
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    iget-object v4, p0, Lcom/oplus/uifirst/FBThreadManager;->mHandler:Landroid/os/Handler;

    iget v7, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v7, v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oneshot "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 384
    .end local v5    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local v6    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 385
    .local v5, "msg":Landroid/os/Message;
    iput v4, v5, Landroid/os/Message;->what:I

    .line 386
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    iget-object v4, p0, Lcom/oplus/uifirst/FBThreadManager;->mHandler:Landroid/os/Handler;

    iget v6, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repeat "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 412
    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4eb219a0 -> :sswitch_1
        -0x37b3d265 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized blacklist moveToTop(Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;)V
    .locals 21
    .param p1, "info"    # Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 291
    :try_start_0
    iget-boolean v2, v1, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mPackageName:Ljava/lang/String;

    .line 296
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "to_top"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/uifirst/FBThreadManager;->getFbThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 298
    .local v3, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    const-string v4, "OplusUIFirst_FB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moveToTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v4, "OplusUIFirst_FB"

    invoke-static {v4, v3}, Lcom/oplus/uifirst/Utils;->printThreadOps(Ljava/lang/String;Ljava/util/List;)V

    .line 302
    iget-object v4, v1, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    .line 305
    iput-boolean v5, v1, Lcom/oplus/uifirst/FBThreadManager;->mPkgFbFeatureDisabled:Z

    .line 306
    invoke-static {v6}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgEnabled(Z)V

    .line 307
    const-string v4, ""

    iput-object v4, v1, Lcom/oplus/uifirst/FBThreadManager;->mCurFbPkgName:Ljava/lang/String;

    goto :goto_0

    .line 309
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_1
    iget-boolean v4, v1, Lcom/oplus/uifirst/FBThreadManager;->mPkgFbFeatureDisabled:Z

    if-eqz v4, :cond_2

    .line 310
    iput-boolean v6, v1, Lcom/oplus/uifirst/FBThreadManager;->mPkgFbFeatureDisabled:Z

    .line 311
    invoke-static {v5}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgEnabled(Z)V

    .line 313
    :cond_2
    const/4 v4, 0x0

    .line 314
    .local v4, "hwuitask0":I
    const/4 v7, 0x0

    .line 315
    .local v7, "hwuitask1":I
    iget-object v8, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3

    .line 316
    iget-object v8, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    invoke-virtual {v8, v6}, Landroid/util/IntArray;->get(I)I

    move-result v8

    move v4, v8

    .line 317
    iget-object v8, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    invoke-virtual {v8, v5}, Landroid/util/IntArray;->get(I)I

    move-result v8

    move v7, v8

    .line 319
    :cond_3
    iput-object v2, v1, Lcom/oplus/uifirst/FBThreadManager;->mCurFbPkgName:Ljava/lang/String;

    .line 320
    iget-object v8, v1, Lcom/oplus/uifirst/FBThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    iget v9, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    iget v10, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    const/16 v13, 0xc9

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move v11, v4

    move v12, v7

    invoke-virtual/range {v8 .. v20}, Lcom/oplus/uifirst/OplusUIFirstManager;->ofbBoostHint(IIIIIIJJJ)V

    .line 322
    const-string v8, "OplusUIFirst_FB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " boost hint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v4    # "hwuitask0":I
    .end local v7    # "hwuitask1":I
    :goto_0
    const/4 v4, 0x0

    .line 327
    .local v4, "topAppPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    if-eqz v3, :cond_6

    iget-object v7, v1, Lcom/oplus/uifirst/FBThreadManager;->EMPTY_FB_THREAD_OP:Ljava/util/List;

    if-eq v3, v7, :cond_6

    iget-object v7, v1, Lcom/oplus/uifirst/FBThreadManager;->DISABLED_FB_OP:Ljava/util/List;

    if-ne v3, v7, :cond_4

    goto :goto_2

    .line 330
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 331
    .local v8, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v9, v8, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    .line 332
    .local v9, "opTag":Ljava/lang/String;
    const-string v10, "app_para "

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 333
    const-string v7, "app_para "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/oplus/uifirst/FBThreadManager;->fetchAppPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FBPara;

    move-result-object v7

    move-object v4, v7

    .line 334
    goto :goto_2

    .line 336
    .end local v8    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v9    # "opTag":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 339
    :cond_6
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v4, v7, v6}, Lcom/oplus/uifirst/FBThreadManager;->handleParaSwitch(Ljava/lang/String;Lcom/oplus/uifirst/FBThreadManager$FBPara;Lcom/oplus/uifirst/FBThreadManager$FBPara;I)V

    .line 342
    iget-object v7, v1, Lcom/oplus/uifirst/FBThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 343
    .local v7, "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_9

    .line 344
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 345
    .local v9, "pid":I
    iget-object v10, v1, Lcom/oplus/uifirst/FBThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 346
    .local v10, "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez v10, :cond_7

    .line 347
    goto :goto_3

    .line 349
    :cond_7
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 351
    .local v12, "tid":I
    const-string v13, "OplusUIFirst_FB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " boost task: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {v9, v12, v5, v6, v6}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgFrameTask(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .end local v12    # "tid":I
    goto :goto_4

    .line 355
    .end local v9    # "pid":I
    .end local v10    # "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_8
    goto :goto_3

    .line 357
    :cond_9
    monitor-exit p0

    return-void

    .line 290
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v4    # "topAppPara":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    .end local v7    # "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local p1    # "info":Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized blacklist removeAppPid(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    monitor-enter p0

    .line 183
    :try_start_0
    const-string v0, "OplusUIFirst_FB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remove pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-nez v0, :cond_0

    .line 188
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/oplus/uifirst/FBThreadManager;->removePid(Ljava/lang/String;I)V

    .line 192
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 182
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist removeGlThread(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mFbFeatureDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 170
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-nez v0, :cond_1

    .line 175
    monitor-exit p0

    return-void

    .line 177
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/oplus/uifirst/FBThreadManager;->removeTid4Pid(II)V

    .line 178
    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v1, v1}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgFrameTask(IIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 168
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setFbThreadOps(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;)V"
        }
    .end annotation

    .local p2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;

    .line 226
    .local v0, "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    if-nez v0, :cond_0

    .line 227
    new-instance v1, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;

    invoke-direct {v1, p2}, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 228
    iget-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_0
    iput-object p2, v0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mOps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 224
    .end local v0    # "stat":Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setUpDefaultPara(Lcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 3
    .param p1, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    monitor-enter p0

    .line 618
    :try_start_0
    const-string v0, "OplusUIFirst_FB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDefaultPara "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p1, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    .line 622
    .local v0, "opTag":Ljava/lang/String;
    const-string v1, "app_para "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const-string v1, "app_para "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/uifirst/FBThreadManager;->fetchAppPara(Ljava/lang/String;)Lcom/oplus/uifirst/FBThreadManager$FBPara;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/uifirst/FBThreadManager;->mDefaultPara:Lcom/oplus/uifirst/FBThreadManager$FBPara;

    .line 626
    .end local p0    # "this":Lcom/oplus/uifirst/FBThreadManager;
    :cond_0
    invoke-direct {p0}, Lcom/oplus/uifirst/FBThreadManager;->restoreDefaultPara()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 617
    .end local v0    # "opTag":Ljava/lang/String;
    .end local p1    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
