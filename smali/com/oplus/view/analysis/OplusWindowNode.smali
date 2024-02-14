.class public final Lcom/oplus/view/analysis/OplusWindowNode;
.super Ljava/lang/Object;
.source "OplusWindowNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mClassName:Ljava/lang/String;

.field private final blacklist mCoverRect:Landroid/graphics/Rect;

.field private final blacklist mDecorRect:Landroid/graphics/Rect;

.field private blacklist mIsNavigationBar:Z

.field private blacklist mIsStatusBar:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mSurfaceLayer:I

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTimeSpend:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/oplus/view/analysis/OplusWindowNode$1;

    invoke-direct {v0}, Lcom/oplus/view/analysis/OplusWindowNode$1;-><init>()V

    sput-object v0, Lcom/oplus/view/analysis/OplusWindowNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mTempRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mDecorRect:Landroid/graphics/Rect;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mTimeSpend:J

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mSurfaceLayer:I

    .line 66
    iput-boolean v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    .line 67
    iput-boolean v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    .line 96
    invoke-virtual {p0, p1}, Lcom/oplus/view/analysis/OplusWindowNode;->readFromParcel(Landroid/os/Parcel;)V

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;ZZ)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isStatusBar"    # Z
    .param p3, "isNavigationBar"    # Z

    .line 72
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mTempRect:Landroid/graphics/Rect;

    .line 60
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    .line 61
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mDecorRect:Landroid/graphics/Rect;

    .line 62
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    .line 63
    iput-object v3, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    .line 64
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mTimeSpend:J

    .line 65
    const/4 v3, 0x0

    iput v3, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mSurfaceLayer:I

    .line 66
    iput-boolean v3, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    .line 67
    iput-boolean v3, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 74
    .local v3, "timeStart":J
    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 75
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v10, "coverContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    new-instance v6, Landroid/view/OplusLongshotViewUtils;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/view/OplusLongshotViewUtils;-><init>(Landroid/content/Context;)V

    .line 78
    .local v6, "utils":Landroid/view/OplusLongshotViewUtils;
    const/4 v7, 0x1

    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v6 .. v14}, Landroid/view/OplusLongshotViewUtils;->findCoverRect(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/graphics/Rect;Landroid/view/OplusLongshotViewContent;Z)V

    .line 79
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/OplusLongshotViewContent;

    .line 80
    .local v7, "coverContent":Landroid/view/OplusLongshotViewContent;
    invoke-virtual {v7}, Landroid/view/OplusLongshotViewContent;->getView()Landroid/view/View;

    move-result-object v8

    .line 81
    .local v8, "coverView":Landroid/view/View;
    iget-object v9, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 82
    iget-object v9, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 83
    .end local v7    # "coverContent":Landroid/view/OplusLongshotViewContent;
    .end local v8    # "coverView":Landroid/view/View;
    goto :goto_0

    .line 85
    .end local v6    # "utils":Landroid/view/OplusLongshotViewUtils;
    .end local v10    # "coverContents":Ljava/util/List;, "Ljava/util/List<Landroid/view/OplusLongshotViewContent;>;"
    :cond_0
    iget-object v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    .line 89
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iput-wide v5, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mTimeSpend:J

    .line 91
    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    .line 92
    move/from16 v5, p3

    iput-boolean v5, v0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    .line 93
    return-void
.end method

.method private blacklist readString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "s"    # Ljava/lang/String;

    .line 212
    if-eqz p2, :cond_0

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCoverRect()Landroid/graphics/Rect;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getDecorRect()Landroid/graphics/Rect;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mDecorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSurfaceLayer()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mSurfaceLayer:I

    return v0
.end method

.method public whitelist isNavigationBar()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    return v0
.end method

.method public whitelist isStatusBar()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/oplus/view/analysis/OplusWindowNode;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/oplus/view/analysis/OplusWindowNode;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mTimeSpend:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mSurfaceLayer:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v2, v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    .line 166
    return-void
.end method

.method public whitelist setNavigationBar(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 205
    iput-boolean p1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    .line 206
    return-void
.end method

.method public whitelist setStatusBar(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    .line 198
    return-void
.end method

.method public whitelist setSurfaceLayer(I)V
    .locals 0
    .param p1, "surfaceLayer"    # I

    .line 189
    iput p1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mSurfaceLayer:I

    .line 190
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Window["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "StatusBar]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "NavigationBar]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    const-string v2, ":"

    if-eqz v1, :cond_2

    .line 112
    const-string v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 117
    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_3
    const-string v1, "decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ":spend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-wide v1, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mTimeSpend:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mCoverRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/analysis/OplusWindowNode;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mClassName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/analysis/OplusWindowNode;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 142
    iget-wide v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mTimeSpend:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsStatusBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean v0, p0, Lcom/oplus/view/analysis/OplusWindowNode;->mIsNavigationBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
