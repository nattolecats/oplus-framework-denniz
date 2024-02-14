.class final Landroid/view/OplusLongshotViewHelper$DumpInfoData;
.super Ljava/lang/Object;
.source "OplusLongshotViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusLongshotViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpInfoData"
.end annotation


# instance fields
.field private final blacklist mArgs:[Ljava/lang/String;

.field private final blacklist mFloatWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsLongshot:Z

.field private final blacklist mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mSystemWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "isLongshot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;Z)V"
        }
    .end annotation

    .line 286
    .local p2, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p3, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;Z[Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "isLongshot"    # Z
    .param p5, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 289
    .local p2, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p3, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 291
    iput-object p2, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mSystemWindows:Ljava/util/List;

    .line 292
    iput-object p3, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mFloatWindows:Ljava/util/List;

    .line 293
    iput-boolean p4, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mIsLongshot:Z

    .line 294
    iput-object p5, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mArgs:[Ljava/lang/String;

    .line 295
    return-void
.end method


# virtual methods
.method public blacklist getArgs()[Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFloatWindows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mFloatWindows:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getSystemWindows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mSystemWindows:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isLongshot()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->mIsLongshot:Z

    return v0
.end method
