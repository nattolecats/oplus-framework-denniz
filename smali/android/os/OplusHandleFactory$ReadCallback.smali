.class Landroid/os/OplusHandleFactory$ReadCallback;
.super Ljava/lang/Object;
.source "OplusHandleFactory.java"

# interfaces
.implements Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$readCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusHandleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadCallback"
.end annotation


# instance fields
.field private blacklist mData:Ljava/lang/String;

.field private blacklist mResult:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/OplusHandleFactory$ReadCallback;->mResult:I

    .line 135
    const-string v0, ""

    iput-object v0, p0, Landroid/os/OplusHandleFactory$ReadCallback;->mData:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public blacklist data()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/os/OplusHandleFactory$ReadCallback;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onValues(ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 139
    iput p1, p0, Landroid/os/OplusHandleFactory$ReadCallback;->mResult:I

    .line 140
    iput-object p2, p0, Landroid/os/OplusHandleFactory$ReadCallback;->mData:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public blacklist result()I
    .locals 1

    .line 143
    iget v0, p0, Landroid/os/OplusHandleFactory$ReadCallback;->mResult:I

    return v0
.end method
