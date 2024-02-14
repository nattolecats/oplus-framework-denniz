.class Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
.super Ljava/lang/Object;
.source "GlThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uifirst/GlThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlThreadStat"
.end annotation


# instance fields
.field blacklist mHasChecked:Z

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

.field blacklist mPidUx:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mUid:I


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

    .line 429
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mOps:Ljava/util/List;

    .line 431
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    .line 432
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPid:Landroid/util/IntArray;

    .line 433
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    .line 434
    return-void
.end method
