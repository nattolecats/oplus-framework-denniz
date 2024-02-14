.class Lcom/oplus/notification/redpackage/xmlsax/XmlImpl;
.super Ljava/lang/Object;
.source "XmlImpl.java"

# interfaces
.implements Lcom/oplus/notification/redpackage/xmlsax/Xml;


# instance fields
.field private blacklist mXmlNode:Lcom/oplus/notification/redpackage/xmlsax/XmlNode;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist getRootNode()Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlImpl;->mXmlNode:Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    return-object v0
.end method

.method protected blacklist setmXmlNode(Lcom/oplus/notification/redpackage/xmlsax/XmlNode;)V
    .locals 0
    .param p1, "mXmlNode"    # Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    .line 29
    iput-object p1, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlImpl;->mXmlNode:Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    .line 30
    return-void
.end method

.method public blacklist toXml()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlImpl;->mXmlNode:Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    invoke-interface {v0}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->toXml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
