.class Lcom/oplus/theme/OplusAppIconInfo$IconXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OplusAppIconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/theme/OplusAppIconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconXmlHandler"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/theme/OplusAppIconInfo;->-$$Nest$sfputmCurrentTag(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 79
    invoke-static {p2}, Lcom/oplus/theme/OplusAppIconInfo;->-$$Nest$sfputmCurrentTag(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->-$$Nest$sfgetmCurrentTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "iconName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->-$$Nest$sfgetmAllIconNames()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->-$$Nest$sfgetmAllIconNames()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "no_icon_name"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_0
    const-string v1, "package"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 89
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->-$$Nest$sfgetmAllPackageNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->-$$Nest$sfgetmAllIconNames()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "no_package_name"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v0    # "iconName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method
