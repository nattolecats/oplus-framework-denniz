.class public final Lcom/oplus/util/OplusFontVariationAdaptionData;
.super Ljava/lang/Object;
.source "OplusFontVariationAdaptionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusFontVariationAdaptionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEnable:Ljava/lang/String;

.field private blacklist mList1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/oplus/util/OplusFontVariationAdaptionData$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusFontVariationAdaptionData$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusFontVariationAdaptionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList1:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList2:Ljava/util/ArrayList;

    .line 53
    const-string v0, "true"

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mEnable:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList1:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList2:Ljava/util/ArrayList;

    .line 53
    const-string v0, "true"

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mEnable:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusFontVariationAdaptionData;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList1:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getEnable()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mEnable:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWghtValueList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList2:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mEnable:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList1:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList2:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public blacklist setEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mEnable:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mEnable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList1:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/oplus/util/OplusFontVariationAdaptionData;->mList2:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 78
    return-void
.end method
