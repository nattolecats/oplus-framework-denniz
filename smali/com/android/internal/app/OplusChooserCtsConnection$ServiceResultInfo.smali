.class Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;
.super Ljava/lang/Object;
.source "OplusChooserCtsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OplusChooserCtsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceResultInfo"
.end annotation


# instance fields
.field public final blacklist connection:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

.field public final blacklist originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field public final blacklist resultTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "ot"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "c"    # Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;",
            "Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 283
    .local p2, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 285
    iput-object p2, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->resultTargets:Ljava/util/List;

    .line 286
    iput-object p3, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->connection:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    .line 287
    iput-object p4, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    .line 288
    return-void
.end method
