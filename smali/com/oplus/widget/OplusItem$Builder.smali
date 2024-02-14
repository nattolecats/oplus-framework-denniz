.class public Lcom/oplus/widget/OplusItem$Builder;
.super Ljava/lang/Object;
.source "OplusItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widget/OplusItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist ci:Lcom/oplus/widget/OplusItem;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/oplus/widget/OplusItem;

    invoke-direct {v0}, Lcom/oplus/widget/OplusItem;-><init>()V

    iput-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    .line 55
    invoke-static {v0, p1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmContext(Lcom/oplus/widget/OplusItem;Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private blacklist setPinned(Z)Lcom/oplus/widget/OplusItem$Builder;
    .locals 1
    .param p1, "pinned"    # Z

    .line 104
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-static {v0, p1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmPinned(Lcom/oplus/widget/OplusItem;Z)V

    .line 105
    return-object p0
.end method


# virtual methods
.method public whitelist create()Lcom/oplus/widget/OplusItem;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    return-object v0
.end method

.method public whitelist setBackgroud(I)Lcom/oplus/widget/OplusItem$Builder;
    .locals 2
    .param p1, "bgResId"    # I

    .line 94
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmBackgroud(Lcom/oplus/widget/OplusItem;Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-object p0
.end method

.method public whitelist setBackgroud(Landroid/graphics/drawable/Drawable;)Lcom/oplus/widget/OplusItem$Builder;
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-static {v0, p1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmBackgroud(Lcom/oplus/widget/OplusItem;Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-object p0
.end method

.method public whitelist setIcon(I)Lcom/oplus/widget/OplusItem$Builder;
    .locals 2
    .param p1, "iconResId"    # I

    .line 84
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmIcon(Lcom/oplus/widget/OplusItem;Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oplus/widget/OplusItem$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-static {v0, p1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmIcon(Lcom/oplus/widget/OplusItem;Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-object p0
.end method

.method public whitelist setLabel(I)Lcom/oplus/widget/OplusItem$Builder;
    .locals 2
    .param p1, "labelId"    # I

    .line 69
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmLabel(Lcom/oplus/widget/OplusItem;Ljava/lang/String;)V

    .line 70
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/String;)Lcom/oplus/widget/OplusItem$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-static {v0, p1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmLabel(Lcom/oplus/widget/OplusItem;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method public whitelist setOnItemClickListener(Lcom/oplus/widget/OplusItem$OnItemClickListener;)Lcom/oplus/widget/OplusItem$Builder;
    .locals 1
    .param p1, "e"    # Lcom/oplus/widget/OplusItem$OnItemClickListener;

    .line 99
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-static {v0, p1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmOnItemClickListener(Lcom/oplus/widget/OplusItem;Lcom/oplus/widget/OplusItem$OnItemClickListener;)V

    .line 100
    return-object p0
.end method

.method public whitelist setText(I)Lcom/oplus/widget/OplusItem$Builder;
    .locals 2
    .param p1, "textResId"    # I

    .line 64
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmText(Lcom/oplus/widget/OplusItem;Ljava/lang/String;)V

    .line 65
    return-object p0
.end method

.method public whitelist setText(Ljava/lang/String;)Lcom/oplus/widget/OplusItem$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/oplus/widget/OplusItem$Builder;->ci:Lcom/oplus/widget/OplusItem;

    invoke-static {v0, p1}, Lcom/oplus/widget/OplusItem;->-$$Nest$fputmText(Lcom/oplus/widget/OplusItem;Ljava/lang/String;)V

    .line 60
    return-object p0
.end method
