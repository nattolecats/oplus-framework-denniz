.class Landroid/os/HapticPlayer$Pattern;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pattern"
.end annotation


# instance fields
.field blacklist mEvent:[Landroid/os/HapticPlayer$Event;

.field blacklist mRelativeTime:I

.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 995
    iput-object p1, p0, Landroid/os/HapticPlayer$Pattern;->this$0:Landroid/os/HapticPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist generateSerializationPatternData(I)[I
    .locals 10
    .param p1, "index"    # I

    .line 1018
    invoke-virtual {p0}, Landroid/os/HapticPlayer$Pattern;->getPatternDataLen()I

    move-result v0

    .line 1019
    .local v0, "dataLen":I
    new-array v1, v0, [I

    .line 1020
    .local v1, "data":[I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1022
    aput p1, v1, v2

    .line 1023
    iget v3, p0, Landroid/os/HapticPlayer$Pattern;->mRelativeTime:I

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 1024
    iget-object v3, p0, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    array-length v4, v3

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 1027
    const/4 v4, 0x0

    .line 1028
    .local v4, "eventData":[I
    const/4 v5, 0x3

    .line 1029
    .local v5, "offset":I
    array-length v6, v3

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v3, v7

    .line 1030
    .local v8, "event":Landroid/os/HapticPlayer$Event;
    invoke-virtual {v8}, Landroid/os/HapticPlayer$Event;->generateData()[I

    move-result-object v4

    .line 1031
    array-length v9, v4

    invoke-static {v4, v2, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1032
    array-length v9, v4

    add-int/2addr v5, v9

    .line 1029
    .end local v8    # "event":Landroid/os/HapticPlayer$Event;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1034
    :cond_0
    return-object v1
.end method

.method blacklist getPatternDataLen()I
    .locals 2

    .line 1013
    invoke-virtual {p0}, Landroid/os/HapticPlayer$Pattern;->getPatternEventLen()I

    move-result v0

    .line 1014
    .local v0, "eventLen":I
    add-int/lit8 v1, v0, 0x3

    return v1
.end method

.method blacklist getPatternEventLen()I
    .locals 7

    .line 1000
    const/4 v0, 0x0

    .line 1002
    .local v0, "len":I
    iget-object v1, p0, Landroid/os/HapticPlayer$Pattern;->mEvent:[Landroid/os/HapticPlayer$Event;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1003
    .local v4, "event":Landroid/os/HapticPlayer$Event;
    iget v5, v4, Landroid/os/HapticPlayer$Event;->mType:I

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_0

    .line 1004
    move-object v5, v4

    check-cast v5, Landroid/os/HapticPlayer$ContinuousEvent;

    iget v5, v5, Landroid/os/HapticPlayer$ContinuousEvent;->mPointNum:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    goto :goto_1

    .line 1005
    :cond_0
    iget v5, v4, Landroid/os/HapticPlayer$Event;->mType:I

    const/16 v6, 0x1001

    if-ne v5, v6, :cond_1

    .line 1006
    add-int/lit8 v0, v0, 0x7

    .line 1002
    .end local v4    # "event":Landroid/os/HapticPlayer$Event;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1009
    :cond_2
    return v0
.end method
