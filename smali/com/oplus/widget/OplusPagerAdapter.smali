.class public abstract Lcom/oplus/widget/OplusPagerAdapter;
.super Ljava/lang/Object;
.source "OplusPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;
    }
.end annotation


# static fields
.field public static final whitelist POSITION_NONE:I = -0x2

.field public static final whitelist POSITION_UNCHANGED:I = -0x1


# instance fields
.field private blacklist mObservable:Landroid/database/DataSetObservable;

.field protected whitelist mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/oplus/widget/OplusPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/widget/OplusPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    return-void
.end method


# virtual methods
.method public whitelist destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/widget/OplusPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 136
    return-void
.end method

.method public whitelist finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .line 230
    return-void
.end method

.method public whitelist finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p0, p1}, Lcom/oplus/widget/OplusPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public abstract whitelist getCount()I
.end method

.method public whitelist getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 279
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .line 329
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public whitelist instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/oplus/widget/OplusPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public whitelist notifyDataSetChanged()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/oplus/widget/OplusPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 288
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 296
    iget-object v0, p0, Lcom/oplus/widget/OplusPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method public whitelist restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 261
    return-void
.end method

.method public whitelist saveState()Landroid/os/Parcelable;
    .locals 1

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setOplusResolverItemEventListener(Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    .line 88
    iput-object p1, p0, Lcom/oplus/widget/OplusPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    .line 89
    return-void
.end method

.method public whitelist setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public whitelist setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/widget/OplusPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public whitelist startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .line 170
    return-void
.end method

.method public whitelist startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p0, p1}, Lcom/oplus/widget/OplusPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 305
    iget-object v0, p0, Lcom/oplus/widget/OplusPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 306
    return-void
.end method
