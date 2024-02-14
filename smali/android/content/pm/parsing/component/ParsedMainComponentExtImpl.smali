.class public Landroid/content/pm/parsing/component/ParsedMainComponentExtImpl;
.super Ljava/lang/Object;
.source "ParsedMainComponentExtImpl.java"

# interfaces
.implements Landroid/content/pm/parsing/component/IParsedMainComponentExt;


# instance fields
.field private blacklist mOplusFlags:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getFlags()I
    .locals 1

    .line 46
    iget v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponentExtImpl;->mOplusFlags:I

    return v0
.end method

.method public blacklist init(Landroid/content/pm/parsing/component/IParsedMainComponentExt;)V
    .locals 1
    .param p1, "otherExt"    # Landroid/content/pm/parsing/component/IParsedMainComponentExt;

    .line 32
    invoke-interface {p1}, Landroid/content/pm/parsing/component/IParsedMainComponentExt;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponentExtImpl;->mOplusFlags:I

    .line 33
    return-void
.end method

.method public blacklist init(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponentExtImpl;->mOplusFlags:I

    .line 37
    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 41
    iput p1, p0, Landroid/content/pm/parsing/component/ParsedMainComponentExtImpl;->mOplusFlags:I

    .line 42
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponentExtImpl;->mOplusFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
