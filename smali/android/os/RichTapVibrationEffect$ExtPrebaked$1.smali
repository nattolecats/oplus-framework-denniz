.class Landroid/os/RichTapVibrationEffect$ExtPrebaked$1;
.super Ljava/lang/Object;
.source "RichTapVibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RichTapVibrationEffect$ExtPrebaked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/RichTapVibrationEffect$ExtPrebaked;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/RichTapVibrationEffect$ExtPrebaked;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 257
    new-instance v0, Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    invoke-direct {v0, p1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/RichTapVibrationEffect$ExtPrebaked;
    .locals 1
    .param p1, "size"    # I

    .line 261
    new-array v0, p1, [Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$ExtPrebaked$1;->newArray(I)[Landroid/os/RichTapVibrationEffect$ExtPrebaked;

    move-result-object p1

    return-object p1
.end method
