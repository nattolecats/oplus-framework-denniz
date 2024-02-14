.class Landroid/app/OplusIconPackMappingHelper;
.super Ljava/lang/Object;
.source "OplusIconPackMappingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/OplusIconPackMappingHelper$MappingXmlHandler;
    }
.end annotation


# static fields
.field public static final blacklist MAPPING_NAME:Ljava/lang/String; = "packMapping.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "IconPackMappingHelper"

.field public static final blacklist sMappingComponentMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sMappingPackageMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sParsed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/OplusIconPackMappingHelper;->sMappingComponentMap:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/OplusIconPackMappingHelper;->sMappingPackageMap:Landroid/util/ArrayMap;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OplusIconPackMappingHelper;->sParsed:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMappingComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "realComponent"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 96
    sget-object v0, Landroid/app/OplusIconPackMappingHelper;->sMappingComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "mappingComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Landroid/app/OplusIconPackMappingHelper;->sMappingPackageMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 100
    :cond_0
    return-object v0
.end method

.method public static blacklist parsePackMapping()V
    .locals 11

    .line 43
    const-string v0, "parsePackMapping-time : "

    const-string v1, "input error"

    const-string v2, "parsePackMapping"

    const-string v3, "lqc"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 44
    .local v4, "time":J
    sget-boolean v6, Landroid/app/OplusIconPackMappingHelper;->sParsed:Z

    if-eqz v6, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    const-string v6, "IconPackMappingHelper"

    const-string v7, "start parsePackMapping"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v6, 0x0

    .line 50
    .local v6, "input":Ljava/io/InputStream;
    const/4 v7, 0x1

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_DEFAULT_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "packMapping.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 51
    sget-object v8, Landroid/app/OplusIconPackMappingHelper;->sMappingComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 52
    invoke-static {v6}, Landroid/app/OplusIconPackMappingHelper;->parseXml(Ljava/io/InputStream;)V

    .line 53
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    nop

    .line 59
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 61
    sput-boolean v7, Landroid/app/OplusIconPackMappingHelper;->sParsed:Z

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :goto_0
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v8

    goto :goto_2

    .line 54
    :catch_1
    move-exception v8

    .line 55
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .end local v8    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_1

    .line 59
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 61
    :cond_1
    sput-boolean v7, Landroid/app/OplusIconPackMappingHelper;->sParsed:Z

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 67
    :goto_1
    return-void

    .line 58
    :goto_2
    if-eqz v6, :cond_2

    .line 59
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 61
    :cond_2
    sput-boolean v7, Landroid/app/OplusIconPackMappingHelper;->sParsed:Z

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 65
    goto :goto_3

    .line 63
    :catch_2
    move-exception v0

    .line 64
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    throw v8
.end method

.method public static blacklist parseXml(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 71
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 72
    .local v1, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Landroid/app/OplusIconPackMappingHelper$MappingXmlHandler;

    invoke-direct {v2}, Landroid/app/OplusIconPackMappingHelper$MappingXmlHandler;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 73
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 74
    return-void
.end method
