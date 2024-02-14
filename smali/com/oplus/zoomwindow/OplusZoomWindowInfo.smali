.class public final Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
.super Ljava/lang/Object;
.source "OplusZoomWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist cpnName:Ljava/lang/String;

.field public whitelist cvActionFlag:I

.field public whitelist extension:Landroid/os/Bundle;

.field public whitelist inputMethodType:I

.field public whitelist inputShow:Z

.field public whitelist lastExitMethod:I

.field public whitelist leftScaleOfFloatHandleCenter:F

.field public whitelist lockPkg:Ljava/lang/String;

.field public whitelist lockUserId:I

.field public whitelist rightScaleOfFloatHandleCenter:F

.field public whitelist rotation:I

.field public whitelist sideOfFloatHandle:I

.field public whitelist systemRotation:I

.field public whitelist windowShown:Z

.field public whitelist windowType:I

.field public whitelist zoomPkg:Ljava/lang/String;

.field public whitelist zoomRect:Landroid/graphics/Rect;

.field public whitelist zoomUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo$1;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    .line 122
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowType:I

    .line 128
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    .line 122
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowType:I

    .line 128
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rotation:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->systemRotation:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockPkg:Ljava/lang/String;

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockUserId:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomUserId:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputShow:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cpnName:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputMethodType:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowType:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->leftScaleOfFloatHandleCenter:F

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rightScaleOfFloatHandleCenter:F

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    .line 154
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .locals 1
    .param p1, "in"    # Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    .line 122
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowType:I

    .line 128
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rotation:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rotation:I

    .line 159
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->systemRotation:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->systemRotation:I

    .line 160
    iget-boolean v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    .line 161
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockPkg:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    .line 163
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    .line 164
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockUserId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockUserId:I

    .line 165
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomUserId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomUserId:I

    .line 166
    iget-boolean v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputShow:Z

    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputShow:Z

    .line 167
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cpnName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cpnName:Ljava/lang/String;

    .line 168
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    .line 169
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputMethodType:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputMethodType:I

    .line 170
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    .line 171
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    .line 172
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->leftScaleOfFloatHandleCenter:F

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->leftScaleOfFloatHandleCenter:F

    .line 173
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rightScaleOfFloatHandleCenter:F

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rightScaleOfFloatHandleCenter:F

    .line 174
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "OplusZoomWindowInfo = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cvActionFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " systemRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->systemRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lockPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " zoomRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lockUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " zoomUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " inputShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cpnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cpnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lastExitMethod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " inputMethodType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputMethodType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " leftScaleOfFloatHandleCenter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->leftScaleOfFloatHandleCenter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rightScaleOfFloatHandleCenter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rightScaleOfFloatHandleCenter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sideOfFloatHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 185
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->systemRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lockUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputShow:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cpnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->lastExitMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->inputMethodType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 198
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->cvActionFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->leftScaleOfFloatHandleCenter:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->rightScaleOfFloatHandleCenter:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 202
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->sideOfFloatHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    return-void
.end method
