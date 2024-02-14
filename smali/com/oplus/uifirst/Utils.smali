.class public Lcom/oplus/uifirst/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uifirst/Utils$ThreadOp;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z

.field static final blacklist PROCESS_COMM_FORMAT:[I

.field static final blacklist PROJECT_NUMBER:Ljava/lang/String; = "ro.separate.soft"

.field static final blacklist TAG:Ljava/lang/String; = "OplusUIFirst"

.field static final blacklist THREAD_EVENT_ADD_GLTHREAD:Ljava/lang/String; = "add_gl"

.field static final blacklist THREAD_EVENT_LAUNCH:Ljava/lang/String; = "launch"

.field static final blacklist THREAD_EVENT_RESUME_ACTIVITY:Ljava/lang/String; = "resume"

.field static final blacklist THREAD_EVENT_START_ACTIVITY:Ljava/lang/String; = "start"

.field static final blacklist THREAD_EVENT_START_PROCESS:Ljava/lang/String; = "start_p"

.field static final blacklist THREAD_EVENT_TO_FORE:Ljava/lang/String; = "to_fore"

.field static final blacklist THREAD_EVENT_TO_TOP:Ljava/lang/String; = "to_top"

.field static final blacklist THREAD_MODE_ONESHOT:Ljava/lang/String; = "oneshot"

.field static final blacklist THREAD_MODE_REPEAT:Ljava/lang/String; = "repeat"

.field static blacklist mPlatform:Lcom/oplus/uifirst/Platform;

.field static blacklist mProjectNumber:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 34
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.agingtest"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    .line 49
    new-array v0, v2, [I

    const/16 v2, 0x1000

    aput v2, v0, v1

    sput-object v0, Lcom/oplus/uifirst/Utils;->PROCESS_COMM_FORMAT:[I

    .line 52
    sget-object v0, Lcom/oplus/uifirst/Platform;->NONE:Lcom/oplus/uifirst/Platform;

    sput-object v0, Lcom/oplus/uifirst/Utils;->mPlatform:Lcom/oplus/uifirst/Platform;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/uifirst/Utils;->mProjectNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist findMatchedTids(ILjava/lang/String;)Landroid/util/IntArray;
    .locals 9
    .param p0, "pid"    # I
    .param p1, "pattern"    # Ljava/lang/String;

    .line 166
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 168
    .local v0, "array":Landroid/util/IntArray;
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 170
    .local v1, "r":Ljava/util/regex/Pattern;
    const/16 v2, 0x80

    new-array v2, v2, [I

    .line 171
    .local v2, "tids":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v3

    move-object v2, v3

    .line 174
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 176
    .local v5, "tid":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 177
    goto :goto_1

    .line 179
    :cond_0
    invoke-static {v5}, Lcom/oplus/uifirst/Utils;->readProcComm(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "comm":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 181
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 182
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 183
    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v5    # "tid":I
    .end local v6    # "comm":Ljava/lang/String;
    .end local v7    # "m":Ljava/util/regex/Matcher;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "r":Ljava/util/regex/Pattern;
    .end local v2    # "tids":[I
    :cond_2
    :goto_1
    goto :goto_2

    .line 187
    :catch_0
    move-exception v1

    .line 191
    :goto_2
    sget-boolean v1, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findMatchedTids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pattern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUIFirst"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    return-object v0
.end method

.method static blacklist getPidsByUid(I)Landroid/util/IntArray;
    .locals 6
    .param p0, "uid"    # I

    .line 198
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 200
    .local v0, "array":Landroid/util/IntArray;
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [I

    .line 201
    .local v1, "pids":[I
    const-string v2, "/proc/"

    invoke-static {v2, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v2

    move-object v1, v2

    .line 203
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 205
    .local v4, "pid":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 206
    goto :goto_1

    .line 208
    :cond_0
    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 209
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v4    # "pid":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "pids":[I
    :cond_2
    :goto_1
    goto :goto_2

    .line 212
    :catch_0
    move-exception v1

    .line 215
    :goto_2
    sget-boolean v1, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPidByUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUIFirst"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_3
    return-object v0
.end method

.method static blacklist getProjectNumber()Ljava/lang/String;
    .locals 2

    .line 70
    sget-object v0, Lcom/oplus/uifirst/Utils;->mProjectNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "ro.separate.soft"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/uifirst/Utils;->mProjectNumber:Ljava/lang/String;

    .line 73
    :cond_0
    sget-object v0, Lcom/oplus/uifirst/Utils;->mProjectNumber:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist getVendorPlatform()Lcom/oplus/uifirst/Platform;
    .locals 2

    .line 56
    sget-object v0, Lcom/oplus/uifirst/Utils;->mPlatform:Lcom/oplus/uifirst/Platform;

    sget-object v1, Lcom/oplus/uifirst/Platform;->NONE:Lcom/oplus/uifirst/Platform;

    if-ne v0, v1, :cond_2

    .line 57
    const-string v0, "ro.boot.hardware"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/oplus/uifirst/Platform;->QCOM:Lcom/oplus/uifirst/Platform;

    sput-object v1, Lcom/oplus/uifirst/Utils;->mPlatform:Lcom/oplus/uifirst/Platform;

    goto :goto_0

    .line 60
    :cond_0
    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    sget-object v1, Lcom/oplus/uifirst/Platform;->MTK:Lcom/oplus/uifirst/Platform;

    sput-object v1, Lcom/oplus/uifirst/Utils;->mPlatform:Lcom/oplus/uifirst/Platform;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v1, Lcom/oplus/uifirst/Platform;->UNKNOWN:Lcom/oplus/uifirst/Platform;

    sput-object v1, Lcom/oplus/uifirst/Utils;->mPlatform:Lcom/oplus/uifirst/Platform;

    .line 66
    .end local v0    # "prop":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v0, Lcom/oplus/uifirst/Utils;->mPlatform:Lcom/oplus/uifirst/Platform;

    return-object v0
.end method

.method static blacklist isMatchedTid(ILjava/lang/String;)Z
    .locals 2
    .param p0, "tid"    # I
    .param p1, "pattern"    # Ljava/lang/String;

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/oplus/uifirst/Utils;->readProcComm(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "comm":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 157
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 161
    .end local v0    # "comm":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 162
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist parseThreadOp(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation

    .line 239
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :try_start_0
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v2, "reader":Landroid/util/JsonReader;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V

    .line 242
    :goto_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 245
    move-object v3, v0

    .line 246
    .local v3, "op":Ljava/lang/String;
    move-object v4, v0

    .line 247
    .local v4, "pattern":Ljava/lang/String;
    const-string v5, "oneshot"

    .line 248
    .local v5, "mode":Ljava/lang/String;
    move-object v6, v0

    .line 249
    .local v6, "event":Ljava/lang/String;
    const/16 v7, 0x3e8

    .line 250
    .local v7, "delay":I
    move-object v8, v0

    .line 251
    .local v8, "state":Ljava/lang/String;
    move-object v9, v0

    .line 253
    .local v9, "prjNum":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v10

    sget-object v11, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v10, v11, :cond_1

    .line 254
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, "jsonName":Ljava/lang/String;
    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    goto :goto_2

    :sswitch_0
    const-string v12, "state"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x5

    goto :goto_2

    :sswitch_1
    const-string v12, "event"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x4

    goto :goto_2

    :sswitch_2
    const-string v12, "delay"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x2

    goto :goto_2

    :sswitch_3
    const-string v12, "mode"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x3

    goto :goto_2

    :sswitch_4
    const-string v12, "op"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x0

    goto :goto_2

    :sswitch_5
    const-string v12, "project"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x6

    goto :goto_2

    :sswitch_6
    const-string v12, "pattern"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    :goto_2
    packed-switch v11, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/io/IOException;

    goto :goto_4

    .line 275
    :pswitch_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 276
    goto :goto_3

    .line 272
    :pswitch_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 273
    goto :goto_3

    .line 269
    :pswitch_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 270
    goto :goto_3

    .line 266
    :pswitch_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 267
    goto :goto_3

    .line 263
    :pswitch_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    move v7, v11

    .line 264
    goto :goto_3

    .line 260
    :pswitch_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 261
    goto :goto_3

    .line 257
    :pswitch_6
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 258
    nop

    .line 280
    .end local v10    # "jsonName":Ljava/lang/String;
    :goto_3
    goto/16 :goto_1

    .line 278
    .restart local v10    # "jsonName":Ljava/lang/String;
    :goto_4
    const-string v11, "unknown name"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v2    # "reader":Landroid/util/JsonReader;
    .end local p0    # "config":Ljava/lang/String;
    throw v0

    .line 281
    .end local v10    # "jsonName":Ljava/lang/String;
    .restart local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .restart local v2    # "reader":Landroid/util/JsonReader;
    .restart local p0    # "config":Ljava/lang/String;
    :cond_1
    new-instance v10, Lcom/oplus/uifirst/Utils$ThreadOp;

    invoke-direct {v10}, Lcom/oplus/uifirst/Utils$ThreadOp;-><init>()V

    .line 282
    .local v10, "threadOp":Lcom/oplus/uifirst/Utils$ThreadOp;
    iput-object v3, v10, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    .line 283
    iput-object v4, v10, Lcom/oplus/uifirst/Utils$ThreadOp;->mPattern:Ljava/lang/String;

    .line 284
    iput-object v5, v10, Lcom/oplus/uifirst/Utils$ThreadOp;->mMode:Ljava/lang/String;

    .line 285
    iput v7, v10, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    .line 286
    iput-object v6, v10, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    .line 287
    iput-object v8, v10, Lcom/oplus/uifirst/Utils$ThreadOp;->mState:Ljava/lang/String;

    .line 288
    iput-object v9, v10, Lcom/oplus/uifirst/Utils$ThreadOp;->mPrjNum:Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 292
    .end local v3    # "op":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "mode":Ljava/lang/String;
    .end local v6    # "event":Ljava/lang/String;
    .end local v7    # "delay":I
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "prjNum":Ljava/lang/String;
    .end local v10    # "threadOp":Lcom/oplus/uifirst/Utils$ThreadOp;
    goto/16 :goto_0

    .line 293
    :cond_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    .end local v2    # "reader":Landroid/util/JsonReader;
    nop

    .line 299
    return-object v1

    .line 240
    .restart local v2    # "reader":Landroid/util/JsonReader;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local p0    # "config":Ljava/lang/String;
    :goto_5
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 294
    .end local v2    # "reader":Landroid/util/JsonReader;
    .restart local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .restart local p0    # "config":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadOp json config error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUIFirst"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    const/4 v2, 0x0

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x2f271470 -> :sswitch_6
        -0x126fb4e7 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x3339a3 -> :sswitch_3
        0x5b0b983 -> :sswitch_2
        0x5c6729a -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist printThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string v0, "ThreadOp is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/uifirst/Utils$ThreadOp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void
.end method

.method static blacklist printThreadOps(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    if-nez p1, :cond_0

    .line 304
    const-string v0, "List of ThreadOp is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List of ThreadOp: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void
.end method

.method static blacklist readProcCmdline(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I

    .line 140
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 143
    .local v1, "comm":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oplus/uifirst/Utils;->PROCESS_COMM_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v1, v2

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    aget-object v3, v1, v2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    aget-object v0, v1, v2

    return-object v0

    .line 150
    :cond_1
    return-object v4
.end method

.method static blacklist readProcComm(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I

    .line 128
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 129
    .local v1, "comm":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/comm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oplus/uifirst/Utils;->PROCESS_COMM_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v1, v2

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    aget-object v3, v1, v2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    aget-object v0, v1, v2

    return-object v0

    .line 136
    :cond_1
    return-object v4
.end method

.method static blacklist readProcNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 100
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 100
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "res":Ljava/lang/String;
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 102
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "res":Ljava/lang/String;
    .restart local p0    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readProcNode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusUIFirst"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1
.end method

.method static blacklist setUxThreadValue(III)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "tid"    # I
    .param p2, "value"    # I

    .line 121
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/PerformanceManager;->writeUxState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUxThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusUIFirst"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method static blacklist setUxThreadValue(IILjava/lang/String;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "tid"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 112
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Landroid/os/PerformanceManager;->writeUxState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUxThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusUIFirst"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void
.end method

.method static blacklist writeProcNode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 79
    return v2

    .line 82
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 84
    .local v3, "data":[B
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v3    # "data":[B
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    .end local v1    # "os":Ljava/io/FileOutputStream;
    nop

    .line 90
    const/4 v1, 0x1

    return v1

    .line 82
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "filePath":Ljava/lang/String;
    .end local p1    # "val":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "filePath":Ljava/lang/String;
    .restart local p1    # "val":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeProcNode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusUIFirst"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v2
.end method
