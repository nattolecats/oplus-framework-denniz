.class Landroid/telephony/CyberSenseCellBeamInfo$1;
.super Ljava/lang/Object;
.source "CyberSenseCellBeamInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CyberSenseCellBeamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CyberSenseCellBeamInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CyberSenseCellBeamInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    new-instance v0, Landroid/telephony/CyberSenseCellBeamInfo;

    invoke-direct {v0, p1}, Landroid/telephony/CyberSenseCellBeamInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Landroid/telephony/CyberSenseCellBeamInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CyberSenseCellBeamInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CyberSenseCellBeamInfo;
    .locals 1
    .param p1, "size"    # I

    .line 128
    new-array v0, p1, [Landroid/telephony/CyberSenseCellBeamInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Landroid/telephony/CyberSenseCellBeamInfo$1;->newArray(I)[Landroid/telephony/CyberSenseCellBeamInfo;

    move-result-object p1

    return-object p1
.end method
