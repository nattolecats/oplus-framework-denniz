.class Lcn/teddymobile/free/anteater/AnteaterClient$1;
.super Ljava/lang/Object;
.source "AnteaterClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/teddymobile/free/anteater/AnteaterClient;->findFavorite(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

.field final synthetic blacklist val$action:Ljava/lang/String;

.field final synthetic blacklist val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;

.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$param:Ljava/lang/String;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcn/teddymobile/free/anteater/AnteaterClient;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/teddymobile/free/anteater/AnteaterClient;

    .line 150
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iput-object p2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;

    iput-object p6, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 14

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "viewName":Ljava/lang/String;
    iget-object v3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;

    iget-object v4, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;->isSettingOff(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    .line 166
    .local v3, "viewContext":Landroid/content/Context;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process [Setting Off] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v4, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;

    invoke-direct {v4}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;-><init>()V

    .line 168
    .local v4, "result":Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;
    sget-object v5, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->SETTING_OFF:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    invoke-virtual {v4, v5}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->setError(Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;)V

    .line 169
    iget-object v5, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;

    invoke-interface {v5, v3, v4}, Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V

    .line 170
    .end local v3    # "viewContext":Landroid/content/Context;
    .end local v4    # "result":Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;
    goto/16 :goto_5

    .line 171
    :cond_0
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process Begin : View = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$action:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v3, "queryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;>;"
    iget-object v4, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$param:Ljava/lang/String;

    invoke-static {v4}, Lcom/oplus/direct/OplusDirectFindCmd;->getRuleParamFromJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "rule_param":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 179
    invoke-static {v4}, Lcn/teddymobile/free/anteater/rule/utils/RuleUtils;->parseRule(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .local v6, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    goto :goto_0

    .line 181
    .end local v6    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    :cond_1
    iget-object v6, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iget-object v7, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mgetRuleList(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 185
    .restart local v6    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 186
    .local v7, "ruleSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_4

    .line 187
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/teddymobile/free/anteater/rule/Rule;

    .line 188
    .local v9, "rule":Lcn/teddymobile/free/anteater/rule/Rule;
    iget-object v10, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$action:Ljava/lang/String;

    iget-object v11, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$view:Landroid/view/View;

    invoke-virtual {v9, v10, v11}, Lcn/teddymobile/free/anteater/rule/Rule;->check(Ljava/lang/String;Landroid/view/View;)Z

    move-result v10

    const-string v11, "----------\n"

    if-nez v10, :cond_2

    .line 189
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n----------Process Skip Rule "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    goto/16 :goto_3

    .line 192
    :cond_2
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n----------Process Apply Rule "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_0
    iget-object v10, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$action:Ljava/lang/String;

    iget-object v11, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$view:Landroid/view/View;

    invoke-virtual {v9, v10, v11}, Lcn/teddymobile/free/anteater/rule/Rule;->extract(Ljava/lang/String;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v10

    .line 196
    .local v10, "resultObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_3

    .line 197
    const-string v11, "stamp"

    iget-object v12, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iget-object v13, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$param:Ljava/lang/String;

    invoke-static {v12, v13}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mgetStampFromParam(Lcn/teddymobile/free/anteater/AnteaterClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    new-instance v11, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;

    invoke-direct {v11}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;-><init>()V

    .line 199
    .local v11, "data":Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;
    iget-object v12, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    invoke-static {v12, v10}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mextractTitle(Lcn/teddymobile/free/anteater/AnteaterClient;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->setTitle(Ljava/lang/String;)V

    .line 200
    iget-object v12, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    invoke-static {v12, v10}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mextractUrl(Lcn/teddymobile/free/anteater/AnteaterClient;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->setUrl(Ljava/lang/String;)V

    .line 201
    iget-object v12, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    invoke-static {v12, v10}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mextractExtra(Lcn/teddymobile/free/anteater/AnteaterClient;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->setExtra(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v11}, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->isValid()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 203
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    .end local v10    # "resultObject":Lorg/json/JSONObject;
    .end local v11    # "data":Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;
    :catch_0
    move-exception v10

    .line 209
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 206
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 207
    .local v10, "e":Lorg/json/JSONException;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_2
    nop

    .line 186
    .end local v9    # "rule":Lcn/teddymobile/free/anteater/rule/Rule;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 212
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 213
    iget-object v8, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iget-object v9, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;

    invoke-static {v8, v9, v10, v3}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mprocessSuccess(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 215
    :cond_5
    iget-object v8, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->this$0:Lcn/teddymobile/free/anteater/AnteaterClient;

    iget-object v9, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$callback:Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;

    invoke-static {v8, v9, v10, v7}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$mprocessFailed(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;I)V

    .line 217
    :goto_4
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Process Finish : View = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcn/teddymobile/free/anteater/AnteaterClient$1;->val$action:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v3    # "queryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;>;"
    .end local v4    # "rule_param":Ljava/lang/String;
    .end local v6    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    .end local v7    # "ruleSize":I
    :goto_5
    return-void
.end method
