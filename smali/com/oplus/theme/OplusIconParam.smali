.class public Lcom/oplus/theme/OplusIconParam;
.super Ljava/lang/Object;
.source "OplusIconParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/theme/OplusIconParam$ThemeXmlHandler;
    }
.end annotation


# static fields
.field private static final blacklist LOGE:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusIconParam"

.field private static final blacklist TAG_DETECT_MASK_BORDER_OFFSET:Ljava/lang/String; = "DetectMaskBorderOffset"

.field private static final blacklist TAG_SCALE:Ljava/lang/String; = "Scale"

.field private static final blacklist TAG_XOFFSETPCT:Ljava/lang/String; = "XOffsetPCT"

.field private static final blacklist TAG_YOFFSETPCT:Ljava/lang/String; = "YOffsetPCT"


# instance fields
.field public whitelist mCurrentTag:Ljava/lang/String;

.field public whitelist mDetectMaskBorderOffset:F

.field public whitelist mPath:Ljava/lang/String;

.field public whitelist mScale:F

.field public whitelist mXOffsetPCT:F

.field public whitelist mYOffsetPCT:F


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/theme/OplusIconParam;->mScale:F

    .line 42
    iput v0, p0, Lcom/oplus/theme/OplusIconParam;->mXOffsetPCT:F

    .line 43
    iput v0, p0, Lcom/oplus/theme/OplusIconParam;->mYOffsetPCT:F

    .line 44
    const v0, 0x3d851eb8    # 0.065f

    iput v0, p0, Lcom/oplus/theme/OplusIconParam;->mDetectMaskBorderOffset:F

    .line 54
    iput-object p1, p0, Lcom/oplus/theme/OplusIconParam;->mPath:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist getDetectMaskBorderOffset()F
    .locals 1

    .line 185
    iget v0, p0, Lcom/oplus/theme/OplusIconParam;->mDetectMaskBorderOffset:F

    return v0
.end method

.method public whitelist getPath()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oplus/theme/OplusIconParam;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScale()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/oplus/theme/OplusIconParam;->mScale:F

    return v0
.end method

.method public whitelist getXOffset()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/oplus/theme/OplusIconParam;->mXOffsetPCT:F

    return v0
.end method

.method public whitelist getYOffset()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/oplus/theme/OplusIconParam;->mYOffsetPCT:F

    return v0
.end method

.method public whitelist myLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 61
    return-void
.end method

.method public whitelist parseXml()Z
    .locals 9

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "path":Ljava/lang/String;
    sget-boolean v1, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z

    if-nez v1, :cond_0

    .line 98
    sget-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/oplus/theme/OplusThemeUtil;->getDefaultThemePath()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    const/4 v1, 0x0

    .line 103
    .local v1, "param":Ljava/util/zip/ZipFile;
    invoke-static {v0}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "launcherName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, "input":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/oplus/theme/OplusIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 109
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-nez v5, :cond_1

    .line 110
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 111
    const-string v6, "parseXml:entry is null"

    invoke-virtual {p0, v6}, Lcom/oplus/theme/OplusIconParam;->myLog(Ljava/lang/String;)V

    .line 112
    return v3

    .line 114
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    move-object v4, v6

    .line 115
    if-nez v4, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 117
    const-string v6, "parseXml:input is null"

    invoke-virtual {p0, v6}, Lcom/oplus/theme/OplusIconParam;->myLog(Ljava/lang/String;)V

    .line 118
    return v3

    .line 121
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 122
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .line 123
    .local v7, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v8, Lcom/oplus/theme/OplusIconParam$ThemeXmlHandler;

    invoke-direct {v8, p0}, Lcom/oplus/theme/OplusIconParam$ThemeXmlHandler;-><init>(Lcom/oplus/theme/OplusIconParam;)V

    invoke-virtual {v7, v4, v8}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 124
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 125
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    nop

    .line 133
    const/4 v3, 0x1

    return v3

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXml. ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusIconParam"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v3

    .line 126
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 127
    .local v4, "zEx":Ljava/util/zip/ZipException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXml:ZipFile is destroyed, mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/theme/OplusIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oplus/theme/OplusIconParam;->myLog(Ljava/lang/String;)V

    .line 128
    return v3
.end method

.method public whitelist parseXmlForUser(I)Z
    .locals 9
    .param p1, "userId"    # I

    .line 137
    sget-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 138
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "param":Ljava/util/zip/ZipFile;
    invoke-static {v0}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "launcherName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "input":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/oplus/theme/OplusIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 145
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-nez v5, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 147
    const-string v6, "parseXml:entry is null"

    invoke-virtual {p0, v6}, Lcom/oplus/theme/OplusIconParam;->myLog(Ljava/lang/String;)V

    .line 148
    return v3

    .line 150
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    move-object v4, v6

    .line 151
    if-nez v4, :cond_1

    .line 152
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 153
    const-string v6, "parseXml:input is null"

    invoke-virtual {p0, v6}, Lcom/oplus/theme/OplusIconParam;->myLog(Ljava/lang/String;)V

    .line 154
    return v3

    .line 157
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 158
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .line 159
    .local v7, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v8, Lcom/oplus/theme/OplusIconParam$ThemeXmlHandler;

    invoke-direct {v8, p0}, Lcom/oplus/theme/OplusIconParam$ThemeXmlHandler;-><init>(Lcom/oplus/theme/OplusIconParam;)V

    invoke-virtual {v7, v4, v8}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 160
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 161
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v7    # "saxParser":Ljavax/xml/parsers/SAXParser;
    nop

    .line 169
    const/4 v3, 0x1

    return v3

    .line 165
    :catch_0
    move-exception v4

    .line 166
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXml. ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusIconParam"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v3

    .line 162
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 163
    .local v4, "zEx":Ljava/util/zip/ZipException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXml:ZipFile is destroyed, mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/theme/OplusIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oplus/theme/OplusIconParam;->myLog(Ljava/lang/String;)V

    .line 164
    return v3
.end method
