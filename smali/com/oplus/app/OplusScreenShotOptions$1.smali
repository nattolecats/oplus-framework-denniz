.class Lcom/oplus/app/OplusScreenShotOptions$1;
.super Ljava/lang/Object;
.source "OplusScreenShotOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/OplusScreenShotOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/app/OplusScreenShotOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/app/OplusScreenShotOptions;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Lcom/oplus/app/OplusScreenShotOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/app/OplusScreenShotOptions;-><init>(Landroid/os/Parcel;Lcom/oplus/app/OplusScreenShotOptions-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/oplus/app/OplusScreenShotOptions$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/app/OplusScreenShotOptions;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/app/OplusScreenShotOptions;
    .locals 1
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Lcom/oplus/app/OplusScreenShotOptions;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/oplus/app/OplusScreenShotOptions$1;->newArray(I)[Lcom/oplus/app/OplusScreenShotOptions;

    move-result-object p1

    return-object p1
.end method
