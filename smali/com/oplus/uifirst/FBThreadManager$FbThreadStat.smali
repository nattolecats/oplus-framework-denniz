.class Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;
.super Ljava/lang/Object;
.source "FBThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uifirst/FBThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FbThreadStat"
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

    .line 840
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput-object p1, p0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mOps:Ljava/util/List;

    .line 842
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    .line 843
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/FBThreadManager$FbThreadStat;->mPid:Landroid/util/IntArray;

    .line 845
    return-void
.end method
