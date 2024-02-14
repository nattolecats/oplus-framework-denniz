.class public Landroid/app/OplusTaskStackListenerOptions;
.super Ljava/lang/Object;
.source "OplusTaskStackListenerOptions.java"


# static fields
.field public static final blacklist FLAG_SKLIP_CALLBACK_SNAPSHOT:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "OplusTaskStackListenerOptions"


# instance fields
.field private blacklist mFlags:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/OplusTaskStackListenerOptions;->mFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 38
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist fromString(Ljava/lang/String;)Landroid/app/OplusTaskStackListenerOptions;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .line 58
    if-eqz p0, :cond_0

    .line 59
    new-instance v0, Landroid/app/OplusTaskStackListenerOptions;

    invoke-direct {v0, p0}, Landroid/app/OplusTaskStackListenerOptions;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "options":Landroid/app/OplusTaskStackListenerOptions;
    return-object v0

    .line 62
    .end local v0    # "options":Landroid/app/OplusTaskStackListenerOptions;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getExtensionFlags(Ljava/lang/String;)I
    .locals 2
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "flags":I
    invoke-static {p0}, Landroid/app/OplusTaskStackListenerOptions;->fromString(Ljava/lang/String;)Landroid/app/OplusTaskStackListenerOptions;

    move-result-object v1

    .line 76
    .local v1, "options":Landroid/app/OplusTaskStackListenerOptions;
    if-eqz v1, :cond_0

    .line 77
    iget v0, v1, Landroid/app/OplusTaskStackListenerOptions;->mFlags:I

    .line 79
    :cond_0
    return v0
.end method

.method public static blacklist makeBasic(I)Landroid/app/OplusTaskStackListenerOptions;
    .locals 1
    .param p0, "flags"    # I

    .line 41
    new-instance v0, Landroid/app/OplusTaskStackListenerOptions;

    invoke-direct {v0}, Landroid/app/OplusTaskStackListenerOptions;-><init>()V

    .line 42
    .local v0, "options":Landroid/app/OplusTaskStackListenerOptions;
    iput p0, v0, Landroid/app/OplusTaskStackListenerOptions;->mFlags:I

    .line 43
    return-object v0
.end method

.method public static blacklist shouldSkipSnapshot(Ljava/lang/String;)Z
    .locals 3
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "skip":Z
    invoke-static {p0}, Landroid/app/OplusTaskStackListenerOptions;->getExtensionFlags(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 70
    return v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 48
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Landroid/app/OplusTaskStackListenerOptions;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
