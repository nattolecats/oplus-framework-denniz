.class Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
.super Ljava/lang/Object;
.source "TpdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uifirst/TpdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TpdThreadStat"
.end annotation


# instance fields
.field blacklist mIsolatedPid:Landroid/util/IntArray;

.field blacklist mOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPid:Landroid/util/IntArray;


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    .line 445
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    .line 446
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mPid:Landroid/util/IntArray;

    .line 447
    return-void
.end method
