.class public final Lcom/oplus/util/OplusAccidentallyTouchData;
.super Ljava/lang/Object;
.source "OplusAccidentallyTouchData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusAccidentallyTouchData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusAccidentallyTouchData"


# instance fields
.field private blacklist mEdgeEnable:Ljava/lang/String;

.field private blacklist mEdgeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEdgeT:Ljava/lang/String;

.field private blacklist mEdgeT1:Ljava/lang/String;

.field private blacklist mEdgeT2:Ljava/lang/String;

.field private blacklist mIsEnable:Ljava/lang/String;

.field private blacklist mLeftOffset:Ljava/lang/String;

.field private blacklist mMultiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPointLeftOffset:Ljava/lang/String;

.field private blacklist mPointRightOffset:Ljava/lang/String;

.field private blacklist mRightOffset:Ljava/lang/String;

.field private blacklist mSingleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWhiteList:Ljava/util/ArrayList;
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
    new-instance v0, Lcom/oplus/util/OplusAccidentallyTouchData$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusAccidentallyTouchData$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusAccidentallyTouchData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mSingleList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mMultiList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mWhiteList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeList:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mSingleList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mMultiList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mWhiteList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusAccidentallyTouchData;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccidentalltyTouchEnable()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mIsEnable:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEdgeEnable()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeEnable:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEdgeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getEdgeT()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEdgeT1()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT1:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEdgeT2()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT2:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLeftOffset()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mLeftOffset:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMultiTouchList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mMultiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getPointLeftOffset()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointLeftOffset:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPointRightOffset()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointRightOffset:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRightOffset()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mRightOffset:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSingleTouchList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mSingleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getTouchWhiteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeEnable:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT1:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT2:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mIsEnable:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mLeftOffset:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mRightOffset:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointLeftOffset:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointRightOffset:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mSingleList:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mMultiList:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mWhiteList:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeList:Ljava/util/ArrayList;

    .line 136
    return-void
.end method

.method public blacklist setAccidentalltyTouchEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mIsEnable:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public blacklist setEdgeEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeEnable:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public blacklist setEdgeT(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public blacklist setEdgeT1(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT1:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public blacklist setEdgeT2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT2:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public blacklist setLeftOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mLeftOffset:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public blacklist setPointLeftOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointLeftOffset:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public blacklist setPointRightOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointRightOffset:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public blacklist setRightOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mRightOffset:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeEnable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeT2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mIsEnable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mLeftOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mRightOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointLeftOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mPointRightOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mSingleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mMultiList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcom/oplus/util/OplusAccidentallyTouchData;->mEdgeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 107
    return-void
.end method
