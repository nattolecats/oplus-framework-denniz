.class public Lcom/oplus/util/OplusStandardRusHelper;
.super Lcom/oplus/util/RomUpdateHelper;
.source "OplusStandardRusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;,
        Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;,
        Lcom/oplus/util/OplusStandardRusHelper$MatchMode;
    }
.end annotation


# static fields
.field public static final blacklist BUILD_SDK_NAME:Ljava/lang/String; = "build_sdk"

.field private static final blacklist CONST_FOUR:I = 0x4

.field private static final blacklist CONST_THREE:I = 0x3

.field private static final blacklist CONST_ZERO:I = 0x0

.field private static final blacklist LETTER_NUM:I = 0x1a

.field public static final blacklist OS_VERSION_NAME:Ljava/lang/String; = "os_version"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusStandardRusHelper"

.field public static final blacklist VERSION_NAME:Ljava/lang/String; = "version"

.field private static final blacklist mRefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/util/OplusStandardRusHelper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallback:Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mSystemFile:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/oplus/util/OplusStandardRusHelper;)Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/util/OplusStandardRusHelper;->mCallback:Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusStandardRusHelper;->mRefMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "systemFile"    # Ljava/lang/String;
    .param p4, "dataFile"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/util/RomUpdateHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/oplus/util/OplusStandardRusHelper;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/oplus/util/OplusStandardRusHelper$1;

    invoke-direct {v0, p0}, Lcom/oplus/util/OplusStandardRusHelper$1;-><init>(Lcom/oplus/util/OplusStandardRusHelper;)V

    iput-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper;->mCallback:Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;

    .line 49
    iput-object p3, p0, Lcom/oplus/util/OplusStandardRusHelper;->mSystemFile:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p2, p0}, Lcom/oplus/util/OplusStandardRusHelper;->recordReferences(Ljava/lang/String;Lcom/oplus/util/OplusStandardRusHelper;)V

    .line 51
    new-instance v0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    invoke-direct {v0, p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;-><init>(Lcom/oplus/util/OplusStandardRusHelper;)V

    new-instance v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    invoke-direct {v1, p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;-><init>(Lcom/oplus/util/OplusStandardRusHelper;)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/util/OplusStandardRusHelper;->setUpdateInfo(Lcom/oplus/util/RomUpdateHelper$UpdateInfo;Lcom/oplus/util/RomUpdateHelper$UpdateInfo;)V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/util/OplusStandardRusHelper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    :goto_0
    return-void
.end method

.method private blacklist checkValidityForData(Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;)Z
    .locals 8
    .param p1, "systemInfo"    # Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;
    .param p2, "dataInfo"    # Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    .line 76
    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, " data:"

    const-string v3, "OplusStandardRusHelper"

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "os version not match, data invalid, system:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v1

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v0

    invoke-virtual {p2}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build sdk not match, data invalid, system:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v1

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lower data version, data invalid, system:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 92
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isContained(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "verifyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 479
    .local p1, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 480
    if-eqz p2, :cond_1

    .line 481
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 479
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isInWhiteList(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p0, "filterName"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/oplus/util/OplusStandardRusHelper$MatchMode;->MODE_NORMAL_MODE_MATCH:Lcom/oplus/util/OplusStandardRusHelper$MatchMode;

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/util/OplusStandardRusHelper;->isInWhiteList(Ljava/lang/String;ILjava/lang/String;Lcom/oplus/util/OplusStandardRusHelper$MatchMode;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isInWhiteList(Ljava/lang/String;ILjava/lang/String;Lcom/oplus/util/OplusStandardRusHelper$MatchMode;)Z
    .locals 6
    .param p0, "filterName"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/oplus/util/OplusStandardRusHelper$MatchMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/oplus/util/OplusStandardRusHelper;->mRefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 454
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oplus/util/OplusStandardRusHelper;>;"
    const-string v2, "OplusStandardRusHelper"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 455
    sget-object v0, Lcom/oplus/util/OplusStandardRusHelper$2;->$SwitchMap$com$oplus$util$OplusStandardRusHelper$MatchMode:[I

    invoke-virtual {p3}, Lcom/oplus/util/OplusStandardRusHelper$MatchMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 461
    const-string v0, "Unknown mode"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v3

    .line 459
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/util/OplusStandardRusHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Lcom/oplus/util/OplusStandardRusHelper;->isInWhiteList(ILjava/lang/String;Z)Z

    move-result v0

    return v0

    .line 457
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v0, p1, p2, v3}, Lcom/oplus/util/OplusStandardRusHelper;->isInWhiteList(ILjava/lang/String;Z)Z

    move-result v0

    return v0

    .line 466
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ref may have been expired"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return v3

    .line 450
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oplus/util/OplusStandardRusHelper;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rushelper has not been initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist recordReferences(Ljava/lang/String;Lcom/oplus/util/OplusStandardRusHelper;)V
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "self"    # Lcom/oplus/util/OplusStandardRusHelper;

    .line 96
    sget-object v0, Lcom/oplus/util/OplusStandardRusHelper;->mRefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multible RusHelper for same type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusStandardRusHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method


# virtual methods
.method public blacklist dumpToString()Ljava/lang/String;
    .locals 2

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusStandardRusHelper;->getUpdateInfo(Z)Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    .line 395
    .local v0, "temp":Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;
    invoke-virtual {v0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->dumpToString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAllList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusStandardRusHelper;->getUpdateInfo(Z)Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    invoke-virtual {v0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getAllList()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOneList(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusStandardRusHelper;->getUpdateInfo(Z)Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOneList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist init()V
    .locals 4

    .line 61
    invoke-super {p0}, Lcom/oplus/util/RomUpdateHelper;->init()V

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/util/OplusStandardRusHelper;->mSystemFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusStandardRusHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/util/OplusStandardRusHelper;->getUpdateInfo(Z)Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    move-result-object v1

    check-cast v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    .line 64
    .local v1, "tempInfo":Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oplus/util/OplusStandardRusHelper;->getUpdateInfo(Z)Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    move-result-object v2

    check-cast v2, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    .line 65
    .local v2, "currentInfo":Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;
    invoke-virtual {v1, v0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, v1, v2}, Lcom/oplus/util/OplusStandardRusHelper;->checkValidityForData(Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-virtual {v2, v1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->clone(Lcom/oplus/util/RomUpdateHelper$UpdateInfo;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public whitelist insertValueInList(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 473
    invoke-super {p0, p1, p2}, Lcom/oplus/util/RomUpdateHelper;->insertValueInList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isInWhiteList(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/util/OplusStandardRusHelper;->isInWhiteList(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isInWhiteList(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;
    .param p3, "containMode"    # Z

    .line 413
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 414
    return v0

    .line 417
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oplus/util/OplusStandardRusHelper;->getUpdateInfo(Z)Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    move-result-object v1

    check-cast v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    .line 419
    .local v1, "tempInfo":Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;
    if-nez v1, :cond_1

    .line 420
    return v0

    .line 431
    :cond_1
    if-eqz p3, :cond_3

    .line 432
    invoke-virtual {v1, p1}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOneList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 433
    .local v2, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 434
    invoke-direct {p0, v2, p2}, Lcom/oplus/util/OplusStandardRusHelper;->isContained(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 436
    :cond_2
    return v0

    .line 438
    .end local v2    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->isInWhiteList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setRusCallback(Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;

    .line 72
    iput-object p1, p0, Lcom/oplus/util/OplusStandardRusHelper;->mCallback:Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;

    .line 73
    return-void
.end method
