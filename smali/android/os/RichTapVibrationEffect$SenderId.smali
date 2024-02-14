.class public Landroid/os/RichTapVibrationEffect$SenderId;
.super Ljava/lang/Object;
.source "RichTapVibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RichTapVibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderId"
.end annotation


# instance fields
.field blacklist mPid:I

.field blacklist mSeq:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mPid:I

    .line 138
    iput v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mSeq:I

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "seq"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mPid:I

    .line 138
    iput v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mSeq:I

    .line 143
    iput p1, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mPid:I

    .line 144
    iput p2, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mSeq:I

    .line 145
    return-void
.end method


# virtual methods
.method public blacklist getPid()I
    .locals 1

    .line 151
    iget v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mPid:I

    return v0
.end method

.method public blacklist getSeq()I
    .locals 1

    .line 159
    iget v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mSeq:I

    return v0
.end method

.method public blacklist reset()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mPid:I

    .line 164
    iput v0, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mSeq:I

    .line 165
    return-void
.end method

.method public blacklist setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 147
    iput p1, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mPid:I

    .line 148
    return-void
.end method

.method public blacklist setSeq(I)V
    .locals 0
    .param p1, "seq"    # I

    .line 155
    iput p1, p0, Landroid/os/RichTapVibrationEffect$SenderId;->mSeq:I

    .line 156
    return-void
.end method
