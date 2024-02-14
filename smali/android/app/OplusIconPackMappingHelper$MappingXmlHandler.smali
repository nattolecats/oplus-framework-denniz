.class Landroid/app/OplusIconPackMappingHelper$MappingXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OplusIconPackMappingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusIconPackMappingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MappingXmlHandler"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .line 79
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "component"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "componentName":Ljava/lang/String;
    const-string v1, "mapping"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "mappingComponent":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, "endIndex":I
    const-string v3, ""

    .line 84
    .local v3, "packageName":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 85
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    sget-object v4, Landroid/app/OplusIconPackMappingHelper;->sMappingComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v4, Landroid/app/OplusIconPackMappingHelper;->sMappingPackageMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v1    # "mappingComponent":Ljava/lang/String;
    .end local v2    # "endIndex":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
