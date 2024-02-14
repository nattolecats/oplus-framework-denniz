.class public Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;
.super Ljava/lang/Object;
.source "ObjectNode.java"


# static fields
.field private static final blacklist CLASS_NAME_ARBITRARY:Ljava/lang/String; = "?"

.field private static final blacklist JSON_FIELD_ALIAS:Ljava/lang/String; = "alias"

.field private static final blacklist JSON_FIELD_ATTRIBUTE_LIST:Ljava/lang/String; = "attribute_list"

.field private static final blacklist JSON_FIELD_CAPTURE_PATTERN:Ljava/lang/String; = "capture_pattern"

.field private static final blacklist JSON_FIELD_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final blacklist JSON_FIELD_CLASS_NAME_OBFUSCATED:Ljava/lang/String; = "class_name_obfuscated"

.field private static final blacklist JSON_FIELD_FIELD_INDEX:Ljava/lang/String; = "field_index"

.field private static final blacklist JSON_FIELD_FIELD_NAME:Ljava/lang/String; = "field_name"

.field private static final blacklist JSON_FIELD_FIELD_NAME_OBFUSCATED:Ljava/lang/String; = "field_name_obfuscated"

.field private static final blacklist JSON_FIELD_LEAF:Ljava/lang/String; = "leaf"

.field private static final blacklist JSON_FIELD_PARENT_FIELD_COUNT:Ljava/lang/String; = "parent_field_count"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TAG_ARRAY_FOREACH:Ljava/lang/String; = "foreach"

.field private static final blacklist TAG_CONTEXT:Ljava/lang/String; = "context"

.field private static final blacklist TAG_MAP:Ljava/lang/String; = "map"

.field private static final blacklist TAG_ON_CLICK_LISTENER:Ljava/lang/String; = "onClickListener"

.field private static final blacklist TAG_SUPER_CLASS:Ljava/lang/String; = "super"


# instance fields
.field private final blacklist mAlias:Ljava/lang/String;

.field private final blacklist mAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapturePattern:Ljava/lang/String;

.field private final blacklist mClassName:Ljava/lang/String;

.field private final blacklist mClassNameArbitrary:Z

.field private final blacklist mClassNameObfuscated:Z

.field private final blacklist mFieldIndex:I

.field private final blacklist mFieldName:Ljava/lang/String;

.field private final blacklist mFieldNameObfuscated:Z

.field private final blacklist mLeafList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mParentFieldCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "nodeObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "field_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldName:Ljava/lang/String;

    .line 75
    const-string v0, "class_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    .line 78
    const-string v1, "field_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldIndex:I

    .line 79
    const-string v1, "parent_field_count"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mParentFieldCount:I

    .line 80
    const-string v1, "field_name_obfuscated"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldNameObfuscated:Z

    .line 81
    const-string v1, "class_name_obfuscated"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    .line 82
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameArbitrary:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mLeafList:Ljava/util/List;

    .line 84
    const-string v0, "leaf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 85
    .local v0, "leafArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mLeafList:Ljava/util/List;

    new-instance v3, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAttributeList:Ljava/util/List;

    .line 91
    const-string v1, "attribute_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 92
    .local v1, "attributeArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 93
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 94
    iget-object v3, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAttributeList:Ljava/util/List;

    new-instance v4, Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "i":I
    :cond_1
    const-string v2, "alias"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAlias:Ljava/lang/String;

    .line 98
    const-string v2, "capture_pattern"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mCapturePattern:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private blacklist autoFix(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 489
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 490
    .local v0, "allFields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 491
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 492
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 493
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    return-object v4

    .line 490
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist checkObjectNonNull(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 503
    if-eqz p1, :cond_1

    .line 504
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 505
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 507
    :cond_0
    return v1

    .line 510
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isCustomTag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 476
    if-eqz p1, :cond_0

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist stringToInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 481
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public blacklist extractAttribute(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Pair;
    .locals 21
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 119
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_54

    if-eqz v3, :cond_54

    .line 120
    sget-object v4, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExtractAttribute for Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Expected field = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v5, "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    const/4 v7, 0x1

    :try_start_0
    iget-object v8, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldName:Ljava/lang/String;

    invoke-direct {v1, v8}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->isCustomTag(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    const-string v9, "/"

    const-string v10, "Index = "

    const-string v11, "Actual = "

    const-string v12, "Expected = "

    const-string v13, "Current = "

    if-eqz v8, :cond_2f

    .line 126
    :try_start_1
    iget-object v8, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-virtual {v8, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "tag":Ljava/lang/String;
    const-string v14, "super"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 129
    .local v9, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_3

    .line 130
    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v10, :cond_2

    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameArbitrary:Z

    if-eqz v10, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 134
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 136
    :cond_1
    const-string v10, "Super class is incorrect."

    invoke-static {v4, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_2
    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_3
    const-string v10, "Super class is null."

    invoke-static {v4, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v9    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    goto/16 :goto_13

    :cond_4
    const-string v14, "foreach"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    const-string v15, "ArrayItem class name is incorrect."

    const-string v6, "Current class is not an Array."

    if-eqz v14, :cond_10

    .line 148
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-nez v9, :cond_6

    instance-of v9, v2, Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    goto :goto_2

    .line 182
    :cond_5
    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 149
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .line 150
    .local v4, "size":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 151
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 153
    :cond_7
    instance-of v6, v2, Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 154
    move-object v6, v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 157
    :cond_8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v4, :cond_f

    .line 158
    const/4 v9, 0x0

    .line 159
    .local v9, "arrayItem":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 160
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 162
    :cond_9
    instance-of v10, v2, Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    .line 163
    move-object v10, v2

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 166
    :cond_a
    if-eqz v9, :cond_e

    .line 167
    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v10, :cond_d

    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameArbitrary:Z

    if-eqz v10, :cond_b

    goto :goto_4

    .line 170
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 171
    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-direct {v10, v9, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 173
    :cond_c
    sget-object v10, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    invoke-static {v10, v15}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 168
    :cond_d
    :goto_4
    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v9    # "arrayItem":Ljava/lang/Object;
    :cond_e
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 181
    .end local v4    # "size":I
    .end local v6    # "i":I
    :cond_f
    goto/16 :goto_13

    .line 185
    :cond_10
    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 186
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-nez v7, :cond_12

    instance-of v7, v2, Ljava/util/ArrayList;

    if-eqz v7, :cond_11

    goto :goto_6

    .line 217
    :cond_11
    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 187
    :cond_12
    :goto_6
    invoke-direct {v1, v8}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->stringToInt(Ljava/lang/String;)I

    move-result v6

    .line 188
    .local v6, "arrayIndex":I
    if-ltz v6, :cond_19

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    if-ge v6, v7, :cond_19

    .line 189
    const/4 v7, 0x0

    .line 190
    .local v7, "arrayItem":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 191
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 193
    :cond_13
    instance-of v9, v2, Ljava/util/ArrayList;

    if-eqz v9, :cond_14

    .line 194
    move-object v9, v2

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 197
    :cond_14
    if-eqz v7, :cond_18

    .line 198
    iget-boolean v9, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v9, :cond_17

    iget-boolean v9, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameArbitrary:Z

    if-eqz v9, :cond_15

    goto :goto_7

    .line 201
    :cond_15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 202
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 204
    :cond_16
    invoke-static {v4, v15}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 199
    :cond_17
    :goto_7
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v7    # "arrayItem":Ljava/lang/Object;
    :cond_18
    :goto_8
    goto :goto_9

    .line 212
    :cond_19
    const-string v7, "Array index is out of bounds."

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v6    # "arrayIndex":I
    :goto_9
    goto/16 :goto_13

    .line 220
    :cond_1a
    const-string v6, "context"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5

    const-string v7, "Field class name is incorrect."

    if-eqz v6, :cond_20

    .line 221
    :try_start_3
    const-class v6, Landroid/view/View;

    const-string v9, "mContext"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 222
    .local v6, "contextField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 223
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 224
    .local v9, "contextObject":Ljava/lang/Object;
    instance-of v10, v9, Landroid/content/Context;

    if-eqz v10, :cond_1f

    .line 225
    instance-of v10, v9, Landroid/content/ContextWrapper;

    if-eqz v10, :cond_1b

    instance-of v10, v9, Landroid/app/Activity;

    if-nez v10, :cond_1b

    .line 226
    move-object v10, v9

    check-cast v10, Landroid/content/ContextWrapper;

    .line 227
    .local v10, "wrapper":Landroid/content/ContextWrapper;
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    move-object v9, v14

    .line 229
    .end local v10    # "wrapper":Landroid/content/ContextWrapper;
    :cond_1b
    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v10, :cond_1e

    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameArbitrary:Z

    if-eqz v10, :cond_1c

    goto :goto_a

    .line 232
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 233
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v4, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 235
    :cond_1d
    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 230
    :cond_1e
    :goto_a
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v4, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v6    # "contextField":Ljava/lang/reflect/Field;
    .end local v9    # "contextObject":Ljava/lang/Object;
    :cond_1f
    :goto_b
    goto/16 :goto_13

    :cond_20
    const-string v6, "onClickListener"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 243
    const-class v6, Landroid/view/View;

    const-string v9, "mListenerInfo"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 244
    .local v6, "listenerInfoField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 245
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 246
    .local v9, "listenerInfo":Ljava/lang/Object;
    if-eqz v9, :cond_25

    .line 247
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v14, "mOnClickListener"

    invoke-virtual {v10, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 248
    .local v10, "onClickListenerField":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 250
    .local v14, "onClickListener":Ljava/lang/Object;
    if-eqz v14, :cond_24

    .line 251
    iget-boolean v15, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v15, :cond_23

    iget-boolean v15, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameArbitrary:Z

    if-eqz v15, :cond_21

    move-object/from16 v17, v6

    goto :goto_c

    .line 254
    :cond_21
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v6

    .end local v6    # "listenerInfoField":Ljava/lang/reflect/Field;
    .local v17, "listenerInfoField":Ljava/lang/reflect/Field;
    iget-object v6, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 255
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v14, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 257
    :cond_22
    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 251
    .end local v17    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v6    # "listenerInfoField":Ljava/lang/reflect/Field;
    :cond_23
    move-object/from16 v17, v6

    .line 252
    .end local v6    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v17    # "listenerInfoField":Ljava/lang/reflect/Field;
    :goto_c
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v14, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 250
    .end local v17    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v6    # "listenerInfoField":Ljava/lang/reflect/Field;
    :cond_24
    move-object/from16 v17, v6

    .end local v6    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v17    # "listenerInfoField":Ljava/lang/reflect/Field;
    goto :goto_d

    .line 246
    .end local v10    # "onClickListenerField":Ljava/lang/reflect/Field;
    .end local v14    # "onClickListener":Ljava/lang/Object;
    .end local v17    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v6    # "listenerInfoField":Ljava/lang/reflect/Field;
    :cond_25
    move-object/from16 v17, v6

    .line 265
    .end local v6    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v9    # "listenerInfo":Ljava/lang/Object;
    :goto_d
    goto/16 :goto_13

    :cond_26
    const-string v6, "map"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 266
    const-string v6, ":"

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "keyString":Ljava/lang/String;
    instance-of v9, v2, Ljava/util/Map;

    if-eqz v9, :cond_2d

    .line 268
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    .line 269
    .local v4, "map":Ljava/util/Map;
    const/4 v9, 0x0

    .line 270
    .local v9, "value":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 271
    .local v14, "key":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    .line 272
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 273
    goto :goto_f

    .line 275
    .end local v14    # "key":Ljava/lang/Object;
    :cond_27
    goto :goto_e

    .line 276
    :cond_28
    :goto_f
    if-eqz v9, :cond_2c

    .line 277
    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v10, :cond_2b

    iget-boolean v10, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameArbitrary:Z

    if-eqz v10, :cond_29

    goto :goto_10

    .line 280
    :cond_29
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 281
    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 283
    :cond_2a
    sget-object v10, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    invoke-static {v10, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 278
    :cond_2b
    :goto_10
    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v4    # "map":Ljava/util/Map;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_2c
    :goto_11
    goto :goto_12

    .line 291
    :cond_2d
    const-string v7, "Field is not a Map"

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v6    # "keyString":Ljava/lang/String;
    :goto_12
    goto :goto_13

    .line 295
    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v8    # "tag":Ljava/lang/String;
    :goto_13
    move-object v4, v3

    goto/16 :goto_1a

    .line 299
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 300
    .local v6, "allFields":[Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 301
    .local v7, "attribute":Ljava/lang/Object;
    iget-boolean v8, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldNameObfuscated:Z
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v8, :cond_3a

    .line 302
    :try_start_4
    iget-boolean v8, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v8, :cond_35

    .line 303
    const-string v8, "Class name is not obfuscated."

    invoke-static {v4, v8}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v4, 0x0

    .line 305
    .local v4, "matchCount":I
    const/4 v8, 0x0

    .line 306
    .local v8, "matchField":Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .line 307
    .local v14, "matchAttribute":Ljava/lang/Object;
    array-length v15, v6

    move-object/from16 v17, v7

    const/4 v7, 0x0

    .end local v7    # "attribute":Ljava/lang/Object;
    .local v17, "attribute":Ljava/lang/Object;
    :goto_14
    if-ge v7, v15, :cond_32

    aget-object v18, v6, v7
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v19, v18

    .line 308
    .local v19, "field":Ljava/lang/reflect/Field;
    move/from16 v18, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v5

    const/4 v5, 0x1

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .local v15, "field":Ljava/lang/reflect/Field;
    .local v19, "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :try_start_5
    invoke-virtual {v15, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 309
    invoke-virtual {v15, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 310
    .local v5, "tempAttribute":Ljava/lang/Object;
    if-eqz v5, :cond_30

    .line 311
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v11

    iget-object v11, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 312
    move-object v3, v15

    .line 313
    .end local v8    # "matchField":Ljava/lang/reflect/Field;
    .local v3, "matchField":Ljava/lang/reflect/Field;
    move-object v8, v5

    .line 314
    .end local v14    # "matchAttribute":Ljava/lang/Object;
    .local v8, "matchAttribute":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object v14, v8

    move-object v8, v3

    goto :goto_15

    .line 310
    .end local v3    # "matchField":Ljava/lang/reflect/Field;
    .local v8, "matchField":Ljava/lang/reflect/Field;
    .restart local v14    # "matchAttribute":Ljava/lang/Object;
    :cond_30
    move-object/from16 v20, v11

    .line 307
    .end local v5    # "tempAttribute":Ljava/lang/Object;
    .end local v15    # "field":Ljava/lang/reflect/Field;
    :cond_31
    :goto_15
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p2

    move/from16 v15, v18

    move-object/from16 v5, v19

    move-object/from16 v11, v20

    goto :goto_14

    .line 318
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .local v5, "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_32
    move-object/from16 v19, v5

    move-object/from16 v20, v11

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    if-lez v4, :cond_34

    .line 319
    const/4 v3, 0x1

    if-ne v4, v3, :cond_33

    .line 320
    sget-object v3, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    const-string v5, "Class name found."

    invoke-static {v3, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    move-object v7, v14

    .end local v17    # "attribute":Ljava/lang/Object;
    .restart local v7    # "attribute":Ljava/lang/Object;
    goto :goto_17

    .line 324
    .end local v7    # "attribute":Ljava/lang/Object;
    .restart local v17    # "attribute":Ljava/lang/Object;
    :cond_33
    sget-object v3, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    const-string v5, "Too many same class name. Use index instead."

    invoke-static {v3, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v7, 0x0

    .end local v17    # "attribute":Ljava/lang/Object;
    .restart local v7    # "attribute":Ljava/lang/Object;
    goto :goto_17

    .line 328
    .end local v7    # "attribute":Ljava/lang/Object;
    .restart local v17    # "attribute":Ljava/lang/Object;
    :cond_34
    sget-object v3, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    const-string v5, "Class name not found."

    invoke-static {v3, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 302
    .end local v4    # "matchCount":I
    .end local v8    # "matchField":Ljava/lang/reflect/Field;
    .end local v14    # "matchAttribute":Ljava/lang/Object;
    .end local v17    # "attribute":Ljava/lang/Object;
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v7    # "attribute":Ljava/lang/Object;
    :cond_35
    move-object/from16 v19, v5

    move-object/from16 v17, v7

    move-object/from16 v20, v11

    .line 331
    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .end local v7    # "attribute":Ljava/lang/Object;
    .restart local v17    # "attribute":Ljava/lang/Object;
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :goto_16
    move-object/from16 v7, v17

    .end local v17    # "attribute":Ljava/lang/Object;
    .restart local v7    # "attribute":Ljava/lang/Object;
    :goto_17
    iget-boolean v3, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    if-nez v3, :cond_36

    if-nez v7, :cond_39

    .line 332
    :cond_36
    array-length v3, v6

    iget v4, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mParentFieldCount:I

    if-ne v3, v4, :cond_38

    .line 333
    iget v3, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldIndex:I

    if-ltz v3, :cond_37

    array-length v4, v6

    if-ge v3, v4, :cond_37

    .line 334
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    iget v4, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldIndex:I

    aget-object v3, v3, v4

    .line 335
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 336
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    .line 337
    .end local v3    # "field":Ljava/lang/reflect/Field;
    move-object/from16 v4, p2

    goto/16 :goto_19

    .line 338
    :cond_37
    sget-object v3, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    const-string v4, "Field index is out of bounds."

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 343
    :cond_38
    sget-object v3, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    const-string v4, "Parent field count is incorrect"

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mParentFieldCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0

    .line 355
    :cond_39
    :goto_18
    move-object/from16 v4, p2

    goto :goto_19

    .line 359
    .end local v6    # "allFields":[Ljava/lang/reflect/Field;
    .end local v7    # "attribute":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object/from16 v4, p2

    move-object v3, v0

    move-object/from16 v5, v19

    goto :goto_1d

    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :catch_1
    move-exception v0

    move-object/from16 v4, p2

    move-object v3, v0

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    goto :goto_1d

    .line 350
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v6    # "allFields":[Ljava/lang/reflect/Field;
    .restart local v7    # "attribute":Ljava/lang/Object;
    :cond_3a
    move-object/from16 v19, v5

    move-object/from16 v17, v7

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .end local v7    # "attribute":Ljava/lang/Object;
    .restart local v17    # "attribute":Ljava/lang/Object;
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :try_start_6
    iget-object v3, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v4, p2

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 351
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 352
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    .line 355
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v17    # "attribute":Ljava/lang/Object;
    .restart local v7    # "attribute":Ljava/lang/Object;
    :goto_19
    if-eqz v7, :cond_3b

    .line 356
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v5, v19

    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :try_start_8
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1a

    .line 359
    .end local v6    # "allFields":[Ljava/lang/reflect/Field;
    .end local v7    # "attribute":Ljava/lang/Object;
    :catch_2
    move-exception v0

    goto :goto_1c

    .line 355
    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v6    # "allFields":[Ljava/lang/reflect/Field;
    .restart local v7    # "attribute":Ljava/lang/Object;
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_3b
    move-object/from16 v5, v19

    .line 361
    .end local v6    # "allFields":[Ljava/lang/reflect/Field;
    .end local v7    # "attribute":Ljava/lang/Object;
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :goto_1a
    goto :goto_1e

    .line 359
    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :catch_3
    move-exception v0

    goto :goto_1b

    :catch_4
    move-exception v0

    move-object/from16 v4, p2

    :goto_1b
    move-object/from16 v5, v19

    move-object v3, v0

    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    goto :goto_1d

    :catch_5
    move-exception v0

    move-object v4, v3

    :goto_1c
    move-object v3, v0

    .line 360
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1d
    sget-object v6, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1e
    iget-object v3, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldName:Ljava/lang/String;

    const-string v6, "[foreach]"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 364
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 365
    .local v3, "resultArray":Lorg/json/JSONArray;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 366
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;"
    iget-object v8, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mLeafList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_40

    .line 367
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 368
    .local v8, "resultObject":Lorg/json/JSONObject;
    iget-object v9, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mLeafList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;

    .line 369
    .local v10, "objectNode":Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;
    iget-object v11, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->extractAttribute(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v11

    .line 370
    .local v11, "attribute":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v11, :cond_3e

    .line 371
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v12, :cond_3c

    .line 372
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_22

    .line 374
    :cond_3c
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v12, v12, Lorg/json/JSONObject;

    if-eqz v12, :cond_3e

    .line 375
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lorg/json/JSONObject;

    .line 376
    .local v12, "attributeObject":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 377
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_21
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 378
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 379
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 380
    .local v15, "value":Ljava/lang/Object;
    invoke-direct {v1, v15}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->checkObjectNonNull(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3d

    .line 381
    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/Object;
    :cond_3d
    goto :goto_21

    .line 387
    .end local v10    # "objectNode":Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;
    .end local v11    # "attribute":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "attributeObject":Lorg/json/JSONObject;
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3e
    :goto_22
    goto :goto_20

    .line 388
    :cond_3f
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 389
    .end local v8    # "resultObject":Lorg/json/JSONObject;
    goto :goto_23

    .line 390
    :cond_40
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 392
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;"
    :goto_23
    goto :goto_1f

    .line 393
    :cond_41
    new-instance v6, Landroid/util/Pair;

    iget-object v7, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAlias:Ljava/lang/String;

    invoke-direct {v6, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 395
    .end local v3    # "resultArray":Lorg/json/JSONArray;
    :cond_42
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_53

    .line 396
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 397
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;"
    iget-object v6, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mLeafList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, " = "

    if-lez v6, :cond_51

    .line 398
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 399
    .local v6, "resultObject":Lorg/json/JSONObject;
    iget-object v8, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mLeafList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;

    .line 400
    .local v9, "objectNode":Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;
    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->extractAttribute(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v10

    .line 401
    .local v10, "attribute":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v10, :cond_4a

    .line 402
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v11, :cond_43

    .line 403
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v19, v5

    goto/16 :goto_28

    .line 405
    :cond_43
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v11, v11, Lorg/json/JSONObject;

    if-eqz v11, :cond_46

    .line 406
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONObject;

    .line 407
    .local v11, "attributeObject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 408
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_45

    .line 409
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 410
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 411
    .local v14, "value":Ljava/lang/Object;
    invoke-direct {v1, v14}, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->checkObjectNonNull(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 412
    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_44
    goto :goto_25

    .line 415
    .end local v11    # "attributeObject":Lorg/json/JSONObject;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_45
    move-object/from16 v19, v5

    goto :goto_28

    :cond_46
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v11, v11, Lorg/json/JSONArray;

    if-eqz v11, :cond_49

    .line 416
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONArray;

    .line 417
    .local v11, "attributeArray":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_26
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_48

    .line 418
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 420
    .local v13, "obj":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 421
    .local v14, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_27
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_47

    .line 422
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 423
    .local v15, "key":Ljava/lang/String;
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 424
    .local v2, "value":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v19, v5

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    .end local v2    # "value":Ljava/lang/Object;
    .end local v15    # "key":Ljava/lang/String;
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v19

    goto :goto_27

    .line 421
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_47
    move-object/from16 v19, v5

    .line 417
    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .end local v13    # "obj":Lorg/json/JSONObject;
    .end local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    goto :goto_26

    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_48
    move-object/from16 v19, v5

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    goto :goto_28

    .line 415
    .end local v11    # "attributeArray":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_49
    move-object/from16 v19, v5

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    goto :goto_28

    .line 401
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_4a
    move-object/from16 v19, v5

    .line 430
    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .end local v9    # "objectNode":Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;
    .end local v10    # "attribute":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :goto_28
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v19

    goto/16 :goto_24

    .line 431
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_4b
    move-object/from16 v19, v5

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    iget-object v2, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAttributeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4c

    .line 432
    new-instance v2, Landroid/util/Pair;

    iget-object v4, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAlias:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 434
    :cond_4c
    iget-object v2, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAttributeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;

    .line 435
    .local v4, "attribute":Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;
    sget-object v5, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create Attribute.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v5, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 439
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 440
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 441
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 442
    .local v10, "value":Ljava/lang/Object;
    if-eqz v10, :cond_4d

    .line 443
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_4d
    goto :goto_2a

    .line 447
    :cond_4e
    invoke-virtual {v4, v5}, Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;->getResult(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v9

    .line 448
    .local v9, "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_4f

    .line 449
    sget-object v10, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attribute created. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    .end local v4    # "attribute":Lcn/teddymobile/free/anteater/rule/attribute/intent/Attribute;
    .end local v5    # "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4f
    goto/16 :goto_29

    .line 453
    :cond_50
    new-instance v2, Landroid/util/Pair;

    iget-object v4, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAlias:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 456
    .end local v6    # "resultObject":Lorg/json/JSONObject;
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .local v5, "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_51
    move-object/from16 v19, v5

    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "value":Ljava/lang/String;
    sget-object v4, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attribute found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v5, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mCapturePattern:Ljava/lang/String;

    if-eqz v5, :cond_52

    .line 460
    invoke-static {v2, v5}, Lcn/teddymobile/free/anteater/rule/utils/RegularExpressionUtils;->capture(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capture Attribute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_52
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v1, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAlias:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 395
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;"
    .end local v19    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    .restart local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_53
    move-object/from16 v19, v5

    .line 469
    .end local v5    # "recursiveList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Class<*>;>;>;"
    :cond_54
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFieldIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nParentFieldCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mParentFieldCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFieldNameObfuscated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mFieldNameObfuscated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nClassNameObfuscated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mClassNameObfuscated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nAlias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/reflection/ObjectNode;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
