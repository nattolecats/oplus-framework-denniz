.class public Lcom/oplus/screenshot/OplusScrollCaptureResponse;
.super Ljava/lang/Object;
.source "OplusScrollCaptureResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/screenshot/OplusScrollCaptureResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnection;

.field private final blacklist mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureResponse$1;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse$1;-><init>()V

    sput-object v0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;)V
    .locals 0
    .param p1, "response"    # Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist close()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->close()V

    .line 72
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBoundsInWindow()Landroid/graphics/Rect;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->getBoundsInWindow()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConnection()Lcom/oplus/screenshot/IOplusScrollCaptureConnection;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnection;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->getConnection()Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    move-result-object v0

    .line 95
    .local v0, "con":Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScrollCaptureConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnection;

    .line 99
    .end local v0    # "con":Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnection;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWindowBounds()Landroid/graphics/Rect;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWindowTitle()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->getWindowTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isConnected()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;->isConnected()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusScrollCaptureResponse { description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->getConnection()Lcom/oplus/screenshot/IOplusScrollCaptureConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundsInWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->getBoundsInWindow()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->getWindowTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 175
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponse;->mResponse:Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    return-void
.end method
