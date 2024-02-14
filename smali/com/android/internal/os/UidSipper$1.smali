.class Lcom/android/internal/os/UidSipper$1;
.super Ljava/lang/Object;
.source "UidSipper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidSipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/UidSipper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/UidSipper;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    new-instance v0, Lcom/android/internal/os/UidSipper;

    invoke-direct {v0, p1}, Lcom/android/internal/os/UidSipper;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/os/UidSipper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/UidSipper;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/os/UidSipper;
    .locals 1
    .param p1, "size"    # I

    .line 138
    new-array v0, p1, [Lcom/android/internal/os/UidSipper;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/os/UidSipper$1;->newArray(I)[Lcom/android/internal/os/UidSipper;

    move-result-object p1

    return-object p1
.end method
