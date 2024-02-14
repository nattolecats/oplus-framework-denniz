.class Landroid/os/RichTapVibrationEffect$Envelope$1;
.super Ljava/lang/Object;
.source "RichTapVibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RichTapVibrationEffect$Envelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/RichTapVibrationEffect$Envelope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/RichTapVibrationEffect$Envelope;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 395
    new-instance v0, Landroid/os/RichTapVibrationEffect$Envelope;

    invoke-direct {v0, p1}, Landroid/os/RichTapVibrationEffect$Envelope;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$Envelope$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/RichTapVibrationEffect$Envelope;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/RichTapVibrationEffect$Envelope;
    .locals 1
    .param p1, "size"    # I

    .line 399
    new-array v0, p1, [Landroid/os/RichTapVibrationEffect$Envelope;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$Envelope$1;->newArray(I)[Landroid/os/RichTapVibrationEffect$Envelope;

    move-result-object p1

    return-object p1
.end method
