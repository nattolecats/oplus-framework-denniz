.class public Landroid/app/dialog/AlertParamsExt;
.super Ljava/lang/Object;
.source "AlertParamsExt.java"

# interfaces
.implements Landroid/app/dialog/IAlertParamsExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/dialog/AlertParamsExt$SummaryAdapter;
    }
.end annotation


# static fields
.field public static final blacklist TYPE_BOTTOM:I = 0x1


# instance fields
.field private blacklist mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private blacklist mDialogType:I

.field blacklist mMessageNeedScroll:Z

.field public blacklist mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/dialog/AlertParamsExt;->mMessageNeedScroll:Z

    .line 40
    iput v0, p0, Landroid/app/dialog/AlertParamsExt;->mDialogType:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/dialog/AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Landroid/app/dialog/AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 47
    return-void
.end method


# virtual methods
.method blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/app/dialog/AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getConvertView(Landroid/view/View;II)Landroid/view/View;
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "count"    # I

    .line 123
    invoke-virtual {p0}, Landroid/app/dialog/AlertParamsExt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    return-object p1

    .line 126
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 129
    .local v1, "paddingLeft":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 130
    .local v2, "paddingRight":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 131
    .local v3, "paddingBottom":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc050024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 132
    .local v5, "paddingBottomOffset":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 133
    .local v4, "paddingTop":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 134
    .local v6, "minHeight":I
    add-int/lit8 v7, p3, -0x1

    if-ne p2, v7, :cond_1

    .line 135
    add-int v7, v6, v5

    invoke-virtual {p1, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 136
    add-int v7, v3, v5

    invoke-virtual {p1, v1, v4, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 139
    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingBottomOffset":I
    .end local v6    # "minHeight":I
    :cond_2
    :goto_0
    return-object p1
.end method

.method public blacklist getDialogType()I
    .locals 1

    .line 58
    iget v0, p0, Landroid/app/dialog/AlertParamsExt;->mDialogType:I

    return v0
.end method

.method public blacklist getHookAdapter(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/widget/ListAdapter;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "items"    # [Ljava/lang/CharSequence;

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 90
    .local v3, "hasTitle":Z
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    .line 91
    .local v4, "hasMessage":Z
    new-instance v0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;

    iget-object v6, p0, Landroid/app/dialog/AlertParamsExt;->mSummaries:[Ljava/lang/CharSequence;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public blacklist hookAlertParaApply(Landroid/app/dialog/IAlertControllerExt;)V
    .locals 1
    .param p1, "alertConExt"    # Landroid/app/dialog/IAlertControllerExt;

    .line 95
    invoke-virtual {p0}, Landroid/app/dialog/AlertParamsExt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-boolean v0, p0, Landroid/app/dialog/AlertParamsExt;->mMessageNeedScroll:Z

    invoke-interface {p1, v0}, Landroid/app/dialog/IAlertControllerExt;->setMessageNeedScroll(Z)V

    .line 97
    iget v0, p0, Landroid/app/dialog/AlertParamsExt;->mDialogType:I

    invoke-interface {p1, v0}, Landroid/app/dialog/IAlertControllerExt;->setDialogType(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public blacklist isMessageNeedScroll()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Landroid/app/dialog/AlertParamsExt;->mMessageNeedScroll:Z

    return v0
.end method

.method public blacklist needHookAdapter(ZZ)Z
    .locals 2
    .param p1, "isSingleChoice"    # Z
    .param p2, "isMultiChoice"    # Z

    .line 82
    invoke-virtual {p0}, Landroid/app/dialog/AlertParamsExt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    return v1

    .line 85
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/dialog/AlertParamsExt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist setDialogType(I)V
    .locals 0
    .param p1, "dialogType"    # I

    .line 62
    iput p1, p0, Landroid/app/dialog/AlertParamsExt;->mDialogType:I

    .line 63
    return-void
.end method

.method public blacklist setItems([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .line 72
    iget-object v0, p0, Landroid/app/dialog/AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    if-eqz v0, :cond_0

    .line 73
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 75
    :cond_0
    return-void
.end method

.method public blacklist setListStyle(Landroid/widget/ListView;ZZ)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "isSingleChoice"    # Z
    .param p3, "isMultiChoice"    # Z

    .line 103
    invoke-virtual {p0}, Landroid/app/dialog/AlertParamsExt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    .line 107
    .local v0, "isOplusStyle":Z
    const/4 v1, 0x0

    const v2, 0xc080040

    if-eqz p2, :cond_1

    .line 108
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 110
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0

    .line 113
    :cond_1
    if-eqz p3, :cond_2

    .line 114
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 120
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setMessageNeedScroll(Z)V
    .locals 0
    .param p1, "messageNeedScroll"    # Z

    .line 54
    iput-boolean p1, p0, Landroid/app/dialog/AlertParamsExt;->mMessageNeedScroll:Z

    .line 55
    return-void
.end method

.method public blacklist setSummaries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summaryItems"    # [Ljava/lang/CharSequence;

    .line 67
    iput-object p1, p0, Landroid/app/dialog/AlertParamsExt;->mSummaries:[Ljava/lang/CharSequence;

    .line 68
    return-void
.end method
