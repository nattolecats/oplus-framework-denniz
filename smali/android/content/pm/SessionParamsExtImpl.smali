.class public Landroid/content/pm/SessionParamsExtImpl;
.super Ljava/lang/Object;
.source "SessionParamsExtImpl.java"

# interfaces
.implements Landroid/content/pm/ISessionParamsExt;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist extraDexoptFlags:I

.field private blacklist extraInstallFlags:I

.field private blacklist extraSessionInfo:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "SessionParamsExtImpl"

    iput-object v0, p0, Landroid/content/pm/SessionParamsExtImpl;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraDexoptFlags:I

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist baseWriteToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 133
    iget v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraInstallFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraSessionInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraDexoptFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method

.method public blacklist copyFrom(Landroid/content/pm/ISessionParamsExt;)V
    .locals 1
    .param p1, "sessionParamsExt"    # Landroid/content/pm/ISessionParamsExt;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-interface {p1}, Landroid/content/pm/ISessionParamsExt;->getExtraInstallFlags()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraInstallFlags:I

    .line 109
    invoke-interface {p1}, Landroid/content/pm/ISessionParamsExt;->getExtraSessionInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraSessionInfo:Ljava/lang/String;

    .line 111
    :cond_0
    return-void
.end method

.method public blacklist getDexoptFlag()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraDexoptFlags:I

    return v0
.end method

.method public blacklist getExtraInstallFlags()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraInstallFlags:I

    return v0
.end method

.method public blacklist getExtraSessionInfo()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraSessionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraInstallFlags:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraSessionInfo:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraDexoptFlags:I

    .line 127
    return-void
.end method

.method public blacklist setDexoptFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 96
    iget v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraDexoptFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraDexoptFlags:I

    .line 97
    return-void
.end method

.method public blacklist setExtraInstallFlags(I)V
    .locals 1
    .param p1, "installFlags"    # I

    .line 81
    iget v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraInstallFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/pm/SessionParamsExtImpl;->extraInstallFlags:I

    .line 82
    return-void
.end method

.method public blacklist setExtraSessionInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraSessionInfo"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Landroid/content/pm/SessionParamsExtImpl;->extraSessionInfo:Ljava/lang/String;

    .line 61
    return-void
.end method
