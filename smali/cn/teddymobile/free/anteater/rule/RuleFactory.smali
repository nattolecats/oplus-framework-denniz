.class public Lcn/teddymobile/free/anteater/rule/RuleFactory;
.super Ljava/lang/Object;
.source "RuleFactory.java"


# static fields
.field private static final blacklist ATTRIBUTE_METHOD_INTENT:Ljava/lang/String; = "intent"

.field private static final blacklist ATTRIBUTE_METHOD_REFLECTION:Ljava/lang/String; = "reflection"

.field private static final blacklist ATTRIBUTE_METHOD_WEB_VIEW:Ljava/lang/String; = "web_view"

.field private static final blacklist TRIGGER_METHOD_CONTEXT:Ljava/lang/String; = "context"

.field private static final blacklist TRIGGER_METHOD_RESOURCE_NAME:Ljava/lang/String; = "resource_name"

.field private static final blacklist TRIGGER_METHOD_TEXT:Ljava/lang/String; = "text"

.field private static final blacklist TRIGGER_METHOD_VIEW_HIERARCHY:Ljava/lang/String; = "view_hierarchy"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAttributeRule(Ljava/lang/String;)Lcn/teddymobile/free/anteater/rule/attribute/AttributeRule;
    .locals 3
    .param p0, "attributeMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "web_view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "reflection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    new-instance v0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ReflectionRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ReflectionRule;-><init>()V

    return-object v0

    .line 62
    :pswitch_1
    new-instance v0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;-><init>()V

    return-object v0

    .line 59
    :pswitch_2
    new-instance v0, Lcn/teddymobile/free/anteater/rule/attribute/intent/IntentRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/attribute/intent/IntentRule;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x517013d5 -> :sswitch_2
        -0x468ec964 -> :sswitch_1
        -0x2ad1e350 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist createDecodeRule()Lcn/teddymobile/free/anteater/rule/html/HtmlRule;
    .locals 1

    .line 74
    new-instance v0, Lcn/teddymobile/free/anteater/rule/html/javascript/JavaScriptRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/html/javascript/JavaScriptRule;-><init>()V

    return-object v0
.end method

.method public static blacklist createTriggerRule(Ljava/lang/String;)Lcn/teddymobile/free/anteater/rule/trigger/TriggerRule;
    .locals 3
    .param p0, "triggerMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "view_hierarchy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "resource_name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "context"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trigger method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    new-instance v0, Lcn/teddymobile/free/anteater/rule/trigger/context/ContextRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/trigger/context/ContextRule;-><init>()V

    return-object v0

    .line 45
    :pswitch_1
    new-instance v0, Lcn/teddymobile/free/anteater/rule/trigger/hierarchy/ViewHierarchyRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/trigger/hierarchy/ViewHierarchyRule;-><init>()V

    return-object v0

    .line 42
    :pswitch_2
    new-instance v0, Lcn/teddymobile/free/anteater/rule/trigger/resource/ResourceNameRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/trigger/resource/ResourceNameRule;-><init>()V

    return-object v0

    .line 39
    :pswitch_3
    new-instance v0, Lcn/teddymobile/free/anteater/rule/trigger/text/TextRule;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/rule/trigger/text/TextRule;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x36452d -> :sswitch_3
        0x38b735af -> :sswitch_2
        0x3a60c81c -> :sswitch_1
        0x54b17d1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
