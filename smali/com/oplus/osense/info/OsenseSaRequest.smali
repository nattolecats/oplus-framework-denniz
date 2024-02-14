.class public Lcom/oplus/osense/info/OsenseSaRequest;
.super Ljava/lang/Object;
.source "OsenseSaRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/osense/info/OsenseSaRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAction:Ljava/lang/String;

.field private blacklist mInfo:Landroid/os/Bundle;

.field private blacklist mScene:Ljava/lang/String;

.field private blacklist mTimeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/oplus/osense/info/OsenseSaRequest$1;

    invoke-direct {v0}, Lcom/oplus/osense/info/OsenseSaRequest$1;-><init>()V

    sput-object v0, Lcom/oplus/osense/info/OsenseSaRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    .line 31
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "info"    # Landroid/os/Bundle;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    .line 40
    iput-object p1, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    .line 41
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    .line 44
    invoke-virtual {p0, p1}, Lcom/oplus/osense/info/OsenseSaRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    .line 34
    iput-object p1, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInfo()Landroid/os/Bundle;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getScene()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimeout()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    return v0
.end method

.method protected whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    .line 156
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsenseSaRequest{scene=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", action=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 137
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mScene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseSaRequest;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method
