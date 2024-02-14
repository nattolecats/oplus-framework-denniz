.class public Landroid/view/autolayout/AutoLayoutDebug;
.super Ljava/lang/Object;
.source "AutoLayoutDebug.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const-class v0, Landroid/view/autolayout/AutoLayoutDebug;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/autolayout/AutoLayoutDebug;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist append(Ljava/lang/String;)V
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "calledFrom":Ljava/lang/String;
    sget-object v1, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-object v1, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-object v1, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    sget-object v1, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    sget-object v1, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    return-void
.end method

.method public static blacklist flush()V
    .locals 2

    .line 39
    sget-object v0, Landroid/view/autolayout/AutoLayoutDebug;->TAG:Ljava/lang/String;

    sget-object v1, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/autolayout/AutoLayoutDebug;->sStringBuilder:Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/view/autolayout/AutoLayoutDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
