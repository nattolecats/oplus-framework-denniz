.class Lcn/teddymobile/free/anteater/Anteater$1;
.super Ljava/lang/Object;
.source "Anteater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/teddymobile/free/anteater/Anteater;->process(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcn/teddymobile/free/anteater/Anteater;

.field final synthetic blacklist val$action:Ljava/lang/String;

.field final synthetic blacklist val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcn/teddymobile/free/anteater/Anteater;Landroid/view/View;Ljava/lang/String;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/teddymobile/free/anteater/Anteater;

    .line 109
    iput-object p1, p0, Lcn/teddymobile/free/anteater/Anteater$1;->this$0:Lcn/teddymobile/free/anteater/Anteater;

    iput-object p2, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 14

    .line 112
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v2, ", context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, ", view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v3, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    invoke-interface {v4, v0}, Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;->isSettingOff(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    move-object v2, v0

    .line 129
    .local v2, "viewContext":Landroid/content/Context;
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process [Setting Off] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v4, Lcn/teddymobile/free/anteater/Anteater$ResultData;

    invoke-direct {v4}, Lcn/teddymobile/free/anteater/Anteater$ResultData;-><init>()V

    .line 131
    .local v4, "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    sget-object v5, Lcn/teddymobile/free/anteater/Anteater$ErrorCode;->SETTING_OFF:Lcn/teddymobile/free/anteater/Anteater$ErrorCode;

    invoke-virtual {v4, v5}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setError(Lcn/teddymobile/free/anteater/Anteater$ErrorCode;)V

    .line 132
    iget-object v5, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    invoke-interface {v5, v2, v4}, Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ResultData;)V

    .line 133
    .end local v2    # "viewContext":Landroid/content/Context;
    .end local v4    # "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    goto/16 :goto_5

    :cond_1
    iget-object v4, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$view:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "viewName":Ljava/lang/String;
    iget-object v5, p0, Lcn/teddymobile/free/anteater/Anteater$1;->this$0:Lcn/teddymobile/free/anteater/Anteater;

    invoke-static {v5}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$fgetmResources(Lcn/teddymobile/free/anteater/Anteater;)Lcn/teddymobile/free/anteater/resources/RuleResources;

    move-result-object v5

    invoke-virtual {v5}, Lcn/teddymobile/free/anteater/resources/RuleResources;->isInited()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 136
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process Begin : View = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$action:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "queryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/Anteater$QueryData;>;"
    iget-object v5, p0, Lcn/teddymobile/free/anteater/Anteater$1;->this$0:Lcn/teddymobile/free/anteater/Anteater;

    invoke-static {v5}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$mcopyRuleList(Lcn/teddymobile/free/anteater/Anteater;)Ljava/util/ArrayList;

    move-result-object v5

    .line 139
    .local v5, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 140
    .local v7, "ruleSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 141
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/teddymobile/free/anteater/rule/Rule;

    .line 142
    .local v9, "rule":Lcn/teddymobile/free/anteater/rule/Rule;
    iget-object v10, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$view:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcn/teddymobile/free/anteater/rule/Rule;->check(Landroid/view/View;)Z

    move-result v10

    const-string v11, "----------\n"

    if-nez v10, :cond_2

    .line 143
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 144
    goto :goto_2

    .line 146
    :cond_2
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 149
    :try_start_0
    iget-object v10, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$action:Ljava/lang/String;

    iget-object v11, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$view:Landroid/view/View;

    invoke-virtual {v9, v10, v11}, Lcn/teddymobile/free/anteater/rule/Rule;->extract(Ljava/lang/String;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v10

    .line 150
    .local v10, "resultObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_3

    .line 151
    new-instance v11, Lcn/teddymobile/free/anteater/Anteater$QueryData;

    invoke-direct {v11}, Lcn/teddymobile/free/anteater/Anteater$QueryData;-><init>()V

    .line 152
    .local v11, "data":Lcn/teddymobile/free/anteater/Anteater$QueryData;
    iget-object v12, p0, Lcn/teddymobile/free/anteater/Anteater$1;->this$0:Lcn/teddymobile/free/anteater/Anteater;

    invoke-static {v12, v10}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$mextractTitle(Lcn/teddymobile/free/anteater/Anteater;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/teddymobile/free/anteater/Anteater$QueryData;->setTitle(Ljava/lang/String;)V

    .line 153
    iget-object v12, p0, Lcn/teddymobile/free/anteater/Anteater$1;->this$0:Lcn/teddymobile/free/anteater/Anteater;

    invoke-static {v12, v10}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$mextractUrl(Lcn/teddymobile/free/anteater/Anteater;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/teddymobile/free/anteater/Anteater$QueryData;->setUrl(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v11}, Lcn/teddymobile/free/anteater/Anteater$QueryData;->isValid()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 155
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 160
    .end local v10    # "resultObject":Lorg/json/JSONObject;
    .end local v11    # "data":Lcn/teddymobile/free/anteater/Anteater$QueryData;
    :catch_0
    move-exception v10

    .line 161
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 158
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 159
    .local v10, "e":Lorg/json/JSONException;
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_1
    nop

    .line 140
    .end local v9    # "rule":Lcn/teddymobile/free/anteater/rule/Rule;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 164
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 165
    iget-object v8, p0, Lcn/teddymobile/free/anteater/Anteater$1;->this$0:Lcn/teddymobile/free/anteater/Anteater;

    iget-object v9, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    invoke-static {v8, v0, v9, v2}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$mprocessSuccess(Lcn/teddymobile/free/anteater/Anteater;Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 167
    :cond_5
    iget-object v8, p0, Lcn/teddymobile/free/anteater/Anteater$1;->this$0:Lcn/teddymobile/free/anteater/Anteater;

    iget-object v9, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    invoke-static {v8, v0, v9, v7}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$mprocessFailed(Lcn/teddymobile/free/anteater/Anteater;Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;I)V

    .line 169
    :goto_3
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Process Finish : View = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$action:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v2    # "queryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/Anteater$QueryData;>;"
    .end local v5    # "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    .end local v7    # "ruleSize":I
    goto :goto_4

    .line 171
    :cond_6
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process [Not Init] : action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$action:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v2, Lcn/teddymobile/free/anteater/Anteater$ResultData;

    invoke-direct {v2}, Lcn/teddymobile/free/anteater/Anteater$ResultData;-><init>()V

    .line 173
    .local v2, "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    sget-object v5, Lcn/teddymobile/free/anteater/Anteater$ErrorCode;->NOT_INIT:Lcn/teddymobile/free/anteater/Anteater$ErrorCode;

    invoke-virtual {v2, v5}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setError(Lcn/teddymobile/free/anteater/Anteater$ErrorCode;)V

    .line 174
    iget-object v5, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    invoke-interface {v5, v0, v2}, Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ResultData;)V

    .line 176
    .end local v2    # "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    .end local v4    # "viewName":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 177
    :cond_7
    move-object v2, v0

    .line 178
    .local v2, "viewContext":Landroid/content/Context;
    invoke-static {}, Lcn/teddymobile/free/anteater/Anteater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process [No View] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v4, Lcn/teddymobile/free/anteater/Anteater$ResultData;

    invoke-direct {v4}, Lcn/teddymobile/free/anteater/Anteater$ResultData;-><init>()V

    .line 180
    .local v4, "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    sget-object v5, Lcn/teddymobile/free/anteater/Anteater$ErrorCode;->NO_VIEW:Lcn/teddymobile/free/anteater/Anteater$ErrorCode;

    invoke-virtual {v4, v5}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setError(Lcn/teddymobile/free/anteater/Anteater$ErrorCode;)V

    .line 181
    iget-object v5, p0, Lcn/teddymobile/free/anteater/Anteater$1;->val$callback:Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    invoke-interface {v5, v2, v4}, Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ResultData;)V

    .line 183
    .end local v2    # "viewContext":Landroid/content/Context;
    .end local v4    # "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    :goto_5
    return-void
.end method
