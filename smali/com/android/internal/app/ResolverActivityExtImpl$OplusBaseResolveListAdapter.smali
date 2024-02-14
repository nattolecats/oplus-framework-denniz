.class public abstract Lcom/android/internal/app/ResolverActivityExtImpl$OplusBaseResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivityExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OplusBaseResolveListAdapter"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivityExtImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivityExtImpl;

    .line 297
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityExtImpl$OplusBaseResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityExtImpl;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processSortedListWrapper(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    return-void
.end method
