.class public Landroid/app/servertransaction/ColorModeChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ColorModeChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ColorModeChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mColorMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroid/app/servertransaction/ColorModeChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ColorModeChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ColorModeChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    .line 56
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ColorModeChangeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ColorModeChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(I)Landroid/app/servertransaction/ColorModeChangeItem;
    .locals 2
    .param p0, "colorMode"    # I

    .line 60
    const-class v0, Landroid/app/servertransaction/ColorModeChangeItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ColorModeChangeItem;

    .line 61
    .local v0, "instance":Landroid/app/servertransaction/ColorModeChangeItem;
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Landroid/app/servertransaction/ColorModeChangeItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ColorModeChangeItem;-><init>()V

    move-object v0, v1

    .line 64
    :cond_0
    iput p0, v0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    .line 66
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ColorModeChangeItem;

    .line 109
    .local v2, "other":Landroid/app/servertransaction/ColorModeChangeItem;
    iget v3, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    iget v4, v2, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 106
    .end local v2    # "other":Landroid/app/servertransaction/ColorModeChangeItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 51
    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 114
    const/16 v0, 0x11

    .line 115
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    add-int/2addr v1, v2

    .line 116
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 37
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 42
    :cond_0
    invoke-static {}, Landroid/view/OplusColorModeManager;->getInstance()Landroid/view/OplusColorModeManager;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    invoke-virtual {v0, v1}, Landroid/view/OplusColorModeManager;->setColorMode(I)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preExecute mColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorModeChangeItem"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public blacklist recycle()V
    .locals 1

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    .line 72
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 73
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorModeChangeItem{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget v0, p0, Landroid/app/servertransaction/ColorModeChangeItem;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
