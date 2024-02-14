.class public Lcom/oplus/wrapper/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# instance fields
.field private final blacklist mParcel:Landroid/os/Parcel;


# direct methods
.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oplus/wrapper/os/Parcel;->mParcel:Landroid/os/Parcel;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet<",
            "*>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/oplus/wrapper/os/Parcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStringArray()[Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oplus/wrapper/os/Parcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeArraySet(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "*>;)V"
        }
    .end annotation

    .line 70
    .local p1, "val":Landroid/util/ArraySet;, "Landroid/util/ArraySet<*>;"
    iget-object v0, p0, Lcom/oplus/wrapper/os/Parcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 71
    return-void
.end method
