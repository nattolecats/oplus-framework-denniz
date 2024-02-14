.class Landroid/os/HapticPlayer$ContinuousEvent;
.super Landroid/os/HapticPlayer$Event;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContinuousEvent"
.end annotation


# instance fields
.field blacklist mPoint:[Landroid/os/HapticPlayer$Point;

.field blacklist mPointNum:I

.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 954
    iput-object p1, p0, Landroid/os/HapticPlayer$ContinuousEvent;->this$0:Landroid/os/HapticPlayer;

    invoke-direct {p0, p1}, Landroid/os/HapticPlayer$Event;-><init>(Landroid/os/HapticPlayer;)V

    .line 955
    return-void
.end method


# virtual methods
.method blacklist generateData()[I
    .locals 6

    .line 957
    const/16 v0, 0x8

    .line 958
    .local v0, "pointOffset":I
    iget v1, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPointNum:I

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    new-array v1, v1, [I

    .line 959
    .local v1, "data":[I
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 961
    iget v4, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mType:I

    aput v4, v1, v3

    .line 962
    iget v3, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPointNum:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 963
    iget v3, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mVibId:I

    aput v3, v1, v4

    .line 965
    iget v3, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mRelativeTime:I

    aput v3, v1, v2

    .line 966
    iget v2, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mIntensity:I

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 967
    iget v2, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mFreq:I

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 968
    iget v2, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mDuration:I

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 969
    iget v2, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPointNum:I

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 971
    move v2, v0

    .line 972
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPointNum:I

    if-ge v3, v4, :cond_0

    .line 973
    iget-object v4, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPoint:[Landroid/os/HapticPlayer$Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/os/HapticPlayer$Point;->mTime:I

    aput v4, v1, v2

    .line 974
    add-int/lit8 v2, v2, 0x1

    .line 976
    iget-object v4, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPoint:[Landroid/os/HapticPlayer$Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/os/HapticPlayer$Point;->mIntensity:I

    aput v4, v1, v2

    .line 977
    add-int/2addr v2, v5

    .line 979
    iget-object v4, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPoint:[Landroid/os/HapticPlayer$Point;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/os/HapticPlayer$Point;->mFreq:I

    aput v4, v1, v2

    .line 980
    add-int/2addr v2, v5

    .line 972
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 983
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuous{mPointNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPointNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/HapticPlayer$ContinuousEvent;->mPoint:[Landroid/os/HapticPlayer$Point;

    .line 989
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    return-object v0
.end method
