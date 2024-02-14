.class Landroid/telephony/CyberSenseCellInfo$1;
.super Ljava/lang/Object;
.source "CyberSenseCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CyberSenseCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CyberSenseCellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CyberSenseCellInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 283
    invoke-static {p1}, Landroid/telephony/CyberSenseCellInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CyberSenseCellInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Landroid/telephony/CyberSenseCellInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CyberSenseCellInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CyberSenseCellInfo;
    .locals 1
    .param p1, "size"    # I

    .line 288
    new-array v0, p1, [Landroid/telephony/CyberSenseCellInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Landroid/telephony/CyberSenseCellInfo$1;->newArray(I)[Landroid/telephony/CyberSenseCellInfo;

    move-result-object p1

    return-object p1
.end method
