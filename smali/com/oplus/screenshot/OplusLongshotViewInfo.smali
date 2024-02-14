.class public final Lcom/oplus/screenshot/OplusLongshotViewInfo;
.super Ljava/lang/Object;
.source "OplusLongshotViewInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/screenshot/OplusLongshotViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsUnsupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/oplus/screenshot/OplusLongshotViewInfo$1;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusLongshotViewInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->mIsUnsupported:Z

    .line 57
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->mIsUnsupported:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusLongshotViewInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUnsupported()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->mIsUnsupported:Z

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->mIsUnsupported:Z

    .line 87
    return-void
.end method

.method public whitelist reset()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->mIsUnsupported:Z

    .line 91
    return-void
.end method

.method public whitelist setUnsupported()V
    .locals 1

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->mIsUnsupported:Z

    .line 95
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewInfo;->mIsUnsupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
