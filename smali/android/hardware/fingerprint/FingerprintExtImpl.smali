.class public Landroid/hardware/fingerprint/FingerprintExtImpl;
.super Ljava/lang/Object;
.source "FingerprintExtImpl.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintExt;


# instance fields
.field private blacklist mBase:Landroid/hardware/fingerprint/Fingerprint;

.field public blacklist mBiometricId:I

.field public blacklist mFingerFlags:I

.field public blacklist mGroupId:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintExtImpl;->mFingerFlags:I

    .line 37
    move-object v0, p1

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintExtImpl;->mBase:Landroid/hardware/fingerprint/Fingerprint;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist getFingerFlags()I
    .locals 1

    .line 57
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintExtImpl;->mFingerFlags:I

    return v0
.end method

.method public blacklist init(I)V
    .locals 0
    .param p1, "groupId"    # I

    .line 41
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintExtImpl;->mGroupId:I

    .line 42
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintExtImpl;->mFingerFlags:I

    .line 46
    return-void
.end method

.method public blacklist setFingerFlags(I)V
    .locals 0
    .param p1, "fingerFlags"    # I

    .line 53
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintExtImpl;->mFingerFlags:I

    .line 54
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintExtImpl;->mFingerFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
