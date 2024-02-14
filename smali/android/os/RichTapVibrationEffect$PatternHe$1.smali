.class Landroid/os/RichTapVibrationEffect$PatternHe$1;
.super Ljava/lang/Object;
.source "RichTapVibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RichTapVibrationEffect$PatternHe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/RichTapVibrationEffect$PatternHe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/RichTapVibrationEffect$PatternHe;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 746
    new-instance v0, Landroid/os/RichTapVibrationEffect$PatternHe;

    invoke-direct {v0, p1}, Landroid/os/RichTapVibrationEffect$PatternHe;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 741
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$PatternHe$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/RichTapVibrationEffect$PatternHe;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/RichTapVibrationEffect$PatternHe;
    .locals 1
    .param p1, "size"    # I

    .line 750
    new-array v0, p1, [Landroid/os/RichTapVibrationEffect$PatternHe;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 741
    invoke-virtual {p0, p1}, Landroid/os/RichTapVibrationEffect$PatternHe$1;->newArray(I)[Landroid/os/RichTapVibrationEffect$PatternHe;

    move-result-object p1

    return-object p1
.end method
