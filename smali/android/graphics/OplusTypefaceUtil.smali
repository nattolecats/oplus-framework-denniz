.class public Landroid/graphics/OplusTypefaceUtil;
.super Ljava/lang/Object;
.source "OplusTypefaceUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusTypefaceUtil"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isSystemTypeface(Landroid/graphics/Typeface;)Z
    .locals 2
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 35
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    invoke-virtual {v0, p0}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ITypefaceExt;

    invoke-interface {v0}, Landroid/graphics/ITypefaceExt;->isSystemTypeface()Z

    move-result v0

    return v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemTypeface typeface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , mTypefaceExt ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTypefaceUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setSystemTypeface(Landroid/graphics/Typeface;Z)V
    .locals 2
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "isSystemFont"    # Z

    .line 27
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    invoke-virtual {v0, p0}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ITypefaceExt;

    invoke-interface {v0, p1}, Landroid/graphics/ITypefaceExt;->setSystemTypeface(Z)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemTypeface typeface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , mTypefaceExt ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTypefaceUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void
.end method
