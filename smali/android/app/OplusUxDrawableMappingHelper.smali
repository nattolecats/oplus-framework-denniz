.class public Landroid/app/OplusUxDrawableMappingHelper;
.super Ljava/lang/Object;
.source "OplusUxDrawableMappingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/OplusUxDrawableMappingHelper$MappingXmlHandler;
    }
.end annotation


# static fields
.field private static final blacklist MAPPING_NAME:Ljava/lang/String; = "drawableMapping.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusUxDrawableMappingHelper"

.field private static final blacklist sMappingPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sParsed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsMappingPackageList()Ljava/util/List;
    .locals 1

    sget-object v0, Landroid/app/OplusUxDrawableMappingHelper;->sMappingPackageList:Ljava/util/List;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/OplusUxDrawableMappingHelper;->sMappingPackageList:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OplusUxDrawableMappingHelper;->sParsed:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist containsPackageName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/app/OplusUxDrawableMappingHelper;->sMappingPackageList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized blacklist parsePackMapping()V
    .locals 6

    const-class v0, Landroid/app/OplusUxDrawableMappingHelper;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-boolean v1, Landroid/app/OplusUxDrawableMappingHelper;->sParsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 44
    monitor-exit v0

    return-void

    .line 46
    :cond_0
    :try_start_1
    const-string v1, "OplusUxDrawableMappingHelper"

    const-string v2, "start parsePackMapping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_DEFAULT_PATH:Ljava/lang/String;

    const-string v5, "drawableMapping.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 50
    sget-object v2, Landroid/app/OplusUxDrawableMappingHelper;->sMappingPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 51
    invoke-static {v1}, Landroid/app/OplusUxDrawableMappingHelper;->parseXml(Ljava/io/InputStream;)V

    .line 52
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/OplusUxDrawableMappingHelper;->sParsed:Z

    .line 53
    const-string v3, "OplusUxDrawableMappingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsePackMapping success--->size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    nop

    .line 59
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :cond_1
    :goto_0
    goto :goto_2

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "OplusUxDrawableMappingHelper"

    const-string v4, "parsePackMapping input error"

    :goto_1
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 57
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 54
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "OplusUxDrawableMappingHelper"

    const-string v4, "parsePackMapping parseXml error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 59
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 61
    :catch_2
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_7
    const-string v3, "OplusUxDrawableMappingHelper"

    const-string v4, "parsePackMapping input error"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 65
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    return-void

    .line 58
    :goto_3
    if-eqz v1, :cond_2

    .line 59
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 61
    :catch_3
    move-exception v3

    .line 62
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_9
    const-string v4, "OplusUxDrawableMappingHelper"

    const-string v5, "parsePackMapping input error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 63
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_4
    nop

    .line 64
    :goto_5
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 42
    .end local v1    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static blacklist parseXml(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 69
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 70
    .local v1, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Landroid/app/OplusUxDrawableMappingHelper$MappingXmlHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/OplusUxDrawableMappingHelper$MappingXmlHandler;-><init>(Landroid/app/OplusUxDrawableMappingHelper$MappingXmlHandler-IA;)V

    invoke-virtual {v1, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 71
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 72
    return-void
.end method
