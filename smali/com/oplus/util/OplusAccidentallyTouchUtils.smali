.class public Lcom/oplus/util/OplusAccidentallyTouchUtils;
.super Ljava/lang/Object;
.source "OplusAccidentallyTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final blacklist ACCIDENTALLYTOUCH_FILE:Ljava/lang/String; = "/data/oplus/os/guardelf/sys_accidentally_touch_config_list.xml"

.field private static final blacklist ACCIDENTALLYTOUCH_PATH:Ljava/lang/String; = "/data/oplus/os/guardelf"

.field private static final blacklist DENSITY_XXHIGH:I = 0x3

.field private static final blacklist OFFSET_1:I = 0x5

.field private static final blacklist OFFSET_2:I = 0x50

.field private static final blacklist PROPERTY_ENABLE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusAccidentallyTouch"

.field private static final blacklist TAG_BEZEL:Ljava/lang/String; = "bezel"

.field private static final blacklist TAG_BEZEL_AREA:Ljava/lang/String; = "bezel_area"

.field private static final blacklist TAG_BEZEL_ENABLE:Ljava/lang/String; = "bezel_enable"

.field private static final blacklist TAG_EDGE_ENABLE:Ljava/lang/String; = "edge_enable"

.field private static final blacklist TAG_EDGE_PKG:Ljava/lang/String; = "edge_pkg"

.field private static final blacklist TAG_EDGE_T:Ljava/lang/String; = "edge_t"

.field private static final blacklist TAG_EDGE_T1:Ljava/lang/String; = "edge_t1"

.field private static final blacklist TAG_EDGE_T2:Ljava/lang/String; = "edge_t2"

.field private static final blacklist TAG_ENABLE:Ljava/lang/String; = "enable_accidentallytouch"

.field private static final blacklist TAG_LEFT_OFFSET:Ljava/lang/String; = "left_offset"

.field private static final blacklist TAG_POINT_LEFT_OFFSET:Ljava/lang/String; = "point_left_offset"

.field private static final blacklist TAG_POINT_RIGHT_OFFSET:Ljava/lang/String; = "point_right_offset"

.field private static final blacklist TAG_RIGHT_OFFSET:Ljava/lang/String; = "right_offset"

.field private static blacklist mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

.field private static blacklist mTouchUtils:Lcom/oplus/util/OplusAccidentallyTouchUtils;


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist mAccidentallyTouchFileObserver:Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;

.field private final blacklist mAccidentallyTouchLock:Ljava/lang/Object;

.field private blacklist mActivePointerId:I

.field private blacklist mBezelArea:Ljava/lang/String;

.field private blacklist mBezelEnable:Z

.field private blacklist mBezelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisplayWidth:I

.field private blacklist mEdgeEnable:Z

.field private blacklist mEdgeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEdgeT:I

.field private blacklist mEdgeT1:I

.field private blacklist mEdgeT2:I

.field private blacklist mEnableAccidentallyTouch:Z

.field private blacklist mEnableMultiSence:Z

.field private blacklist mEnableSingleSence:Z

.field private blacklist mExtraEvent:Landroid/view/MotionEvent;

.field private blacklist mIsEdgePkg:Z

.field private blacklist mIsMultiSence:Z

.field private blacklist mIsSingleSence:Z

.field private blacklist mIsWhiteApp:Z

.field private blacklist mLeftOffset:I

.field private blacklist mMultiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNeedExtraEvent:Z

.field private blacklist mPointLeftOffset:I

.field private blacklist mPointRightOffset:I

.field private blacklist mRightOffset:I

.field private blacklist mScrapPointerId:I

.field private blacklist mSingleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmallScreenMode:Z

.field private blacklist mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mXmlEdgeEnable:Ljava/lang/String;

.field private blacklist mXmlEdgeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mXmlEdgeT:Ljava/lang/String;

.field private blacklist mXmlEdgeT1:Ljava/lang/String;

.field private blacklist mXmlEdgeT2:Ljava/lang/String;

.field private blacklist mXmlEnable:Ljava/lang/String;

.field private blacklist mXmlLeftOffset:Ljava/lang/String;

.field private blacklist mXmlMultiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mXmlPointLeftOffset:Ljava/lang/String;

.field private blacklist mXmlPointRightOffset:Ljava/lang/String;

.field private blacklist mXmlRightOffset:Ljava/lang/String;

.field private blacklist mXmlSingleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mXmlWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetDEBUG(Lcom/oplus/util/OplusAccidentallyTouchUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccidentallyTouchLock(Lcom/oplus/util/OplusAccidentallyTouchUtils;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mAccidentallyTouchLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreadConfigFile(Lcom/oplus/util/OplusAccidentallyTouchUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->readConfigFile()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 68
    const-string v0, "debug.accidentally.touch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->PROPERTY_ENABLE:Z

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    .line 75
    sput-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchUtils:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mAccidentallyTouchFileObserver:Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;

    .line 72
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mAccidentallyTouchLock:Ljava/lang/Object;

    .line 87
    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeList:Ljava/util/List;

    .line 90
    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlSingleList:Ljava/util/List;

    .line 91
    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlMultiList:Ljava/util/List;

    .line 92
    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlWhiteList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelList:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelEnable:Z

    .line 100
    const-string v2, "7"

    iput-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelArea:Ljava/lang/String;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.tencent.mm"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDefaultList:Ljava/util/ArrayList;

    .line 397
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableAccidentallyTouch:Z

    .line 398
    const/4 v2, 0x5

    iput v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mLeftOffset:I

    .line 399
    iput v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mRightOffset:I

    .line 400
    const/16 v2, 0x50

    iput v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    .line 401
    iput v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointRightOffset:I

    .line 403
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeEnable:Z

    .line 404
    const/16 v2, 0xa

    iput v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT:I

    .line 405
    iput v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT1:I

    .line 406
    const/16 v2, 0x1e

    iput v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT2:I

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeList:Ljava/util/ArrayList;

    .line 408
    iput-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsEdgePkg:Z

    .line 410
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mSingleList:Ljava/util/ArrayList;

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mMultiList:Ljava/util/ArrayList;

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mWhiteList:Ljava/util/ArrayList;

    .line 414
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableSingleSence:Z

    .line 415
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableMultiSence:Z

    .line 416
    iput-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    .line 417
    iput-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    .line 418
    iput-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsWhiteApp:Z

    .line 420
    iput-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mSmallScreenMode:Z

    .line 421
    const/16 v0, 0x438

    iput v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDisplayWidth:I

    .line 108
    return-void
.end method

.method private blacklist changeModFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 159
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 169
    .local v2, "path":Ljava/nio/file/Path;
    invoke-static {v2, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v2    # "path":Ljava/nio/file/Path;
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAccidentallyTouch"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist getFirstIds(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 714
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 715
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    shl-int/2addr v0, v1

    return v0

    .line 717
    :cond_0
    return v0
.end method

.method public static whitelist getInstance()Lcom/oplus/util/OplusAccidentallyTouchUtils;
    .locals 1

    .line 111
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchUtils:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;

    invoke-direct {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchUtils:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    .line 114
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchUtils:Lcom/oplus/util/OplusAccidentallyTouchUtils;

    return-object v0
.end method

.method private blacklist initDir()V
    .locals 4

    .line 142
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/os/guardelf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/oplus/os/guardelf/sys_accidentally_touch_config_list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0, v2}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->changeModFile(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private blacklist initFileObserver()V
    .locals 2

    .line 346
    new-instance v0, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;

    const-string v1, "/data/oplus/os/guardelf/sys_accidentally_touch_config_list.xml"

    invoke-direct {v0, p0, v1}, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;-><init>(Lcom/oplus/util/OplusAccidentallyTouchUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mAccidentallyTouchFileObserver:Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;

    .line 347
    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchUtils$FileObserverPolicy;->startWatching()V

    .line 348
    return-void
.end method

.method private blacklist isInList(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
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

    .line 703
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    return v0

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    return v0

    .line 709
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist readConfigFile()V
    .locals 12

    .line 176
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/os/guardelf/sys_accidentally_touch_config_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlSingleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 181
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlMultiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 192
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 193
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 195
    const/4 v4, -0x1

    .line 197
    .local v4, "type":I
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    .line 198
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_21

    .line 199
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "tag":Ljava/lang/String;
    const-string v7, "o"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "att"

    const-string v9, "OplusAccidentallyTouch"

    if-eqz v7, :cond_3

    .line 201
    :try_start_1
    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "value":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 203
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "single-toush list : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    if-eqz v7, :cond_3

    .line 206
    iget-object v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlSingleList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    const-string v7, "p"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 210
    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 211
    .restart local v7    # "value":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 212
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multi-touch list : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_4
    if-eqz v7, :cond_5

    .line 215
    iget-object v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlMultiList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    const-string v7, "w"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 219
    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    .restart local v7    # "value":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v10, :cond_6

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "white list : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_6
    if-eqz v7, :cond_7

    .line 224
    iget-object v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlWhiteList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    const-string v7, "bezel_enable"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 228
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 229
    .restart local v7    # "value":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v10, :cond_8

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bezel enable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_8
    if-eqz v7, :cond_a

    .line 233
    const-string v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 234
    iput-boolean v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelEnable:Z

    goto :goto_0

    .line 236
    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelEnable:Z

    .line 240
    .end local v7    # "value":Ljava/lang/String;
    :cond_a
    :goto_0
    const-string v7, "bezel"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 241
    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .restart local v7    # "value":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v8, :cond_b

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bezel list : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_b
    if-eqz v7, :cond_c

    .line 246
    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v7    # "value":Ljava/lang/String;
    :cond_c
    const-string v7, "bezel_area"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 250
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelArea:Ljava/lang/String;

    .line 251
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_d

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bezel_area = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelArea:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_d
    const-string v7, "enable_accidentallytouch"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 256
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEnable:Ljava/lang/String;

    .line 257
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlEnable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEnable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_e
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEnable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setAccidentalltyTouchEnable(Ljava/lang/String;)V

    .line 262
    :cond_f
    const-string v7, "left_offset"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 263
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlLeftOffset:Ljava/lang/String;

    .line 264
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_10

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlLeftOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlLeftOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_10
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlLeftOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setLeftOffset(Ljava/lang/String;)V

    .line 269
    :cond_11
    const-string v7, "right_offset"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 270
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlRightOffset:Ljava/lang/String;

    .line 271
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_12

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlRightOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlRightOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_12
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlRightOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setRightOffset(Ljava/lang/String;)V

    .line 276
    :cond_13
    const-string v7, "point_left_offset"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 277
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlPointLeftOffset:Ljava/lang/String;

    .line 278
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_14

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlPointLeftOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlPointLeftOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_14
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlPointLeftOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setPointLeftOffset(Ljava/lang/String;)V

    .line 283
    :cond_15
    const-string v7, "point_right_offset"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 284
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlPointRightOffset:Ljava/lang/String;

    .line 285
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_16

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlPointRightOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlPointRightOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_16
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlPointRightOffset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setPointRightOffset(Ljava/lang/String;)V

    .line 291
    :cond_17
    const-string v7, "edge_enable"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 292
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeEnable:Ljava/lang/String;

    .line 293
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_18

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlEdgeEnable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeEnable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_18
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeEnable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setEdgeEnable(Ljava/lang/String;)V

    .line 298
    :cond_19
    const-string v7, "edge_pkg"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 299
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 300
    .restart local v7    # "value":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v8, :cond_1a

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edge list: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1a
    if-eqz v7, :cond_1b

    .line 304
    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v7    # "value":Ljava/lang/String;
    :cond_1b
    const-string v7, "edge_t"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 308
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT:Ljava/lang/String;

    .line 309
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_1c

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlEdgeT = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1c
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setEdgeT(Ljava/lang/String;)V

    .line 314
    :cond_1d
    const-string v7, "edge_t1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 315
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT1:Ljava/lang/String;

    .line 316
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_1e

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlEdgeT1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1e
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setEdgeT1(Ljava/lang/String;)V

    .line 321
    :cond_1f
    const-string v7, "edge_t2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 322
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT2:Ljava/lang/String;

    .line 323
    iget-boolean v7, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v7, :cond_20

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlEdgeT2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_20
    sget-object v7, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    iget-object v8, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeT2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusAccidentallyTouchData;->setEdgeT2(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .end local v5    # "tag":Ljava/lang/String;
    :cond_21
    if-ne v4, v6, :cond_1

    .line 336
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    nop

    .line 337
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    :cond_22
    :goto_1
    goto :goto_2

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 335
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 332
    :catch_1
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_22

    .line 337
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 343
    :goto_2
    return-void

    .line 336
    :goto_3
    if-eqz v1, :cond_23

    .line 337
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 339
    :catch_2
    move-exception v3

    .line 340
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :cond_23
    :goto_4
    nop

    .line 342
    :goto_5
    throw v2
.end method


# virtual methods
.method public whitelist getBezelArea()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelArea:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEdgeEnable()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeEnable:Z

    return v0
.end method

.method public whitelist getEdgeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getEdgeT()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT:I

    return v0
.end method

.method public whitelist getEdgeT1()I
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsEdgePkg:Z

    if-eqz v0, :cond_0

    .line 743
    iget v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT:I

    return v0

    .line 745
    :cond_0
    iget v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT1:I

    return v0
.end method

.method public whitelist getEdgeT2()I
    .locals 1

    .line 749
    iget v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT2:I

    return v0
.end method

.method public whitelist getExtraEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mNeedExtraEvent:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mExtraEvent:Landroid/view/MotionEvent;

    return-object v0

    .line 432
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mNeedExtraEvent:Z

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const-string v2, "original event: "

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "OplusAccidentallyTouch"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 545
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 546
    .local v1, "pointerIndex":I
    iget-boolean v4, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mScrapPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 547
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    .line 548
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accidentally touch scrap 2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    return-object v3

    .line 553
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    if-eqz v0, :cond_1c

    .line 554
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getFirstIds(Landroid/view/MotionEvent;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p1

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 560
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accidentally touch dispatch 2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 463
    .end local v1    # "pointerIndex":I
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 464
    .local v1, "actionX":I
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    .line 465
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    if-le v1, v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDisplayWidth:I

    iget v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointRightOffset:I

    sub-int v6, v3, v6

    if-lt v1, v6, :cond_5

    if-gt v1, v3, :cond_5

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v0

    .line 468
    .local v3, "inEdge":Z
    :goto_0
    iget-boolean v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inEdge:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", actionX:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", mDisplayWidth:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDisplayWidth:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", mPointLeftOffset:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", mPointRightOffset:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointRightOffset:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_6
    if-nez v3, :cond_7

    iget-boolean v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsWhiteApp:Z

    if-eqz v2, :cond_1c

    .line 477
    :cond_7
    iget-boolean v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableMultiSence:Z

    if-nez v2, :cond_8

    .line 478
    goto/16 :goto_3

    .line 480
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v4, :cond_9

    .line 481
    goto/16 :goto_3

    .line 483
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v2, :cond_a

    .line 484
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 485
    const-string v0, "the action index is 0, break"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 489
    :cond_a
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    .line 490
    iput-boolean v4, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_d

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mScrapPointerId:I

    .line 494
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 495
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 496
    iget-boolean v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accidentally touch add: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_b
    if-eqz p2, :cond_c

    .line 500
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    .line 502
    :cond_c
    iput-boolean v4, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mNeedExtraEvent:Z

    .line 503
    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mExtraEvent:Landroid/view/MotionEvent;

    .line 506
    .end local v0    # "cancel":Landroid/view/MotionEvent;
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getFirstIds(Landroid/view/MotionEvent;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 508
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accidentally touch dispatch 1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 515
    .end local v1    # "actionX":I
    .end local v3    # "inEdge":Z
    :pswitch_3
    iget-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    if-eqz v1, :cond_10

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 517
    .local v1, "moveX":I
    iget v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mLeftOffset:I

    if-lt v1, v2, :cond_e

    iget v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDisplayWidth:I

    iget v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mRightOffset:I

    sub-int/2addr v2, v6

    if-gt v1, v2, :cond_e

    move v2, v4

    goto :goto_1

    :cond_e
    move v2, v0

    .line 518
    .local v2, "notEdge":Z
    :goto_1
    if-eqz v2, :cond_f

    .line 519
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 522
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accidentally touch dispatch 3: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 526
    :cond_f
    return-object v3

    .line 530
    .end local v1    # "moveX":I
    .end local v2    # "notEdge":Z
    :cond_10
    :goto_2
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    if-eqz v0, :cond_1c

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_11

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->getFirstIds(Landroid/view/MotionEvent;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto/16 :goto_3

    .line 536
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 537
    .local v0, "moveIndex":I
    iget v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mScrapPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v1, v2, :cond_12

    .line 538
    return-object v3

    .line 540
    .end local v0    # "moveIndex":I
    :cond_12
    goto/16 :goto_3

    .line 567
    :pswitch_4
    iget-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    if-eqz v1, :cond_14

    .line 568
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    .line 569
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accidentally touch scrap 3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_13
    return-object v3

    .line 575
    :cond_14
    iget-boolean v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    if-eqz v1, :cond_1c

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 577
    .local v1, "upIndex":I
    iget v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mScrapPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-ne v2, v4, :cond_1c

    .line 578
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    .line 579
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accidentally touch scrap 4: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_15
    return-object v3

    .line 440
    .end local v1    # "upIndex":I
    :pswitch_5
    iget-object v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_16

    .line 441
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDisplayWidth:I

    .line 443
    :cond_16
    if-nez p2, :cond_17

    .line 444
    iput-boolean v4, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableSingleSence:Z

    .line 445
    iput-boolean v4, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableMultiSence:Z

    .line 448
    :cond_17
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    .line 449
    iput-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsMultiSence:Z

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 451
    .local v1, "downX":I
    iget v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mLeftOffset:I

    if-gt v1, v2, :cond_18

    if-gez v1, :cond_19

    :cond_18
    iget v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDisplayWidth:I

    iget v6, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mRightOffset:I

    sub-int v6, v2, v6

    if-lt v1, v6, :cond_1a

    if-gt v1, v2, :cond_1a

    :cond_19
    move v0, v4

    .line 453
    .local v0, "isInEdge":Z
    :cond_1a
    iget-boolean v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableSingleSence:Z

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1c

    .line 454
    iput-boolean v4, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsSingleSence:Z

    .line 455
    iget-boolean v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v2, :cond_1b

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accidentally touch scrap 1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1b
    return-object v3

    .line 587
    .end local v0    # "isInEdge":Z
    .end local v1    # "downX":I
    :cond_1c
    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getOriEdgeT1()I
    .locals 1

    .line 730
    iget v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT1:I

    return v0
.end method

.method public whitelist getTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;
    .locals 1

    .line 135
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/oplus/util/OplusAccidentallyTouchData;

    invoke-direct {v0}, Lcom/oplus/util/OplusAccidentallyTouchData;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    .line 138
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    return-object v0
.end method

.method public whitelist handlePointerEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/content/res/OplusBaseConfiguration;)Ljava/util/List;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mView"    # Landroid/view/View;
    .param p3, "mLastConfiguration"    # Landroid/content/res/OplusBaseConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/View;",
            "Landroid/content/res/OplusBaseConfiguration;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 603
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 604
    return-object v0
.end method

.method public whitelist init()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->initDir()V

    .line 119
    invoke-direct {p0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->initFileObserver()V

    .line 120
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/oplus/util/OplusAccidentallyTouchData;

    invoke-direct {v0}, Lcom/oplus/util/OplusAccidentallyTouchData;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    .line 123
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchData;->getSingleTouchList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlSingleList:Ljava/util/List;

    .line 124
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchData;->getMultiTouchList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlMultiList:Ljava/util/List;

    .line 125
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchData;->getTouchWhiteList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlWhiteList:Ljava/util/List;

    .line 127
    sget-object v0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mTouchData:Lcom/oplus/util/OplusAccidentallyTouchData;

    invoke-virtual {v0}, Lcom/oplus/util/OplusAccidentallyTouchData;->getEdgeList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mXmlEdgeList:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mAccidentallyTouchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->readConfigFile()V

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist initData(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .line 609
    move-object/from16 v1, p0

    const-string v2, "OplusAccidentallyTouch"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mContext:Landroid/content/Context;

    .line 610
    if-nez v0, :cond_0

    .line 611
    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 610
    :cond_0
    move-object/from16 v3, p1

    .line 613
    :goto_0
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    .line 614
    .local v0, "manager":Landroid/app/OplusActivityManager;
    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getAccidentallyTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;

    move-result-object v4

    .line 615
    .local v4, "data":Lcom/oplus/util/OplusAccidentallyTouchData;
    if-nez v4, :cond_1

    .line 616
    return-void

    .line 619
    :cond_1
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getSingleTouchList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mSingleList:Ljava/util/ArrayList;

    .line 620
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getMultiTouchList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mMultiList:Ljava/util/ArrayList;

    .line 621
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getTouchWhiteList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mWhiteList:Ljava/util/ArrayList;

    .line 623
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getLeftOffset()Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "leftOffset":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getRightOffset()Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "rightOffset":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getPointLeftOffset()Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, "pointLeftOffset":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getPointRightOffset()Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, "pointRightOffset":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getAccidentalltyTouchEnable()Ljava/lang/String;

    move-result-object v9

    .line 630
    .local v9, "enable":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getEdgeEnable()Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "edgeEnable":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getEdgeT()Ljava/lang/String;

    move-result-object v11

    .line 632
    .local v11, "edgeT":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getEdgeT1()Ljava/lang/String;

    move-result-object v12

    .line 633
    .local v12, "edgeT1":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getEdgeT2()Ljava/lang/String;

    move-result-object v13

    .line 634
    .local v13, "edgeT2":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/oplus/util/OplusAccidentallyTouchData;->getEdgeList()Ljava/util/ArrayList;

    move-result-object v14

    iput-object v14, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeList:Ljava/util/ArrayList;

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v14, v15}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->isInList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsEdgePkg:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    const-string v14, "true"

    const/4 v15, 0x1

    if-eqz v10, :cond_3

    .line 638
    :try_start_1
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 639
    iput-boolean v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeEnable:Z

    goto :goto_1

    .line 640
    :cond_2
    const-string v15, "false"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 641
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeEnable:Z

    .line 644
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    .line 645
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT:I

    .line 647
    :cond_4
    if-eqz v12, :cond_5

    .line 648
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT1:I

    .line 650
    :cond_5
    if-eqz v13, :cond_6

    .line 651
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEdgeT2:I

    .line 655
    :cond_6
    const/4 v15, 0x5

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mLeftOffset:I

    .line 656
    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mRightOffset:I

    .line 657
    const/16 v15, 0x50

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    .line 658
    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointRightOffset:I

    .line 659
    if-eqz v5, :cond_7

    .line 660
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mLeftOffset:I

    .line 662
    :cond_7
    if-eqz v6, :cond_8

    .line 663
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mRightOffset:I

    .line 665
    :cond_8
    if-eqz v7, :cond_9

    .line 666
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    .line 668
    :cond_9
    if-eqz v8, :cond_a

    .line 669
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointRightOffset:I

    .line 671
    :cond_a
    if-eqz v9, :cond_c

    .line 672
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 673
    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableAccidentallyTouch:Z

    const/4 v14, 0x0

    goto :goto_2

    .line 675
    :cond_b
    const/4 v15, 0x1

    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableAccidentallyTouch:Z

    goto :goto_2

    .line 671
    :cond_c
    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 678
    :goto_2
    iget-object v14, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mSingleList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v14, v15}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->isInList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    const/4 v15, 0x1

    goto :goto_3

    :cond_d
    const/4 v15, 0x0

    :goto_3
    iput-boolean v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableSingleSence:Z

    .line 679
    iget-object v14, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mMultiList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v14, v15}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->isInList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    const/4 v15, 0x1

    goto :goto_4

    :cond_e
    const/4 v15, 0x0

    :goto_4
    iput-boolean v15, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableMultiSence:Z

    .line 680
    iget-object v14, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v14, v15}, Lcom/oplus/util/OplusAccidentallyTouchUtils;->isInList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsWhiteApp:Z

    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 683
    .local v14, "dm":Landroid/util/DisplayMetrics;
    iget v15, v14, Landroid/util/DisplayMetrics;->density:F

    const/high16 v16, 0x40400000    # 3.0f

    div-float v15, v15, v16

    .line 684
    .local v15, "scale":F
    move-object/from16 v16, v0

    .end local v0    # "manager":Landroid/app/OplusActivityManager;
    .local v16, "manager":Landroid/app/OplusActivityManager;
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mDisplayWidth:I

    .line 685
    iget v0, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    int-to-float v0, v0

    mul-float/2addr v0, v15

    float-to-int v0, v0

    iput v0, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    .line 686
    iget v0, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointRightOffset:I

    int-to-float v0, v0

    mul-float/2addr v0, v15

    float-to-int v0, v0

    iput v0, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointRightOffset:I

    .line 688
    iget-boolean v0, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v14, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mEnableMulti:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mEnableMultiSence:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", pointLeftOffset:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mLeftOffset:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mLeftOffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mPointLeftOffset:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mPointLeftOffset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 697
    .end local v4    # "data":Lcom/oplus/util/OplusAccidentallyTouchData;
    .end local v5    # "leftOffset":Ljava/lang/String;
    .end local v6    # "rightOffset":Ljava/lang/String;
    .end local v7    # "pointLeftOffset":Ljava/lang/String;
    .end local v8    # "pointRightOffset":Ljava/lang/String;
    .end local v9    # "enable":Ljava/lang/String;
    .end local v10    # "edgeEnable":Ljava/lang/String;
    .end local v11    # "edgeT":Ljava/lang/String;
    .end local v12    # "edgeT1":Ljava/lang/String;
    .end local v13    # "edgeT2":Ljava/lang/String;
    .end local v14    # "dm":Landroid/util/DisplayMetrics;
    .end local v15    # "scale":F
    .end local v16    # "manager":Landroid/app/OplusActivityManager;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Error;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init data Error , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 695
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init data Exception , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 693
    :catch_2
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init data RemoteException , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_5
    nop

    .line 700
    :goto_6
    return-void
.end method

.method public whitelist isBezelEnable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "windowState"    # Ljava/lang/String;

    .line 374
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 378
    iget-object v2, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mBezelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    const/4 v1, 0x1

    return v1

    .line 377
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 375
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist isEdgePkg()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lcom/oplus/util/OplusAccidentallyTouchUtils;->mIsEdgePkg:Z

    return v0
.end method

.method public whitelist updatePointerEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/content/res/OplusBaseConfiguration;)Landroid/view/MotionEvent;
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mView"    # Landroid/view/View;
    .param p3, "mLastConfiguration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 593
    return-object p1
.end method
