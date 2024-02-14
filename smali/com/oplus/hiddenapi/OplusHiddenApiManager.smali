.class public Lcom/oplus/hiddenapi/OplusHiddenApiManager;
.super Ljava/lang/Object;
.source "OplusHiddenApiManager.java"

# interfaces
.implements Lcom/oplus/hiddenapi/IOplusHiddenApiManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;
    }
.end annotation


# static fields
.field private static final blacklist LENGTH_THRESHOLD:I = 0x2710

.field public static final blacklist TAG:Ljava/lang/String; = "OplusHiddenApiManager"

.field private static volatile blacklist sInstance:Lcom/oplus/hiddenapi/OplusHiddenApiManager;


# instance fields
.field private blacklist mExemptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mExemptionsCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInitialed:Z

.field private volatile blacklist mNeedSkipSetExemptions:Z

.field private final blacklist mParser:Lcom/oplus/hiddenapi/OplusHiddenApiParser;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmNeedSkipSetExemptions(Lcom/oplus/hiddenapi/OplusHiddenApiManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mNeedSkipSetExemptions:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptionsCount:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mNeedSkipSetExemptions:Z

    .line 38
    iput-boolean v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mInitialed:Z

    .line 74
    new-instance v0, Lcom/oplus/hiddenapi/OplusHiddenApiParser;

    invoke-direct {v0}, Lcom/oplus/hiddenapi/OplusHiddenApiParser;-><init>()V

    iput-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mParser:Lcom/oplus/hiddenapi/OplusHiddenApiParser;

    .line 75
    invoke-direct {p0}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->parseExemptions()V

    .line 76
    invoke-direct {p0}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->verifyExemptions()V

    .line 77
    return-void
.end method

.method private blacklist applyPatch(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 166
    .local p1, "patchExemptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 172
    .local v3, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 173
    iget-object v4, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 177
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    goto :goto_0

    .line 178
    :cond_2
    return-void
.end method

.method private blacklist applyPatches(Ljava/io/File;)V
    .locals 7
    .param p1, "patchDir"    # Ljava/io/File;

    .line 151
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 152
    .local v0, "patchFiles":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 157
    .local v3, "patchFile":Ljava/io/File;
    :try_start_0
    iget-object v4, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mParser:Lcom/oplus/hiddenapi/OplusHiddenApiParser;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->parse(Ljava/io/File;Z)Ljava/util/Map;

    move-result-object v4

    .line 158
    .local v4, "patchExemptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {p0, v4}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->applyPatch(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v4    # "patchExemptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_1

    .line 159
    :catch_0
    move-exception v4

    .line 160
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsing patch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusHiddenApiManager"

    invoke-static {v6, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v3    # "patchFile":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method private blacklist computeLength(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 126
    .local p1, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "length":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 129
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 130
    :cond_0
    return v0
.end method

.method private blacklist dumpAll(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 226
    iget-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "exemptions is empty\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 233
    .local v3, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v2, v3}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->dumpPackage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V

    .line 234
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 235
    :cond_1
    return-void
.end method

.method private blacklist dumpPackage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p3, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidden api exemptions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptionsCount:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 240
    .local v0, "totalLength":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warning!!! Total length of hidden-api exemptions is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " over limit:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set hidden-api exemptions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will fail.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 244
    :cond_0
    const-string v1, "        "

    .line 245
    .local v1, "indent":Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 250
    .local v3, "api":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 252
    .end local v3    # "api":Ljava/lang/String;
    goto :goto_0

    .line 246
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 247
    const-string v2, "empty"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 254
    :cond_3
    return-void
.end method

.method private blacklist getExemptionsInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptionsCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, "totalLength":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 199
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set hidden-api exemption failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "!!! Total length of hidden-api exemptions is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " over limit:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusHiddenApiManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 206
    .local v1, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 209
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public static blacklist getInstance()Lcom/oplus/hiddenapi/OplusHiddenApiManager;
    .locals 2

    .line 55
    invoke-static {}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->isSystemProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "OplusHiddenApiManager"

    const-string v1, "OplusHiddenApiManager is being accessed by a process other than system_server."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    sget-object v0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->sInstance:Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    if-nez v0, :cond_2

    .line 60
    const-class v0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->sInstance:Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    if-nez v1, :cond_1

    .line 62
    new-instance v1, Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    invoke-direct {v1}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;-><init>()V

    sput-object v1, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->sInstance:Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    .line 64
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_2
    :goto_0
    sget-object v0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->sInstance:Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    return-object v0
.end method

.method private static blacklist isSystemProcess()Z
    .locals 2

    .line 70
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist parseBaseConfig()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc"

    const-string v2, "hidden_api_exemptions"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "baseConfigFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    iget-object v2, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mParser:Lcom/oplus/hiddenapi/OplusHiddenApiParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/oplus/hiddenapi/OplusHiddenApiParser;->parse(Ljava/io/File;Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 139
    :cond_0
    return-void
.end method

.method private blacklist parseExemptions()V
    .locals 1

    .line 105
    invoke-static {}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->isSystemProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->parseBaseConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    invoke-direct {p0}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->parsePatches()V

    .line 114
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method private blacklist parsePatches()V
    .locals 5

    .line 142
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "oplus"

    const-string v2, "os"

    const-string v3, "hidden_api_config"

    const-string v4, "patch"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, "patchDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, v0}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->applyPatches(Ljava/io/File;)V

    .line 147
    :cond_0
    return-void
.end method

.method private blacklist verifyExemptions()V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 120
    .local v3, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v3}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->computeLength(Ljava/util/Set;)I

    move-result v4

    .line 121
    .local v4, "totalLength":I
    iget-object v5, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptionsCount:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "totalLength":I
    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 214
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v1, v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->dumpAll(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 216
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 217
    aget-object v0, p2, v0

    .line 218
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mExemptions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 219
    .local v1, "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->dumpPackage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V

    .line 220
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "exemptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 221
    :cond_1
    const-string v0, "nothing to dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void
.end method

.method public blacklist getExemptions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 184
    .local v0, "myUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 185
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mNeedSkipSetExemptions:Z

    if-nez v1, :cond_1

    .line 187
    invoke-direct {p0, p1}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->getExemptionsInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 189
    :cond_1
    const-string v1, "OplusHiddenApiManager"

    const-string v2, "skip get hidden api exemptions from manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist initAndRegisterSettingsListener(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 81
    sget-boolean v0, Lcom/oplus/hiddenapi/IOplusHiddenApiManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "OplusHiddenApiManager"

    const-string v1, "initAndRegisterSettingsListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    const-class v0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mInitialed:Z

    if-eqz v1, :cond_2

    .line 90
    monitor-exit v0

    return-void

    .line 92
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mInitialed:Z

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hidden_api_blacklist_exemptions"

    .line 95
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;

    invoke-direct {v3, p0, p2, p1}, Lcom/oplus/hiddenapi/OplusHiddenApiManager$HiddenApiBlackListExemptionsObserver;-><init>(Lcom/oplus/hiddenapi/OplusHiddenApiManager;Landroid/os/Handler;Landroid/content/Context;)V

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hidden_api_blacklist_exemptions"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "exemptions":Ljava/lang/String;
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->mNeedSkipSetExemptions:Z

    .line 102
    return-void

    .line 93
    .end local v0    # "exemptions":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 85
    :cond_4
    :goto_1
    const-string v0, "OplusHiddenApiManager"

    const-string v1, "bad args in initAndRegisterSettingsListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
