.class public Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;
.super Ljava/lang/Object;
.source "OplusMirageDisplayCastInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist OPLUS_MIRAGE_APP_SHARE_MODE:I = 0x3

.field public static final whitelist OPLUS_MIRAGE_BACKGROUND_STREAM_MODE:I = 0x4

.field public static final whitelist OPLUS_MIRAGE_BASE_DISPLAY_ID:I = 0x7e4

.field public static final whitelist OPLUS_MIRAGE_CAR_MODE:I = 0x5

.field public static final whitelist OPLUS_MIRAGE_DEFAULT_MODE:I = 0x0

.field public static final whitelist OPLUS_MIRAGE_PC_GAME_MODE:I = 0x6

.field public static final whitelist OPLUS_MIRAGE_PC_MODE:I = 0x2

.field public static final whitelist OPLUS_MIRAGE_TV_MODE:I = 0x1


# instance fields
.field public whitelist castFlag:I

.field public whitelist castMode:I

.field public whitelist displayId:I

.field public whitelist extension:Landroid/os/Bundle;

.field public whitelist flag:I

.field public whitelist height:I

.field public whitelist stackIds:[I

.field public whitelist taskIds:[I

.field public whitelist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo$1;

    invoke-direct {v0}, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->extension:Landroid/os/Bundle;

    .line 127
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->extension:Landroid/os/Bundle;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->width:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->height:I

    .line 132
    invoke-direct {p0, p1}, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->readTaskIdsFromParcel(Landroid/os/Parcel;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->readStackIdsFromParcel(Landroid/os/Parcel;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->flag:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->extension:Landroid/os/Bundle;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->castMode:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->castFlag:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->displayId:I

    .line 139
    return-void
.end method

.method private blacklist readStackIdsFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .local v0, "stacksize":I
    if-lez v0, :cond_0

    .line 185
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->stackIds:[I

    .line 186
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0

    .line 188
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->stackIds:[I

    .line 191
    .end local v0    # "stacksize":I
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist readTaskIdsFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, "tasksize":I
    if-lez v0, :cond_0

    .line 173
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->taskIds:[I

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0

    .line 176
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->taskIds:[I

    .line 179
    .end local v0    # "tasksize":I
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "OplusMirageDisplayCastInfo = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " taskIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->taskIds:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stackIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->stackIds:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " castMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->castMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " castFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->castFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 146
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->taskIds:[I

    array-length v0, v0

    .line 149
    .local v0, "tasksize":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->taskIds:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->stackIds:[I

    array-length v2, v2

    .line 156
    .local v2, "stacksize":I
    if-lez v2, :cond_1

    .line 157
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->stackIds:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    :goto_1
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->flag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 164
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->castMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->castFlag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;->displayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void
.end method
