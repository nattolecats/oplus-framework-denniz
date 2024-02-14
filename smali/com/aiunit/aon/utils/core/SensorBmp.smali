.class public Lcom/aiunit/aon/utils/core/SensorBmp;
.super Ljava/lang/Object;
.source "SensorBmp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aiunit/aon/utils/core/SensorBmp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSensorResults:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/aiunit/aon/utils/core/SensorBmp$1;

    invoke-direct {v0}, Lcom/aiunit/aon/utils/core/SensorBmp$1;-><init>()V

    sput-object v0, Lcom/aiunit/aon/utils/core/SensorBmp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mSensorResults:[Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/aiunit/aon/utils/core/SensorBmp;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "sensorResults"    # [Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mSensorResults:[Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getSensorResults()[Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mSensorResults:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mSensorResults:[Ljava/lang/String;

    .line 135
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 155
    iput-object p1, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    return-void
.end method

.method public whitelist setSensorResults([Ljava/lang/String;)V
    .locals 0
    .param p1, "sensorResults"    # [Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mSensorResults:[Ljava/lang/String;

    .line 176
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 123
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mSensorResults:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/aiunit/aon/utils/core/SensorBmp;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    return-void
.end method
