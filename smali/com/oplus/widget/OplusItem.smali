.class public Lcom/oplus/widget/OplusItem;
.super Ljava/lang/Object;
.source "OplusItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widget/OplusItem$Builder;,
        Lcom/oplus/widget/OplusItem$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final whitelist ITEM_FIFTH:I = 0x4

.field public static final whitelist ITEM_FIRST:I = 0x0

.field public static final whitelist ITEM_FOURTH:I = 0x3

.field public static final whitelist ITEM_SECOND:I = 0x1

.field public static final whitelist ITEM_THIRD:I = 0x2


# instance fields
.field private blacklist mBackgroud:Landroid/graphics/drawable/Drawable;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mLabel:Ljava/lang/String;

.field private blacklist mOnItemClickListener:Lcom/oplus/widget/OplusItem$OnItemClickListener;

.field private blacklist mPinned:Z

.field private blacklist mText:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBackgroud(Lcom/oplus/widget/OplusItem;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContext(Lcom/oplus/widget/OplusItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIcon(Lcom/oplus/widget/OplusItem;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLabel(Lcom/oplus/widget/OplusItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mLabel:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnItemClickListener(Lcom/oplus/widget/OplusItem;Lcom/oplus/widget/OplusItem$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mOnItemClickListener:Lcom/oplus/widget/OplusItem$OnItemClickListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPinned(Lcom/oplus/widget/OplusItem;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/widget/OplusItem;->mPinned:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmText(Lcom/oplus/widget/OplusItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/widget/OplusItem;->mPinned:Z

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist getBackgroud()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/oplus/widget/OplusItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/oplus/widget/OplusItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/oplus/widget/OplusItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/oplus/widget/OplusItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOnItemClickListener()Lcom/oplus/widget/OplusItem$OnItemClickListener;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/oplus/widget/OplusItem;->mOnItemClickListener:Lcom/oplus/widget/OplusItem$OnItemClickListener;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oplus/widget/OplusItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isPinned()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/oplus/widget/OplusItem;->mPinned:Z

    return v0
.end method

.method public whitelist setBackgroud(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backgroud"    # Landroid/graphics/drawable/Drawable;

    .line 142
    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    .line 143
    return-void
.end method

.method public whitelist setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mIcon"    # Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 135
    return-void
.end method

.method public whitelist setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "subLabel"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mLabel:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public whitelist setOnItemClickListener(Lcom/oplus/widget/OplusItem$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/oplus/widget/OplusItem$OnItemClickListener;

    .line 158
    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mOnItemClickListener:Lcom/oplus/widget/OplusItem$OnItemClickListener;

    .line 159
    return-void
.end method

.method public whitelist setPinned(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "pinned"    # Ljava/lang/Boolean;

    .line 166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/widget/OplusItem;->mPinned:Z

    .line 167
    return-void
.end method

.method public whitelist setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mText"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/oplus/widget/OplusItem;->mText:Ljava/lang/String;

    .line 119
    return-void
.end method
