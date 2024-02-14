.class public final Landroid/hardware/fingerprint/OplusFingerprint;
.super Ljava/lang/Object;
.source "OplusFingerprint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/OplusFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_NAME:Ljava/lang/String; = "NULL"


# instance fields
.field private blacklist mBiometricId:I

.field private blacklist mDeviceId:J

.field private blacklist mFingerFlags:I

.field private blacklist mGroupId:I

.field private blacklist mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Landroid/hardware/fingerprint/OplusFingerprint$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/OplusFingerprint$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/OplusFingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mFingerFlags:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mName:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mBiometricId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mDeviceId:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mGroupId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mFingerFlags:I

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/fingerprint/OplusFingerprint-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/OplusFingerprint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IIJI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "fingerId"    # I
    .param p4, "deviceId"    # J
    .param p6, "fingerFlags"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mFingerFlags:I

    .line 52
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mName:Ljava/lang/CharSequence;

    .line 53
    iput p3, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mBiometricId:I

    .line 54
    iput-wide p4, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mDeviceId:J

    .line 55
    iput p2, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mGroupId:I

    .line 56
    iput p6, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mFingerFlags:I

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBiometricId()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mBiometricId:I

    return v0
.end method

.method public whitelist getDeviceId()J
    .locals 2

    .line 173
    iget-wide v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mDeviceId:J

    return-wide v0
.end method

.method public whitelist getFingerFlags()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mFingerFlags:I

    return v0
.end method

.method public whitelist getGroupId()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mGroupId:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 4

    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "defaultLanguage":Ljava/lang/String;
    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\u200b-\\u200f]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 151
    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mName:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mFingerFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",fingerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mBiometricId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mDeviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "res":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    invoke-virtual {p0}, Landroid/hardware/fingerprint/OplusFingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/fingerprint/OplusFingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NULL"

    .line 106
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/hardware/fingerprint/OplusFingerprint;->getBiometricId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p0}, Landroid/hardware/fingerprint/OplusFingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mGroupId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v1, p0, Landroid/hardware/fingerprint/OplusFingerprint;->mFingerFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void
.end method
