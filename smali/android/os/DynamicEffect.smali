.class public final Landroid/os/DynamicEffect;
.super Landroid/os/VibrationEffect;
.source "DynamicEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DynamicEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEBUG:Z

.field private static final blacklist PARCEL_TOKEN_DYNAMIC_EFFECT:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "DynamicEffect"


# instance fields
.field private blacklist mDuration:J

.field private blacklist mLooper:I

.field private blacklist mPatternData:[I

.field blacklist mPatternJson:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 38
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/DynamicEffect;->DEBUG:Z

    .line 124
    new-instance v0, Landroid/os/DynamicEffect$1;

    invoke-direct {v0}, Landroid/os/DynamicEffect$1;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/DynamicEffect;->mDuration:J

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "patternJson"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/DynamicEffect;->mDuration:J

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/DynamicEffect;->mPatternJson:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static whitelist create(Ljava/lang/String;)Landroid/os/DynamicEffect;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Landroid/os/DynamicEffect;->DEBUG:Z

    const-string v1, "DynamicEffect"

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create\u00a0json\u00a0effect,\u00a0effect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "empty pattern,do nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Landroid/os/DynamicEffect;

    invoke-direct {v0, p0}, Landroid/os/DynamicEffect;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "ret":Landroid/os/DynamicEffect;
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    return v1

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "other":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/DynamicEffect;->mPatternJson:Ljava/lang/String;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getPatternInfo()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/os/DynamicEffect;->mPatternJson:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 91
    const/16 v0, 0x11

    .line 92
    .local v0, "result":I
    iget-object v1, p0, Landroid/os/DynamicEffect;->mPatternJson:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 95
    :cond_0
    return v0
.end method

.method public whitelist resolve(I)Landroid/os/DynamicEffect;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 105
    return-object p0
.end method

.method public bridge synthetic whitelist resolve(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->resolve(I)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public whitelist scale(F)Landroid/os/DynamicEffect;
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 110
    return-object p0
.end method

.method public bridge synthetic whitelist scale(F)Landroid/os/VibrationEffect;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->scale(F)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicEffect{mPatternJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/DynamicEffect;->mPatternJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist validate()V
    .locals 0

    .line 78
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void
.end method
