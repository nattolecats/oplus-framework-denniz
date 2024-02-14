.class public Lcom/oplus/app/OplusScreenShotResult;
.super Ljava/lang/Object;
.source "OplusScreenShotResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/app/OplusScreenShotResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist mColorSpaceNamed:I

.field public whitelist mContainsSecureLayers:Z

.field public whitelist mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/oplus/app/OplusScreenShotResult$1;

    invoke-direct {v0}, Lcom/oplus/app/OplusScreenShotResult$1;-><init>()V

    sput-object v0, Lcom/oplus/app/OplusScreenShotResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "bufferFlag":I
    if-lez v0, :cond_0

    .line 107
    sget-object v1, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    iput-object v1, p0, Lcom/oplus/app/OplusScreenShotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/app/OplusScreenShotResult;->mContainsSecureLayers:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/app/OplusScreenShotResult;->mColorSpaceNamed:I

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/oplus/app/OplusScreenShotResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/app/OplusScreenShotResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/app/OplusScreenShotResult;)V
    .locals 1
    .param p1, "options"    # Lcom/oplus/app/OplusScreenShotResult;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v0, p1, Lcom/oplus/app/OplusScreenShotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/oplus/app/OplusScreenShotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 100
    iget v0, p1, Lcom/oplus/app/OplusScreenShotResult;->mColorSpaceNamed:I

    iput v0, p0, Lcom/oplus/app/OplusScreenShotResult;->mColorSpaceNamed:I

    .line 101
    iget-boolean v0, p1, Lcom/oplus/app/OplusScreenShotResult;->mContainsSecureLayers:Z

    iput-boolean v0, p0, Lcom/oplus/app/OplusScreenShotResult;->mContainsSecureLayers:Z

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-object v0, p0, Lcom/oplus/app/OplusScreenShotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/oplus/app/OplusScreenShotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/app/OplusScreenShotResult;->mContainsSecureLayers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    iget v0, p0, Lcom/oplus/app/OplusScreenShotResult;->mColorSpaceNamed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method
