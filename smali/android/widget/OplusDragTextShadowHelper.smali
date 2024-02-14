.class public Landroid/widget/OplusDragTextShadowHelper;
.super Ljava/lang/Object;
.source "OplusDragTextShadowHelper.java"

# interfaces
.implements Landroid/widget/IOplusDragTextShadowHelper;


# static fields
.field private static final blacklist MAX_DRAG_TEXT_SHADOW_WIDTH:I = 0xd8

.field public static final whitelist TAG:Ljava/lang/String; = "OplusDragTextShadowHelper"

.field private static blacklist sInstance:Landroid/widget/OplusDragTextShadowHelper;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/widget/OplusDragTextShadowHelper;
    .locals 2

    .line 41
    sget-object v0, Landroid/widget/OplusDragTextShadowHelper;->sInstance:Landroid/widget/OplusDragTextShadowHelper;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Landroid/widget/OplusDragTextShadowHelper;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Landroid/widget/OplusDragTextShadowHelper;->sInstance:Landroid/widget/OplusDragTextShadowHelper;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Landroid/widget/OplusDragTextShadowHelper;

    invoke-direct {v1}, Landroid/widget/OplusDragTextShadowHelper;-><init>()V

    sput-object v1, Landroid/widget/OplusDragTextShadowHelper;->sInstance:Landroid/widget/OplusDragTextShadowHelper;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Landroid/widget/OplusDragTextShadowHelper;->sInstance:Landroid/widget/OplusDragTextShadowHelper;

    return-object v0
.end method


# virtual methods
.method public whitelist getOplusTextThumbnailBuilder(Landroid/view/View;Ljava/lang/String;)Landroid/view/View$DragShadowBuilder;
    .locals 11
    .param p1, "textview"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 54
    const-string v1, "OplusDragTextShadowHelper"

    const-string v2, "getOplusTextThumbnaiBuilder textview is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    .local v1, "viewContext":Landroid/content/Context;
    const v2, 0xc090423

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    .local v0, "shadowView":Landroid/view/ViewGroup;
    const v2, 0xc02001c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "shadowViewText":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 64
    invoke-static {v1}, Lcom/oplus/util/OplusDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 66
    .local v3, "shadowNight":Landroid/graphics/drawable/GradientDrawable;
    const-string v4, "#404040"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .end local v3    # "shadowNight":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .local v3, "density":F
    const/high16 v4, 0x43580000    # 216.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 73
    .local v4, "x":I
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 74
    .local v5, "width":I
    const/4 v6, 0x0

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 75
    .local v7, "height":I
    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->measure(II)V

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    .line 78
    .local v8, "shadowViewWidth":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    .line 79
    .local v9, "shadowViewHeight":I
    if-nez v8, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 80
    const/4 v8, 0x1

    .line 81
    const/4 v9, 0x1

    .line 83
    :cond_2
    invoke-virtual {v0, v6, v6, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 85
    new-instance v6, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v6, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v6

    .line 62
    .end local v3    # "density":F
    .end local v4    # "x":I
    .end local v5    # "width":I
    .end local v7    # "height":I
    .end local v8    # "shadowViewWidth":I
    .end local v9    # "shadowViewHeight":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to inflate text drag thumbnail"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
