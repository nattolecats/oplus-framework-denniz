.class public Lcom/oplus/wrapper/util/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1
    .param p0, "pathString"    # Ljava/lang/String;

    .line 35
    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
