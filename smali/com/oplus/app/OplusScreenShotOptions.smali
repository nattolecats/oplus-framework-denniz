.class public Lcom/oplus/app/OplusScreenShotOptions;
.super Ljava/lang/Object;
.source "OplusScreenShotOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/app/OplusScreenShotOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist mExcludeLayers:[Landroid/view/SurfaceControl;

.field public whitelist mFullDisplay:Z

.field public whitelist mLayer:Landroid/view/SurfaceControl;

.field public whitelist mSourceCrop:Landroid/graphics/Rect;

.field public whitelist mTasks:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/oplus/app/OplusScreenShotOptions$1;

    invoke-direct {v0}, Lcom/oplus/app/OplusScreenShotOptions$1;-><init>()V

    sput-object v0, Lcom/oplus/app/OplusScreenShotOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "taskSize":I
    if-lez v0, :cond_0

    .line 122
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oplus/app/OplusScreenShotOptions;->mTasks:[I

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "layerFlag":I
    if-lez v1, :cond_1

    .line 128
    sget-object v2, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    iput-object v2, p0, Lcom/oplus/app/OplusScreenShotOptions;->mLayer:Landroid/view/SurfaceControl;

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "excludeLayersSize":I
    if-lez v2, :cond_2

    .line 133
    new-array v3, v2, [Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/oplus/app/OplusScreenShotOptions;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 134
    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 137
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/oplus/app/OplusScreenShotOptions;->mSourceCrop:Landroid/graphics/Rect;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/oplus/app/OplusScreenShotOptions;->mFullDisplay:Z

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/oplus/app/OplusScreenShotOptions-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/app/OplusScreenShotOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/app/OplusScreenShotOptions;)V
    .locals 1
    .param p1, "options"    # Lcom/oplus/app/OplusScreenShotOptions;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iget-object v0, p1, Lcom/oplus/app/OplusScreenShotOptions;->mLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mLayer:Landroid/view/SurfaceControl;

    .line 113
    iget-object v0, p1, Lcom/oplus/app/OplusScreenShotOptions;->mExcludeLayers:[Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 114
    iget-object v0, p1, Lcom/oplus/app/OplusScreenShotOptions;->mSourceCrop:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mSourceCrop:Landroid/graphics/Rect;

    .line 115
    iget-boolean v0, p1, Lcom/oplus/app/OplusScreenShotOptions;->mFullDisplay:Z

    iput-boolean v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mFullDisplay:Z

    .line 116
    iget-object v0, p1, Lcom/oplus/app/OplusScreenShotOptions;->mTasks:[I

    iput-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mTasks:[I

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mTasks:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    array-length v0, v0

    .line 152
    .local v0, "taskSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v2, p0, Lcom/oplus/app/OplusScreenShotOptions;->mTasks:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    .end local v0    # "taskSize":I
    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    .line 166
    array-length v0, v0

    .line 167
    .local v0, "layerSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v2, p0, Lcom/oplus/app/OplusScreenShotOptions;->mExcludeLayers:[Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 169
    .end local v0    # "layerSize":I
    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    iget-boolean v0, p0, Lcom/oplus/app/OplusScreenShotOptions;->mFullDisplay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    return-void
.end method
