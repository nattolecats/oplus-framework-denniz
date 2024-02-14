.class public Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;
.super Ljava/lang/Object;
.source "OplusScrollCaptureResponseInner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private blacklist mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mWindowBounds:Landroid/graphics/Rect;

.field private blacklist mWindowTitle:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 219
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$1;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$1;-><init>()V

    sput-object v0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mDescription:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 48
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    .line 52
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 56
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mMessages:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 195
    .local v1, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "description":Ljava/lang/String;
    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    move-result-object v3

    .line 197
    .local v3, "connection":Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
    :goto_0
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 198
    .local v4, "windowBounds":Landroid/graphics/Rect;
    :goto_1
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 199
    .local v5, "boundsInWindow":Landroid/graphics/Rect;
    :goto_2
    and-int/lit8 v6, v1, 0x10

    if-nez v6, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "windowTitle":Ljava/lang/String;
    :goto_3
    and-int/lit8 v7, v1, 0x20

    if-nez v7, :cond_4

    move-object v7, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "packageName":Ljava/lang/String;
    :goto_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v8, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 204
    iput-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mDescription:Ljava/lang/String;

    .line 205
    const-class v9, Landroid/annotation/NonNull;

    invoke-static {v9, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    iput-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 208
    iput-object v4, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    .line 209
    iput-object v5, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 210
    iput-object v6, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    .line 211
    iput-object v7, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    .line 212
    iput-object v8, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mMessages:Ljava/util/ArrayList;

    .line 213
    const-class v9, Landroid/annotation/NonNull;

    invoke-static {v9, v0, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
    .param p3, "windowBounds"    # Landroid/graphics/Rect;
    .param p4, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p5, "windowTitle"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p7, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mDescription:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 48
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    .line 52
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 56
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mMessages:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mDescription:Ljava/lang/String;

    .line 93
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 95
    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 96
    iput-object p3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    .line 97
    iput-object p4, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 98
    iput-object p5, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    .line 99
    iput-object p6, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    .line 100
    iput-object p7, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mMessages:Ljava/util/ArrayList;

    .line 101
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 105
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 80
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 82
    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBoundsInWindow()Landroid/graphics/Rect;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getConnection()Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWindowBounds()Landroid/graphics/Rect;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getWindowTitle()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isConnected()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusScrollCaptureResponseInner { description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundsInWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "flg":B
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 180
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 183
    :cond_5
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mBoundsInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 185
    :cond_7
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mWindowTitle:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    :cond_8
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    :cond_9
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 188
    return-void
.end method
