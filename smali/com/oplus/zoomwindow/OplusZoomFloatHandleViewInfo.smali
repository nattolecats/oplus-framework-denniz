.class public Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;
.super Ljava/lang/Object;
.source "OplusZoomFloatHandleViewInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist actionFlag:I

.field public whitelist cpnName:Ljava/lang/String;

.field public whitelist extension:Landroid/os/Bundle;

.field public whitelist floatHandleState:I

.field public whitelist iConRect:Landroid/graphics/Rect;

.field public whitelist lockPkg:Ljava/lang/String;

.field public whitelist lockUserId:I

.field public whitelist scaleLeftY:F

.field public whitelist scaleRightY:F

.field public whitelist side:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo$1;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    .line 65
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    .line 69
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    .line 81
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    .line 65
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    .line 69
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockPkg:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockUserId:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->cpnName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    .line 65
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    .line 69
    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockPkg:Ljava/lang/String;

    .line 86
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockUserId:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockUserId:I

    .line 87
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->cpnName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->cpnName:Ljava/lang/String;

    .line 88
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    .line 89
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    .line 90
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    .line 91
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    .line 92
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    .line 93
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    .line 94
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "OplusZoomFloatHandleViewInfo = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lockPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lockUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cpnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->cpnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " floatHandleState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " actionFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " side = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scaleLeftY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scaleRightY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " iConRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->lockUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->cpnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->floatHandleState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->actionFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->side:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleLeftY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 125
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->scaleRightY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 126
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->iConRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method
