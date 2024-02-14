.class Landroid/app/OplusUxDrawableMappingHelper$MappingXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OplusUxDrawableMappingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusUxDrawableMappingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingXmlHandler"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/OplusUxDrawableMappingHelper$MappingXmlHandler-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/OplusUxDrawableMappingHelper$MappingXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .line 80
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "package"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-static {}, Landroid/app/OplusUxDrawableMappingHelper;->-$$Nest$sfgetsMappingPackageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
