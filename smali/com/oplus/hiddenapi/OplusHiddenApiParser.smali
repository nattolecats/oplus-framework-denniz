.class public Lcom/oplus/hiddenapi/OplusHiddenApiParser;
.super Ljava/lang/Object;
.source "OplusHiddenApiParser.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusHiddenApiParser"


# instance fields
.field private blacklist mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "OplusHiddenApiParser"

    const-string v2, "failed to get md5 algorithm"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void
.end method

.method private blacklist md5(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 6
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .line 64
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 65
    .local v0, "md5sum":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 66
    .local v1, "bigInt":Ljava/math/BigInteger;
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "output":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v4, "%32s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist parseExemptions(Ljava/io/BufferedReader;Z)Ljava/util/Map;
    .locals 7
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "needCheckMD5"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "apis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v1, "exemptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 45
    .local v2, "countOfApis":I
    const/4 v3, 0x0

    .line 47
    .local v3, "index":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 48
    if-nez v3, :cond_1

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 50
    :cond_1
    if-gt v3, v2, :cond_2

    .line 51
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_2
    invoke-direct {p0, v0, v1, v5}, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->readPackages(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 55
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->mMessageDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0

    .line 60
    :cond_3
    return-object v1
.end method

.method private blacklist readPackages(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .param p3, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    .local p1, "apis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "target":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v0, "#"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "raw":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 73
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 74
    .local v3, "rawExemptions":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "exemptionsIndex":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v5, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v6, v4

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v4, v1

    .line 77
    .local v7, "index":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v7    # "index":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/io/File;Z)Ljava/util/Map;
    .locals 7
    .param p1, "target"    # Ljava/io/File;
    .param p2, "needCheckMD5"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 26
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "expectedMD5":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->parseExemptions(Ljava/io/BufferedReader;Z)Ljava/util/Map;

    move-result-object v2

    .line 30
    .local v2, "exemptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->mMessageDigest:Ljava/security/MessageDigest;

    if-eqz v3, :cond_1

    .line 31
    invoke-direct {p0, v3}, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->md5(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "actualMD5":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "md5 check failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected md5 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " actual md5 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "this":Lcom/oplus/hiddenapi/OplusHiddenApiParser;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "needCheckMD5":Z
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v3    # "actualMD5":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/oplus/hiddenapi/OplusHiddenApiParser;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "needCheckMD5":Z
    :cond_1
    :goto_0
    nop

    .line 38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 37
    return-object v2

    .line 25
    .end local v1    # "expectedMD5":Ljava/lang/String;
    .end local v2    # "exemptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method
