.class Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem$1;
.super Ljava/lang/Object;
.source "OplusGlobalDragAndDropRUSConfigItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    new-instance v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    invoke-direct {v0, p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;
    .locals 1
    .param p1, "size"    # I

    .line 46
    new-array v0, p1, [Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem$1;->newArray(I)[Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    move-result-object p1

    return-object p1
.end method
