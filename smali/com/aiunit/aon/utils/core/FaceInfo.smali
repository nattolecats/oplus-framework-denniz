.class public Lcom/aiunit/aon/utils/core/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aiunit/aon/utils/core/FaceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExtra:Landroid/os/Bundle;

.field private blacklist mHeight:I

.field private blacklist mPitch:F

.field private blacklist mRoll:F

.field private blacklist mWidth:I

.field private blacklist mYaw:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/aiunit/aon/utils/core/FaceInfo$1;

    invoke-direct {v0}, Lcom/aiunit/aon/utils/core/FaceInfo$1;-><init>()V

    sput-object v0, Lcom/aiunit/aon/utils/core/FaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    .line 23
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    .line 25
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    .line 26
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(IIFFF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "yaw"    # F
    .param p4, "pitch"    # F
    .param p5, "roll"    # F

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    .line 23
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    .line 25
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    .line 26
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    .line 30
    iput p1, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    .line 31
    iput p2, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    .line 32
    iput p3, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    .line 33
    iput p4, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    .line 34
    iput p5, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(IIFFFLandroid/os/Bundle;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "yaw"    # F
    .param p4, "pitch"    # F
    .param p5, "roll"    # F
    .param p6, "extraData"    # Landroid/os/Bundle;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    .line 23
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    .line 25
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    .line 26
    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    .line 43
    iput p1, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    .line 44
    iput p2, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    .line 45
    iput p3, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    .line 46
    iput p4, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    .line 47
    iput p5, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    .line 48
    iput-object p6, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist addExtraFloatData(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 152
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 156
    return-void
.end method

.method public blacklist addExtraIntData(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 164
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    return-void
.end method

.method public blacklist addExtraStringData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getmHeight()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    return v0
.end method

.method public whitelist getmPitch()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    return v0
.end method

.method public whitelist getmRoll()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    return v0
.end method

.method public whitelist getmWidth()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    return v0
.end method

.method public whitelist getmYaw()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    .line 83
    return-void
.end method

.method public whitelist setmHeight(I)V
    .locals 0
    .param p1, "mHeight"    # I

    .line 98
    iput p1, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    .line 99
    return-void
.end method

.method public whitelist setmPitch(F)V
    .locals 0
    .param p1, "mPitch"    # F

    .line 114
    iput p1, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    .line 115
    return-void
.end method

.method public whitelist setmRoll(F)V
    .locals 0
    .param p1, "mRoll"    # F

    .line 122
    iput p1, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    .line 123
    return-void
.end method

.method public whitelist setmWidth(I)V
    .locals 0
    .param p1, "mWidth"    # I

    .line 90
    iput p1, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    .line 91
    return-void
.end method

.method public whitelist setmYaw(F)V
    .locals 0
    .param p1, "mYaw"    # F

    .line 106
    iput p1, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    .line 107
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 67
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mYaw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 70
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mPitch:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    iget v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mRoll:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/FaceInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
