.class Landroid/os/OplusHandleFactory$IOCtrlCallback;
.super Ljava/lang/Object;
.source "OplusHandleFactory.java"

# interfaces
.implements Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$ioctrlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusHandleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IOCtrlCallback"
.end annotation


# instance fields
.field private blacklist mParam:I

.field private blacklist mResult:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/OplusHandleFactory$IOCtrlCallback;->mResult:I

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist onValues(II)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "param"    # I

    .line 72
    iput p1, p0, Landroid/os/OplusHandleFactory$IOCtrlCallback;->mResult:I

    .line 73
    iput p2, p0, Landroid/os/OplusHandleFactory$IOCtrlCallback;->mParam:I

    .line 74
    return-void
.end method

.method public blacklist param()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/os/OplusHandleFactory$IOCtrlCallback;->mParam:I

    return v0
.end method

.method public blacklist result()I
    .locals 1

    .line 76
    iget v0, p0, Landroid/os/OplusHandleFactory$IOCtrlCallback;->mResult:I

    return v0
.end method
