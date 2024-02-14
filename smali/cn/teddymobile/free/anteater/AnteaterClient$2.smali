.class Lcn/teddymobile/free/anteater/AnteaterClient$2;
.super Ljava/lang/Object;
.source "AnteaterClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/teddymobile/free/anteater/AnteaterClient;->save(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

.field final synthetic blacklist val$action:Ljava/lang/String;

.field final synthetic blacklist val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;

.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcn/teddymobile/free/anteater/AnteaterClient;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/teddymobile/free/anteater/AnteaterClient;

    .line 234
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iput-object p2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 13

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "viewName":Ljava/lang/String;
    iget-object v3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 250
    .local v3, "viewContext":Landroid/content/Context;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save Begin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v4, 0x0

    .line 252
    .local v4, "result":Z
    iget-object v5, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iget-object v6, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mgetRuleList(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 253
    .local v5, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 254
    .local v6, "ruleSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 255
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/teddymobile/free/anteater/rule/Rule;

    .line 256
    .local v8, "rule":Lcn/teddymobile/free/anteater/rule/Rule;
    iget-object v9, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$action:Ljava/lang/String;

    iget-object v10, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$view:Landroid/view/View;

    invoke-virtual {v8, v9, v10}, Lcn/teddymobile/free/anteater/rule/Rule;->check(Ljava/lang/String;Landroid/view/View;)Z

    move-result v9

    const-string v10, "----------\n"

    if-nez v9, :cond_0

    .line 257
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n----------Save Skip Rule "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    goto :goto_2

    .line 260
    :cond_0
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n----------Save Apply Rule "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :try_start_0
    iget-object v9, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$action:Ljava/lang/String;

    iget-object v10, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$view:Landroid/view/View;

    invoke-virtual {v8, v9, v10}, Lcn/teddymobile/free/anteater/rule/Rule;->extract(Ljava/lang/String;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v9

    .line 264
    .local v9, "resultObject":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 265
    iget-object v10, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    invoke-static {v10, v3, v8, v9}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$msaveResult(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/rule/Rule;Lorg/json/JSONObject;)Z

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v4, v10

    .line 271
    .end local v9    # "resultObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    goto :goto_2

    .line 269
    :catch_0
    move-exception v9

    .line 270
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 267
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 268
    .local v9, "e":Lorg/json/JSONException;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 254
    .end local v8    # "rule":Lcn/teddymobile/free/anteater/rule/Rule;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 273
    .end local v7    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    .line 274
    iget-object v7, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iget-object v8, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;

    invoke-static {v7, v3, v8}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$msaveSuccess(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V

    goto :goto_3

    .line 276
    :cond_3
    iget-object v7, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iget-object v8, p0, Lcn/teddymobile/free/anteater/AnteaterClient$2;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;

    invoke-static {v7, v3, v8, v6}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$msaveFailed(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;I)V

    .line 278
    :goto_3
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save Finish : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method
