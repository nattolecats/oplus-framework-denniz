.class public Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field public static final blacklist REFLECTION_NAME_THIS_OBJECT:Ljava/lang/String; = "this$0"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static blacklist excludeDeepFirstClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist excludeDeepFirstPackagePrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist excludeFieldClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist excludeFieldPackagePrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 21
    const-class v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstClassList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstPackagePrefixList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldClassList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldPackagePrefixList:Ljava/util/List;

    .line 33
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstClassList:Ljava/util/List;

    const-string v1, "androidx.appcompat.app.AppCompatActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstClassList:Ljava/util/List;

    const-string v2, "androidx.appcompat.app.AppCompatDelegate"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstPackagePrefixList:Ljava/util/List;

    const-string v3, "android."

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstPackagePrefixList:Ljava/util/List;

    const-string v4, "sun."

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstPackagePrefixList:Ljava/util/List;

    const-string v5, "java."

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldClassList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldClassList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldPackagePrefixList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldPackagePrefixList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldPackagePrefixList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addExcludeDeepFirstClassList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p0, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstClassList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstClassList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    return-void
.end method

.method public static blacklist addExcludeDeepFirstPackagePrefixList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p0, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstPackagePrefixList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstPackagePrefixList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method public static blacklist addExcludeFieldClassList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p0, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldClassList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldClassList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method

.method public static blacklist addExcludeFieldPackagePrefixList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p0, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldPackagePrefixList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldPackagePrefixList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method public static blacklist deepFirstFields(Ljava/lang/Object;I)Lorg/json/JSONArray;
    .locals 14
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "deep"    # I

    .line 52
    const-string v0, "reflection.favorite.store"

    sget-object v1, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------- deep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start -------- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-nez p0, :cond_0

    return-object v1

    .line 57
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 58
    .local v2, "newDeep":I
    :try_start_0
    const-string v4, "reflection_deep"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 59
    .local v4, "limitDeep":I
    if-le v2, v4, :cond_1

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v0, "object":Lorg/json/JSONObject;
    const-string v3, "field_class_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v3, "info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exceed limit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "levels"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 64
    return-object v1

    .line 67
    .end local v0    # "object":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 70
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v5}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 71
    .local v6, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 72
    .local v8, "fieldItem":Ljava/lang/reflect/Field;
    invoke-static {p0, v8}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->logField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Lorg/json/JSONObject;

    move-result-object v9

    .line 73
    .local v9, "object":Lorg/json/JSONObject;
    if-nez v9, :cond_3

    .line 74
    goto :goto_0

    .line 76
    :cond_3
    sget-object v10, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filed_object: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v10, 0x1

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 78
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    :cond_4
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "this$0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 83
    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    .line 87
    .local v11, "fieldItemClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v11}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludePrimitiveType(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 88
    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstClassList:Ljava/util/List;

    invoke-static {v12, v13}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeClass(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 89
    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeDeepFirstPackagePrefixList:Ljava/util/List;

    invoke-static {v12, v13}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludePackagePrefix(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 90
    goto :goto_0

    .line 93
    :cond_6
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 94
    const-string v10, "leaf"

    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v2}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->deepFirstFields(Ljava/lang/Object;I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 96
    :cond_7
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v2}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->deepFirstFields(Ljava/lang/Object;I)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v8    # "fieldItem":Ljava/lang/reflect/Field;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "fieldItemClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    goto/16 :goto_0

    .line 109
    .end local v2    # "newDeep":I
    .end local v4    # "limitDeep":I
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_8
    nop

    .line 111
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end -------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_9

    .line 101
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string v3, "IllegalAccessException when deepFirstFields"

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_9
    instance-of v2, v0, Lorg/json/JSONException;

    if-eqz v2, :cond_a

    .line 103
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string v3, "JSONException when deepFirstFields"

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :goto_2
    return-object v1
.end method

.method public static blacklist excludeClass(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "canonicalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 229
    .local p1, "excludeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 231
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, "canonical":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    const/4 v0, 0x1

    return v0

    .line 235
    .end local v2    # "canonical":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 237
    :cond_2
    return v0
.end method

.method public static blacklist excludePackagePrefix(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "canonicalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 241
    .local p1, "excludeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 243
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    .local v2, "canonical":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const/4 v0, 0x1

    return v0

    .line 247
    .end local v2    # "canonical":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 249
    :cond_2
    return v0
.end method

.method public static blacklist excludePrimitiveType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 211
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Object;

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Landroid/os/Bundle;

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/List;

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Landroid/net/Uri;

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 211
    :goto_1
    return v0
.end method

.method public static blacklist getAllFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 116
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :goto_0
    if-eqz p0, :cond_1

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-static {p0}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludePrimitiveType(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldClassList:Ljava/util/List;

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeClass(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludeFieldPackagePrefixList:Ljava/util/List;

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->excludePackagePrefix(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 127
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static blacklist getGenericType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "filedName"    # Ljava/lang/String;

    .line 162
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 163
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 164
    .local v1, "type":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 165
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/NoSuchFieldException;

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchFieldException when getGenericType"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    instance-of v1, v0, Ljava/lang/ClassCastException;

    if-eqz v1, :cond_1

    .line 169
    sget-object v1, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "ClassCastException when getGenericType"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static blacklist logField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v0, "object":Lorg/json/JSONObject;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "field_class_name":Ljava/lang/String;
    const-string v2, "field_class_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v2, "kotlin.Any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const-string v4, "field_value"

    if-eqz v2, :cond_0

    .line 139
    :try_start_1
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    const-string v2, "field_name"

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "parent_class_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    return-object v0

    .line 148
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "field_class_name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/IllegalAccessException;

    if-eqz v1, :cond_2

    .line 150
    sget-object v1, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "IllegalAccessException when logField"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_2
    instance-of v1, v0, Lorg/json/JSONException;

    if-eqz v1, :cond_3

    .line 152
    sget-object v1, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string v2, "JSONException when logField"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist printReflectionResult(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/teddymobile/free/anteater/rule/utils/ReflectionUtils;->deepFirstFields(Ljava/lang/Object;I)Lorg/json/JSONArray;

    move-result-object v0

    .line 48
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/teddymobile/free/anteater/rule/utils/DetectionFileUtils;->logFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
