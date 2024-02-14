.class public Lcom/oplus/osense/info/OsenseNotifyRequest;
.super Ljava/lang/Object;
.source "OsenseNotifyRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/osense/info/OsenseNotifyRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mMsgSrc:I

.field private blacklist mMsgType:I

.field private blacklist mParam1:I

.field private blacklist mParam2:I

.field private blacklist mParam3:I

.field private blacklist mParam4:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lcom/oplus/osense/info/OsenseNotifyRequest$1;

    invoke-direct {v0}, Lcom/oplus/osense/info/OsenseNotifyRequest$1;-><init>()V

    sput-object v0, Lcom/oplus/osense/info/OsenseNotifyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    .line 25
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    .line 26
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    .line 27
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    .line 28
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "msgSrc"    # I
    .param p2, "msgType"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    .line 25
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    .line 26
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    .line 27
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    .line 28
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    .line 35
    iput p1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    .line 36
    iput p2, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    .line 37
    return-void
.end method

.method public constructor whitelist <init>(IIIIILjava/lang/String;)V
    .locals 1
    .param p1, "msgSrc"    # I
    .param p2, "msgType"    # I
    .param p3, "param1"    # I
    .param p4, "param2"    # I
    .param p5, "param3"    # I
    .param p6, "param4"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    .line 25
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    .line 26
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    .line 27
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    .line 28
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    .line 40
    iput p1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    .line 41
    iput p2, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    .line 42
    iput p3, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    .line 43
    iput p4, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    .line 44
    iput p5, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    .line 45
    iput-object p6, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    .line 46
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    .line 25
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    .line 26
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    .line 27
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    .line 28
    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Lcom/oplus/osense/info/OsenseNotifyRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMsgSrc()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    return v0
.end method

.method public whitelist getMsgType()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    return v0
.end method

.method public whitelist getParam1()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    return v0
.end method

.method public whitelist getParam2()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    return v0
.end method

.method public whitelist getParam3()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    return v0
.end method

.method public whitelist getParam4()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsenseNotifyRequest{msgSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param4=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

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

    .line 135
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgSrc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mMsgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/oplus/osense/info/OsenseNotifyRequest;->mParam4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return-void
.end method
