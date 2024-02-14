.class public Lcom/oplus/multiapp/OplusMultiAppConfig;
.super Ljava/lang/Object;
.source "OplusMultiAppConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CHOOSE_TYPE_NONE:I = -0x1

.field public static final whitelist CHOOSE_TYPE_RECENT_TASK:I = 0x0

.field public static final whitelist CHOOSE_TYPE_SKIP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/multiapp/OplusMultiAppConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAndroidVersionName:Ljava/lang/String;

.field private blacklist mAndroidVersionNumber:I

.field private blacklist mChooseRecentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChooseSkipMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mCrossAuthorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mMaxCreatedNum:I

.field private blacklist mOpAllowedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRelatedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVersionName:Ljava/lang/String;

.field private blacklist mVersionNum:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/oplus/multiapp/OplusMultiAppConfig$1;

    invoke-direct {v0}, Lcom/oplus/multiapp/OplusMultiAppConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/multiapp/OplusMultiAppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "error"

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionName:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionNum:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionName:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionNumber:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mMaxCreatedNum:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mRelatedPkgList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAllowedPkgList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mCrossAuthorityList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseRecentList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mOpAllowedPkgList:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    .line 148
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "error"

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionName:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionNum:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionName:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionNumber:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mMaxCreatedNum:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mRelatedPkgList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAllowedPkgList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mCrossAuthorityList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseRecentList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mOpAllowedPkgList:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionNum:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mMaxCreatedNum:I

    .line 154
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAllowedPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mRelatedPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 156
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseRecentList:Ljava/util/List;

    .line 157
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 158
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mCrossAuthorityList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 159
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllowedPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAllowedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAndroidVersionName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAndroidVersionNumber()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionNumber:I

    return v0
.end method

.method public whitelist getChooseRecentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseRecentList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getChooseSkipMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getCrossAuthorityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mCrossAuthorityList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMaxCreatedNum()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mMaxCreatedNum:I

    return v0
.end method

.method public whitelist getOpAllowedPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mOpAllowedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRelatedPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mRelatedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getVersionName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionNum()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionNum:I

    return v0
.end method

.method public whitelist setAllowedPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "allowedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAllowedPkgList:Ljava/util/List;

    .line 121
    return-void
.end method

.method public whitelist setAndroidVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidVersionName"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public whitelist setAndroidVersionNumber(I)V
    .locals 0
    .param p1, "androidVersionNumber"    # I

    .line 86
    iput p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAndroidVersionNumber:I

    .line 87
    return-void
.end method

.method public whitelist setChooseRecentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "chooseRecentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseRecentList:Ljava/util/List;

    .line 129
    return-void
.end method

.method public whitelist setChooseSkipMap(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 136
    .local p1, "filter":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/ComponentName;>;>;"
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    .line 137
    return-void
.end method

.method public whitelist setCrossAuthorityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "crossAuthorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mCrossAuthorityList:Ljava/util/List;

    .line 145
    return-void
.end method

.method public whitelist setMaxCreatedNum(I)V
    .locals 0
    .param p1, "mMaxCreatedNum"    # I

    .line 95
    iput p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mMaxCreatedNum:I

    .line 96
    return-void
.end method

.method public whitelist setOpAllowedPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "opAllowedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mOpAllowedPkgList:Ljava/util/List;

    .line 116
    return-void
.end method

.method public whitelist setRelatedPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "relatedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mRelatedPkgList:Ljava/util/List;

    .line 104
    return-void
.end method

.method public whitelist setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public whitelist setVersionNum(I)V
    .locals 0
    .param p1, "versionNum"    # I

    .line 68
    iput p1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionNum:I

    .line 69
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MultiAppConfig[versionName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionName:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string v2, " num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionNum:I

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "maxCreateNum["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mMaxCreatedNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "Allowed[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAllowedPkgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "Related[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mRelatedPkgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "Filter[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, " RecentTask(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseRecentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 213
    .local v3, "name":Landroid/content/ComponentName;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .end local v3    # "name":Landroid/content/ComponentName;
    goto :goto_2

    .line 215
    :cond_2
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, " ChooseSkip[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 219
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->[\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v5, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 221
    .local v5, "componentNameList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_4

    .line 222
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 223
    .local v7, "com":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .end local v7    # "com":Landroid/content/ComponentName;
    goto :goto_4

    :cond_3
    goto :goto_5

    .line 226
    :cond_4
    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :goto_5
    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "componentNameList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_3

    .line 230
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, "CrossAuthority[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mCrossAuthorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_6

    .line 235
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mVersionNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mMaxCreatedNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mAllowedPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mRelatedPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 186
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseRecentList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 187
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mChooseSkipMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 188
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppConfig;->mCrossAuthorityList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 189
    return-void
.end method
