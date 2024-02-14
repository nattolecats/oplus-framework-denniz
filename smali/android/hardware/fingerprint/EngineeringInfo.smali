.class public final Landroid/hardware/fingerprint/EngineeringInfo;
.super Ljava/lang/Object;
.source "EngineeringInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/EngineeringInfo$EngineeringInfoAcquireAction;,
        Landroid/hardware/fingerprint/EngineeringInfo$EngineeringParameterGroup;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/EngineeringInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEngineeringInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKey:[I

.field private blacklist mLength:I

.field private blacklist mValue:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Landroid/hardware/fingerprint/EngineeringInfo$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/EngineeringInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/EngineeringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    .line 47
    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    .line 76
    const/4 v1, 0x1

    iput v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    .line 77
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    .line 78
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    .line 79
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 80
    aput-object p2, v1, v3

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    .line 47
    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    .line 96
    iput p1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    .line 97
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    .line 98
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 101
    iget-object v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    .line 47
    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineeringInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    if-lez v0, :cond_0

    .line 109
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/fingerprint/EngineeringInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/EngineeringInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    .line 47
    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    .line 85
    iput-object p1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    .line 86
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    .line 87
    iget-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 88
    .local v0, "key":[Ljava/lang/Integer;
    iget-object v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 89
    .local v1, "value":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    if-ge v2, v3, :cond_0

    .line 90
    iget-object v3, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 91
    iget-object v3, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    aget-object v4, v1, v2

    aput-object v4, v3, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEngineeringInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mEngineeringInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public whitelist getKey()[I
    .locals 3

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    if-ge v0, v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKey["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EngineeringInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    return-object v0
.end method

.method public whitelist getLength()I
    .locals 1

    .line 126
    iget v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    return v0
.end method

.method public whitelist getValue()[Ljava/lang/String;
    .locals 3

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mLength:I

    if-ge v0, v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValue["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EngineeringInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mKey:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 150
    iget-object v0, p0, Landroid/hardware/fingerprint/EngineeringInfo;->mValue:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 151
    return-void
.end method
