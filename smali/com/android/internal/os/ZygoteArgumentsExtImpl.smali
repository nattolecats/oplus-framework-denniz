.class public Lcom/android/internal/os/ZygoteArgumentsExtImpl;
.super Ljava/lang/Object;
.source "ZygoteArgumentsExtImpl.java"

# interfaces
.implements Lcom/android/internal/os/IZygoteArgumentsExt;


# instance fields
.field blacklist mOplusHiddenApiExemptions:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArgumentsExtImpl;->mOplusHiddenApiExemptions:[Ljava/lang/String;

    .line 8
    return-void
.end method

.method private static blacklist getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 43
    invoke-static {p0}, Lcom/android/internal/os/ZygoteArgumentsExtImpl;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;

    .line 39
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist canParseArg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 12
    const-string v0, "--oplus-hidden-api-exemptions="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doParseArg(Ljava/lang/String;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20
    const-string v0, "--oplus-hidden-api-exemptions="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArgumentsExtImpl;->mOplusHiddenApiExemptions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/android/internal/os/ZygoteArgumentsExtImpl;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "params":[Ljava/lang/String;
    array-length v1, v0

    .line 26
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/ZygoteArgumentsExtImpl;->mOplusHiddenApiExemptions:[Ljava/lang/String;

    .line 27
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    iget-object v3, p0, Lcom/android/internal/os/ZygoteArgumentsExtImpl;->mOplusHiddenApiExemptions:[Ljava/lang/String;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "params":[Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate oplus arg specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    return-void
.end method

.method public blacklist getOplusHiddenApiExemptions()[Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArgumentsExtImpl;->mOplusHiddenApiExemptions:[Ljava/lang/String;

    return-object v0
.end method
