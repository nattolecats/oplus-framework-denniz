.class Lcom/oplus/screenshot/OplusScrollCaptureResponse$1;
.super Ljava/lang/Object;
.source "OplusScrollCaptureResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusScrollCaptureResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/screenshot/OplusScrollCaptureResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/screenshot/OplusScrollCaptureResponse;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 186
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;

    invoke-direct {v0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/screenshot/OplusScrollCaptureResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/screenshot/OplusScrollCaptureResponse;
    .locals 1
    .param p1, "size"    # I

    .line 191
    new-array v0, p1, [Lcom/oplus/screenshot/OplusScrollCaptureResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureResponse$1;->newArray(I)[Lcom/oplus/screenshot/OplusScrollCaptureResponse;

    move-result-object p1

    return-object p1
.end method
