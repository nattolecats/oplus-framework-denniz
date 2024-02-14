.class public Lcom/oplus/grid/OplusGridHelper;
.super Ljava/lang/Object;
.source "OplusGridHelper.java"


# static fields
.field private static final blacklist PADDING_COUNT:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateColumnWidth(Landroid/content/Context;FI)F
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenWidth"    # F
    .param p2, "useColumn"    # I

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 14
    .local v0, "totalColumn":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0500de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 15
    .local v1, "gridColumnDefaultMargin":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0500df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 16
    .local v2, "gridColumnDefaultGap":F
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    sub-float v3, p1, v3

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 17
    .local v3, "gridSize":F
    int-to-float v4, p2

    mul-float/2addr v4, v3

    add-int/lit8 v5, p2, -0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 18
    .local v4, "afterWidthSize":F
    return v4
.end method
