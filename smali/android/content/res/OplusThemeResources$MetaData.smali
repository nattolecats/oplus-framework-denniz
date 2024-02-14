.class public final Landroid/content/res/OplusThemeResources$MetaData;
.super Ljava/lang/Object;
.source "OplusThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/OplusThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MetaData"
.end annotation


# instance fields
.field public blacklist supportCharSequence:Z

.field public blacklist supportFile:Z

.field public blacklist supportInt:Z

.field public blacklist themePath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "supportInt"    # Z
    .param p3, "supportCharSequence"    # Z
    .param p4, "supportFile"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OplusThemeResources$MetaData;->supportCharSequence:Z

    .line 75
    iput-boolean v0, p0, Landroid/content/res/OplusThemeResources$MetaData;->supportFile:Z

    .line 76
    iput-boolean v0, p0, Landroid/content/res/OplusThemeResources$MetaData;->supportInt:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    .line 82
    const/4 p2, 0x1

    .line 83
    const/4 p3, 0x1

    .line 84
    const/4 p4, 0x1

    .line 85
    return-void
.end method
