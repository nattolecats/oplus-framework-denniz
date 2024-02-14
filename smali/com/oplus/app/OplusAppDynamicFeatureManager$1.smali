.class Lcom/oplus/app/OplusAppDynamicFeatureManager$1;
.super Ljava/lang/Object;
.source "OplusAppDynamicFeatureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/app/OplusAppDynamicFeatureManager;->parseAppDynamicInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/app/OplusAppDynamicFeatureManager;

.field final synthetic blacklist val$activityName:Ljava/lang/String;

.field final synthetic blacklist val$packageName:Ljava/lang/String;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/app/OplusAppDynamicFeatureManager;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/app/OplusAppDynamicFeatureManager;

    .line 79
    iput-object p1, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->this$0:Lcom/oplus/app/OplusAppDynamicFeatureManager;

    iput-object p2, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->val$activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->this$0:Lcom/oplus/app/OplusAppDynamicFeatureManager;

    iget-object v1, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->val$activityName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->-$$Nest$mstartToParseAppDynamicInfo(Lcom/oplus/app/OplusAppDynamicFeatureManager;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse app dynamic info exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAppDynamicFeatureManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
