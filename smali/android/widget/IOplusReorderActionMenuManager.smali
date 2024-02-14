.class public interface abstract Landroid/widget/IOplusReorderActionMenuManager;
.super Ljava/lang/Object;
.source "IOplusReorderActionMenuManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/widget/IOplusReorderActionMenuManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/widget/IOplusReorderActionMenuManager$1;

    invoke-direct {v0}, Landroid/widget/IOplusReorderActionMenuManager$1;-><init>()V

    sput-object v0, Landroid/widget/IOplusReorderActionMenuManager;->DEFAULT:Landroid/widget/IOplusReorderActionMenuManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 28
    invoke-interface {p0}, Landroid/widget/IOplusReorderActionMenuManager;->getDefault()Landroid/widget/IOplusReorderActionMenuManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/widget/IOplusReorderActionMenuManager;
    .locals 1

    .line 40
    sget-object v0, Landroid/widget/IOplusReorderActionMenuManager;->DEFAULT:Landroid/widget/IOplusReorderActionMenuManager;

    return-object v0
.end method

.method public blacklist hookFireIntent(Landroid/widget/TextView;Landroid/content/Intent;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 35
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusReorderActionMenuManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    return-void
.end method

.method public blacklist isOplusReorderActionMenu(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist newInstance()Landroid/widget/IOplusReorderActionMenuManager;
    .locals 1

    .line 43
    sget-object v0, Landroid/widget/IOplusReorderActionMenuManager;->DEFAULT:Landroid/widget/IOplusReorderActionMenuManager;

    return-object v0
.end method

.method public blacklist onInitializeReorderActionMenu(Landroid/view/Menu;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method public blacklist raiseOplusMenuPriority(ILjava/lang/CharSequence;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "order"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "menu"    # Landroid/view/Menu;

    .line 64
    const/4 v0, 0x0

    return v0
.end method
