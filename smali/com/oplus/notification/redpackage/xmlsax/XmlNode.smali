.class public interface abstract Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
.super Ljava/lang/Object;
.source "XmlNode.java"

# interfaces
.implements Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;


# virtual methods
.method public abstract blacklist getAllAttributes()[Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;
.end method

.method public abstract blacklist getAllChildNodes()[Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
.end method

.method public abstract blacklist getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;
.end method

.method public abstract blacklist getChildNode(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
.end method

.method public abstract blacklist getChildNodes(Ljava/lang/String;)[Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
.end method

.method public abstract blacklist numOfAllAttributes()I
.end method

.method public abstract blacklist numOfAllChildNodes()I
.end method

.method public abstract blacklist toXml()Ljava/lang/String;
.end method
