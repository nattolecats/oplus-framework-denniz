.class Lcom/oplus/notification/redpackage/xmlsax/XmlAttributeImpl;
.super Ljava/lang/Object;
.source "XmlAttributeImpl.java"

# interfaces
.implements Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mParent:Lcom/oplus/notification/redpackage/xmlsax/XmlNodeImpl;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlAttributeImpl;->mName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlAttributeImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParentNode()Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlAttributeImpl;->mParent:Lcom/oplus/notification/redpackage/xmlsax/XmlNodeImpl;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlAttributeImpl;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setParentNode(Lcom/oplus/notification/redpackage/xmlsax/XmlNodeImpl;)V
    .locals 0
    .param p1, "parent"    # Lcom/oplus/notification/redpackage/xmlsax/XmlNodeImpl;

    .line 44
    iput-object p1, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlAttributeImpl;->mParent:Lcom/oplus/notification/redpackage/xmlsax/XmlNodeImpl;

    .line 45
    return-void
.end method

.method protected blacklist setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/oplus/notification/redpackage/xmlsax/XmlAttributeImpl;->mValue:Ljava/lang/String;

    .line 29
    return-void
.end method
