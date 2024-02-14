.class public Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
.super Ljava/lang/Object;
.source "OplusZoomWindowRUSConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCornerRadius:F

.field private blacklist mCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDismissZoomWindowPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFolderScreenUnSupportPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForcedRelaunchCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForcedShowToastPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNotShowToastPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnlySupportPkgListSwitch:Z

.field private blacklist mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

.field private blacklist mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

.field private blacklist mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReplyPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShowToastSwitch:Z

.field private blacklist mSupportStartZoomOnNewTaskSwitch:Z

.field private blacklist mTabletScreenUnSupportPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnRelaunchCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnReusedCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnSupportCallerPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnSupportCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnSupportPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnusedZoomDisplayInfoPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVersion:I

.field private blacklist mVersionLimitPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVersionLimitReplyPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mZoomWindowSwitch:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 376
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig$1;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    .line 105
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mFolderScreenUnSupportPkgList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mTabletScreenUnSupportPkgList:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mDismissZoomWindowPkgList:Ljava/util/List;

    .line 344
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    .line 105
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mFolderScreenUnSupportPkgList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mTabletScreenUnSupportPkgList:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mDismissZoomWindowPkgList:Ljava/util/List;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    .line 365
    const-class v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    .line 366
    const-class v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    .line 367
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    const-class v1, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    .line 368
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 367
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    .line 369
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    const-class v1, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mFolderScreenUnSupportPkgList:Ljava/util/List;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mTabletScreenUnSupportPkgList:Ljava/util/List;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mDismissZoomWindowPkgList:Ljava/util/List;

    .line 374
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCornerRadius()F
    .locals 1

    .line 268
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    return v0
.end method

.method public whitelist getCpnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDismissZoomWindowPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mDismissZoomWindowPkgList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFolderScreenUnSupportPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mFolderScreenUnSupportPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getForcedRelaunchCpnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getForcedShowToastPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNotShowToastPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getOnlySupportPkgListSwitch()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    return v0
.end method

.method public whitelist getOplusZoomWindowRegion()Lcom/oplus/zoomwindow/OplusZoomWindowRegion;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    return-object v0
.end method

.method public whitelist getOplusZoomWindowSize()Lcom/oplus/zoomwindow/OplusZoomWindowSize;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    return-object v0
.end method

.method public whitelist getPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getReplyPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getShowToastSwitch()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    return v0
.end method

.method public blacklist getTabletScreenUnSupportPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mTabletScreenUnSupportPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnRelaunchCpnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnReusedCpnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnSupportCallerPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnSupportCpnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnSupportPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnusedZoomDisplayInfoPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    return v0
.end method

.method public whitelist getVersionLimitPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getVersionLimitReplyPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getZoomWindowSwitch()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    return v0
.end method

.method public whitelist isSupportStartZoomOnNewTaskSwitch()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    return v0
.end method

.method public whitelist setCornerRadius(F)V
    .locals 0
    .param p1, "cornerRadius"    # F

    .line 272
    iput p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    .line 273
    return-void
.end method

.method public whitelist setCpnList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "cpnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    .line 233
    return-void
.end method

.method public whitelist setDismissZoomWindowPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p1, "dismissZoomWindowPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mDismissZoomWindowPkgList:Ljava/util/List;

    .line 341
    return-void
.end method

.method public blacklist setFolderScreenUnSupportPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p1, "folderScreenUnSupportPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mFolderScreenUnSupportPkgList:Ljava/util/List;

    .line 319
    return-void
.end method

.method public whitelist setForcedRelaunchCpnList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "forcedRelaunchCpnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    .line 265
    return-void
.end method

.method public whitelist setForcedShowToastPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "forcedShowToastPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    .line 209
    return-void
.end method

.method public whitelist setNotShowToastPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "notShowToastPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    .line 217
    return-void
.end method

.method public whitelist setOnlySupportPkgListSwitch(Z)V
    .locals 0
    .param p1, "onlySupportPkgListSwitch"    # Z

    .line 160
    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    .line 161
    return-void
.end method

.method public whitelist setOplusZoomWindowRegion(Lcom/oplus/zoomwindow/OplusZoomWindowRegion;)V
    .locals 0
    .param p1, "oplusZoomWindowRegion"    # Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    .line 288
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    .line 289
    return-void
.end method

.method public whitelist setOplusZoomWindowSize(Lcom/oplus/zoomwindow/OplusZoomWindowSize;)V
    .locals 0
    .param p1, "oplusZoomWindowSize"    # Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    .line 280
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    .line 281
    return-void
.end method

.method public whitelist setPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    .line 177
    return-void
.end method

.method public whitelist setReplyPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "replyPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    .line 185
    return-void
.end method

.method public whitelist setShowToastSwitch(Z)V
    .locals 0
    .param p1, "showToastSwitch"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    .line 153
    return-void
.end method

.method public whitelist setSupportStartZoomOnNewTaskSwitch(Z)V
    .locals 0
    .param p1, "mSupportStartZoomOnNewTaskSwitch"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    .line 169
    return-void
.end method

.method public blacklist setTabletScreenUnSupportPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "tabletScreenUnSupportPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mTabletScreenUnSupportPkgList:Ljava/util/List;

    .line 333
    return-void
.end method

.method public whitelist setUnRelaunchCpnList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p1, "unRelaunchCpnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    .line 257
    return-void
.end method

.method public whitelist setUnReusedCpnList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p1, "unReusedCpnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    .line 249
    return-void
.end method

.method public whitelist setUnSupportCallerPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "unSupportCallerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    .line 201
    return-void
.end method

.method public whitelist setUnSupportCpnList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "unSupportCpnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    .line 241
    return-void
.end method

.method public whitelist setUnSupportPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "unSupportPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    .line 193
    return-void
.end method

.method public whitelist setUnusedZoomDisplayInfoPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "unusedZoomDisplayInfoPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    .line 225
    return-void
.end method

.method public whitelist setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 136
    iput p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    .line 137
    return-void
.end method

.method public whitelist setVersionLimitPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "versionLimitPkgList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    .line 297
    return-void
.end method

.method public whitelist setVersionLimitReplyPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p1, "versionLimitReplyPkgList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;>;"
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    .line 305
    return-void
.end method

.method public whitelist setZoomWindowSwitch(Z)V
    .locals 0
    .param p1, "zoomWindowSwitch"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    .line 145
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "OplusZoomWindowRUSConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nZoomWindowSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nShowToastSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nOnlySupportPkgListSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nReplyPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnSupportPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnSupportCallerPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmSupportStartZoomOnNewTaskSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nForcedShowToastPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNotShowToastPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnusedZoomDisplayInfoPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnSupportCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnReusedCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnRelaunchCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nForcedRelaunchCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nZoom Window size =  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-virtual {v2}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nRegion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-virtual {v2}, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nVersionLimitPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nVersionLimitReplyPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nFolderScreenUnSupportPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mFolderScreenUnSupportPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nTabletScreenUnSupportPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mTabletScreenUnSupportPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nDismissZoomWindowPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mDismissZoomWindowPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 396
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 398
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 399
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 400
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 401
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 402
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 404
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 405
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 406
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 407
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 408
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 409
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 410
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 412
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 413
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 414
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 415
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 416
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 417
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 418
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mFolderScreenUnSupportPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 419
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mTabletScreenUnSupportPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 420
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mDismissZoomWindowPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 421
    return-void
.end method
