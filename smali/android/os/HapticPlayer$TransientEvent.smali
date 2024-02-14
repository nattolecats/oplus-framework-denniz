.class Landroid/os/HapticPlayer$TransientEvent;
.super Landroid/os/HapticPlayer$Event;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransientEvent"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;)V
    .locals 1
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 927
    iput-object p1, p0, Landroid/os/HapticPlayer$TransientEvent;->this$0:Landroid/os/HapticPlayer;

    invoke-direct {p0, p1}, Landroid/os/HapticPlayer$Event;-><init>(Landroid/os/HapticPlayer;)V

    .line 928
    const/4 v0, 0x7

    iput v0, p0, Landroid/os/HapticPlayer$TransientEvent;->mLen:I

    .line 929
    return-void
.end method


# virtual methods
.method blacklist generateData()[I
    .locals 4

    .line 931
    iget v0, p0, Landroid/os/HapticPlayer$TransientEvent;->mLen:I

    new-array v0, v0, [I

    .line 932
    .local v0, "data":[I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 933
    iget v2, p0, Landroid/os/HapticPlayer$TransientEvent;->mType:I

    aput v2, v0, v1

    .line 934
    iget v1, p0, Landroid/os/HapticPlayer$TransientEvent;->mLen:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 935
    iget v1, p0, Landroid/os/HapticPlayer$TransientEvent;->mVibId:I

    aput v1, v0, v2

    .line 937
    iget v1, p0, Landroid/os/HapticPlayer$TransientEvent;->mRelativeTime:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 938
    iget v1, p0, Landroid/os/HapticPlayer$TransientEvent;->mIntensity:I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 939
    iget v1, p0, Landroid/os/HapticPlayer$TransientEvent;->mFreq:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 940
    iget v1, p0, Landroid/os/HapticPlayer$TransientEvent;->mDuration:I

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 941
    return-object v0
.end method
