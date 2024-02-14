.class public Lcom/oplus/notification/redpackage/RUSUpgradeUtils;
.super Ljava/lang/Object;
.source "RUSUpgradeUtils.java"


# static fields
.field public static final blacklist ATTRIBUTE_CONTENT_TAG:Ljava/lang/String; = "content_tag"

.field public static final blacklist ATTRIBUTE_FILTER_FIELD:Ljava/lang/String; = "filter_field"

.field public static final blacklist ATTRIBUTE_FILTER_VALUE:Ljava/lang/String; = "filter_value"

.field public static final blacklist ATTRIBUTE_GROUP_TAG:Ljava/lang/String; = "group_tag"

.field public static final blacklist ATTRIBUTE_KEY_VERSION:Ljava/lang/String; = "pkg_version"

.field public static final blacklist ATTRIBUTE_USER_FIELD:Ljava/lang/String; = "user_field"

.field public static final blacklist ATTRIBUTE_USER_NAME_TAG_FIRST:Ljava/lang/String; = "user_name_tag_first"

.field public static final blacklist ATTRIBUTE_USER_NAME_TAG_LAST:Ljava/lang/String; = "user_name_tag_last"

.field public static final blacklist COLUMN_NAME_XML:Ljava/lang/String; = "xml"

.field private static final blacklist DEBUG:Z

.field public static final blacklist KEY_CONFIG:Ljava/lang/String; = "config"

.field public static final blacklist KEY_REDPACKAGE:Ljava/lang/String; = "redpackage"

.field private static final blacklist ROM_UPDATE_CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist XML_KEY_VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 60
    const-class v0, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    .line 61
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    .line 62
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->ROM_UPDATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getConfigVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "xmlValue"    # Ljava/lang/String;

    .line 224
    const-string v0, ""

    .line 225
    .local v0, "version":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    return-object v0

    .line 229
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/oplus/notification/redpackage/xmlsax/XmlParse;->builder()Lcom/oplus/notification/redpackage/xmlsax/XmlParse;

    move-result-object v1

    .line 230
    .local v1, "xmlParse":Lcom/oplus/notification/redpackage/xmlsax/XmlParse;
    invoke-virtual {v1, p0}, Lcom/oplus/notification/redpackage/xmlsax/XmlParse;->parse(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/Xml;

    move-result-object v2

    .line 231
    .local v2, "xml":Lcom/oplus/notification/redpackage/xmlsax/Xml;
    const/4 v3, 0x0

    .line 232
    .local v3, "rootNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    const/4 v4, 0x0

    .line 233
    .local v4, "versionNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    invoke-interface {v2}, Lcom/oplus/notification/redpackage/xmlsax/Xml;->getRootNode()Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    move-result-object v5

    move-object v3, v5

    .line 234
    if-eqz v3, :cond_1

    .line 235
    const-string v5, "version"

    invoke-interface {v3, v5}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getChildNode(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    move-result-object v5

    move-object v4, v5

    .line 237
    :cond_1
    if-eqz v4, :cond_2

    .line 238
    invoke-interface {v4}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 245
    .end local v1    # "xmlParse":Lcom/oplus/notification/redpackage/xmlsax/XmlParse;
    .end local v2    # "xml":Lcom/oplus/notification/redpackage/xmlsax/Xml;
    .end local v3    # "rootNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    .end local v4    # "versionNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    :cond_2
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    sget-object v2, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigVersion--e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 247
    sget-object v1, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_4
    return-object v0
.end method

.method public static blacklist getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filterName"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 69
    .local v1, "xmlValue":Ljava/lang/String;
    const-string v2, "xml"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->ROM_UPDATE_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filtername=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 74
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 75
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, "xmlColumnIndex":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 77
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 78
    .end local v2    # "xmlColumnIndex":I
    goto :goto_0

    .line 79
    :cond_0
    sget-object v2, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    const-string v3, "The Filtrate app cursor is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v0, 0x0

    .line 87
    :cond_1
    return-object v1

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_2
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    const-string v4, "We can not get Filtrate app data from provider"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v3, 0x0

    return-object v3
.end method

.method public static blacklist getDataVersionFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configName"    # Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataVersionFromProvider configName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, ""

    .line 103
    .local v1, "version":Ljava/lang/String;
    const-string v2, "version"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->ROM_UPDATE_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filtername=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 107
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 108
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, "versionColumnIndex":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 110
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 114
    .end local v2    # "versionColumnIndex":I
    :cond_0
    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v0, 0x0

    .line 124
    :cond_1
    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v0, 0x0

    .line 123
    :cond_2
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We can not get data version with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from provider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static blacklist getRedPackageRUSVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys_systemui_redpackage_assist_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .line 209
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, -0x1

    .line 211
    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    return-object v2

    .line 209
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "is":Ljava/io/InputStream;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 215
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 217
    sget-object v1, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputStream2String--e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist parseRedPackageAsTag(Lcom/oplus/notification/redpackage/xmlsax/XmlNode;)Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;
    .locals 10
    .param p0, "xmlNode"    # Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    .line 173
    const-string v0, "content_tag"

    const-string v1, "user_name_tag_last"

    const-string v2, "user_name_tag_first"

    const-string v3, "group_tag"

    const-string v4, "user_field"

    const-string v5, "filter_value"

    const-string v6, "filter_field"

    const-string v7, "pkg_version"

    const/4 v8, 0x0

    .line 175
    .local v8, "redpackageItem":Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;
    :try_start_0
    new-instance v9, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;

    invoke-direct {v9}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;-><init>()V

    move-object v8, v9

    .line 176
    invoke-interface {p0, v7}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 177
    invoke-interface {p0, v7}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v7

    invoke-interface {v7}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setPkgVersion(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-interface {p0, v6}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 180
    invoke-interface {p0, v6}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v6

    invoke-interface {v6}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeFilterField(Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-interface {p0, v5}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 183
    invoke-interface {p0, v5}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeFilterValue(Ljava/lang/String;)V

    .line 185
    :cond_2
    invoke-interface {p0, v4}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 186
    invoke-interface {p0, v4}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeUserField(Ljava/lang/String;)V

    .line 188
    :cond_3
    invoke-interface {p0, v3}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 189
    invoke-interface {p0, v3}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeGroupTag(Ljava/lang/String;)V

    .line 191
    :cond_4
    invoke-interface {p0, v2}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 192
    invoke-interface {p0, v2}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeUserNameTagFirst(Ljava/lang/String;)V

    .line 194
    :cond_5
    invoke-interface {p0, v1}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 195
    invoke-interface {p0, v1}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeUserNameTagLast(Ljava/lang/String;)V

    .line 197
    :cond_6
    invoke-interface {p0, v0}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 198
    invoke-interface {p0, v0}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeContentTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_7
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 202
    sget-object v1, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseAsPackageTag:error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_0
    return-object v8
.end method

.method public static blacklist parseRedpackageString2List(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "xmlValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "tempEnvelopeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/oplus/notification/redpackage/xmlsax/XmlParse;->builder()Lcom/oplus/notification/redpackage/xmlsax/XmlParse;

    move-result-object v1

    .line 142
    .local v1, "xmlParse":Lcom/oplus/notification/redpackage/xmlsax/XmlParse;
    invoke-virtual {v1, p0}, Lcom/oplus/notification/redpackage/xmlsax/XmlParse;->parse(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/Xml;

    move-result-object v2

    .line 143
    .local v2, "xml":Lcom/oplus/notification/redpackage/xmlsax/Xml;
    invoke-interface {v2}, Lcom/oplus/notification/redpackage/xmlsax/Xml;->getRootNode()Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    move-result-object v3

    .line 145
    .local v3, "rootNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    invoke-interface {v3}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAllChildNodes()[Lcom/oplus/notification/redpackage/xmlsax/XmlNode;

    move-result-object v4

    .line 146
    .local v4, "xmlNodeList":[Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 147
    .local v7, "xmlNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    const-string v8, "redpackage"

    invoke-interface {v7}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 148
    const-string v8, "pkg_version"

    invoke-interface {v7, v8}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->getAttribute(Ljava/lang/String;)Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;

    move-result-object v8

    .line 149
    .local v8, "attrPkg":Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;
    if-eqz v8, :cond_1

    .line 150
    invoke-static {v7}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->parseRedPackageAsTag(Lcom/oplus/notification/redpackage/xmlsax/XmlNode;)Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;

    move-result-object v9

    .line 151
    .local v9, "redpackageConfig":Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;
    sget-boolean v10, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 152
    sget-object v10, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the node AdaptationEnvelopeInfo is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    nop

    .end local v9    # "redpackageConfig":Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;
    goto :goto_1

    .line 156
    :cond_1
    sget-boolean v9, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 157
    sget-object v9, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseConfigList: pkg is null:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->toXml()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v8    # "attrPkg":Lcom/oplus/notification/redpackage/xmlsax/XmlAttribute;
    :cond_2
    :goto_1
    goto :goto_2

    .line 161
    :cond_3
    sget-boolean v8, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 162
    sget-object v8, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseConfigList:warning:unknown tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lcom/oplus/notification/redpackage/xmlsax/XmlNode;->toXml()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v7    # "xmlNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 168
    .end local v1    # "xmlParse":Lcom/oplus/notification/redpackage/xmlsax/XmlParse;
    .end local v2    # "xml":Lcom/oplus/notification/redpackage/xmlsax/Xml;
    .end local v3    # "rootNode":Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    .end local v4    # "xmlNodeList":[Lcom/oplus/notification/redpackage/xmlsax/XmlNode;
    :cond_5
    goto :goto_3

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseConfigList:error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",xml="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method

.method public static blacklist saveStrToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 253
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 256
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/os/notification"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "redPackageAssistConfigDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed create path, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v1, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveStrToFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    goto :goto_1

    .line 270
    :catch_1
    move-exception v2

    .line 271
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed write file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    invoke-static {v1, p2}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->writeStrToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    return-void

    .line 254
    .end local v0    # "redPackageAssistConfigDirectory":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    :goto_2
    return-void
.end method

.method public static blacklist setRedPackageRUSVersion2Local(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys_systemui_redpackage_assist_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 131
    return-void
.end method

.method private static blacklist writeStrToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "str"    # Ljava/lang/String;

    .line 278
    const-string v0, "failed write file "

    if-nez p0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 283
    .local v1, "fileos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 284
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 285
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    nop

    .line 297
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    :cond_1
    :goto_0
    goto/16 :goto_2

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 295
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 292
    :catch_1
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 297
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 299
    :catch_2
    move-exception v2

    .line 300
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 290
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 291
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 297
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 299
    :catch_4
    move-exception v2

    .line 300
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 288
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    if-eqz v1, :cond_1

    .line 297
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 299
    :catch_6
    move-exception v2

    .line 300
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    .line 286
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_8
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 296
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v1, :cond_1

    .line 297
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    .line 299
    :catch_8
    move-exception v2

    .line 300
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    .line 303
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 296
    :goto_3
    if-eqz v1, :cond_2

    .line 297
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_4

    .line 299
    :catch_9
    move-exception v3

    .line 300
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 301
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 302
    :goto_5
    throw v2
.end method
