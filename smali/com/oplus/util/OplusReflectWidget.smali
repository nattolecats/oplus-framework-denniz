.class public Lcom/oplus/util/OplusReflectWidget;
.super Ljava/lang/Object;
.source "OplusReflectWidget.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_WIDGET:Lcom/oplus/util/OplusReflectWidget;

.field public static final blacklist DEFAULT_WIDGET_WECHAT_1420:Lcom/oplus/util/OplusReflectWidget;

.field private static final blacklist HASH_CODE_OFFSET:I = 0x1f


# instance fields
.field private blacklist mClassName:Ljava/lang/String;

.field private blacklist mField:Ljava/lang/String;

.field private blacklist mFieldLevel:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mVersionCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lcom/oplus/util/OplusReflectWidget$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusReflectWidget$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusReflectWidget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    new-instance v0, Lcom/oplus/util/OplusReflectWidget;

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x500

    const-string v4, "com.tencent.mm.ui.widget.MMNeatTextView"

    const/4 v5, 0x1

    const-string v6, "mText"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/util/OplusReflectWidget;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/util/OplusReflectWidget;->DEFAULT_WIDGET:Lcom/oplus/util/OplusReflectWidget;

    .line 41
    new-instance v0, Lcom/oplus/util/OplusReflectWidget;

    const-string v8, "com.tencent.mm"

    const/16 v9, 0x58c

    const-string v10, "com.tencent.mm.ui.widget.MMNeat7extView"

    const/4 v11, 0x1

    const-string v12, "mText"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/oplus/util/OplusReflectWidget;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/util/OplusReflectWidget;->DEFAULT_WIDGET_WECHAT_1420:Lcom/oplus/util/OplusReflectWidget;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "fieldLevel"    # I
    .param p5, "field"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    .line 57
    iput-object p3, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    .line 58
    iput p4, p0, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    .line 59
    iput-object p5, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    if-ne p0, p1, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/oplus/util/OplusReflectWidget;

    .line 94
    .local v1, "that":Lcom/oplus/util/OplusReflectWidget;
    iget v2, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    iget v3, v1, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    if-eq v2, v3, :cond_2

    .line 95
    return v0

    .line 96
    :cond_2
    iget v2, p0, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    iget v3, v1, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    if-eq v2, v3, :cond_3

    .line 97
    return v0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 99
    return v0

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    iget-object v3, v1, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 101
    return v0

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    iget-object v2, v1, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 90
    .end local v1    # "that":Lcom/oplus/util/OplusReflectWidget;
    :cond_6
    :goto_0
    return v0
.end method

.method public blacklist getClassName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getField()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFieldLevel()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 117
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    add-int/2addr v1, v2

    .line 118
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 119
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 121
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public blacklist setField(Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public blacklist setFieldLevel(I)V
    .locals 0
    .param p1, "fieldLevel"    # I

    .line 149
    iput p1, p0, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    .line 150
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public blacklist setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .line 137
    iput p1, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    .line 138
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusReflectWidget{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", versionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", className=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fieldLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", field=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/oplus/util/OplusReflectWidget;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/oplus/util/OplusReflectWidget;->mFieldLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/oplus/util/OplusReflectWidget;->mField:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
