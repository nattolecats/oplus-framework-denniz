.class Lcn/teddymobile/free/anteater/AnteaterClient$9;
.super Ljava/lang/Object;
.source "AnteaterClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/teddymobile/free/anteater/AnteaterClient;->findViewInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcn/teddymobile/free/anteater/AnteaterClient;

    .line 483
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$9;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iput-object p2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "includeAccessibilityNodeInfoWithClassList.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/teddymobile/free/anteater/rule/utils/DetectionFileUtils;->loadRestrictions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "includeAccessibilityNodeInfoWithClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$9;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "includeAccessibilityNodeInfoWithViewIdList.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/teddymobile/free/anteater/rule/utils/DetectionFileUtils;->loadRestrictions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 488
    .local v1, "includeAccessibilityNodeInfoWithViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->addIncludeAccessibilityNodeInfoWithClassList(Ljava/util/List;)V

    .line 489
    invoke-static {v1}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->addIncludeAccessibilityNodeInfoWithViewIdList(Ljava/util/List;)V

    .line 491
    iget-object v2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$9;->val$view:Landroid/view/View;

    invoke-static {v2}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/teddymobile/free/anteater/AnteaterClient$9;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ViewHierarchy.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->printViewHierarchyResult(Landroid/view/View;Ljava/lang/String;)V

    .line 492
    return-void
.end method
