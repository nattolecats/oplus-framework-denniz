.class Landroid/os/OplusLooperMsgDispatcher$DumpQueue;
.super Ljava/lang/Object;
.source "OplusLooperMsgDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusLooperMsgDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpQueue"
.end annotation


# instance fields
.field private blacklist mCurrentMsg:Landroid/os/OplusHistoryMsg;

.field private blacklist mMsgDoingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/OplusHistoryMsg;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMsgDumpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/OplusHistoryMsg;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMsgHHandlerSlowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/OplusHistoryMsg;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMsgMergeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/OplusHistoryMsg;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMsgSlowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/OplusHistoryMsg;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/os/OplusLooperMsgDispatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentMsg(Landroid/os/OplusLooperMsgDispatcher$DumpQueue;)Landroid/os/OplusHistoryMsg;
    .locals 0

    iget-object p0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentMsg(Landroid/os/OplusLooperMsgDispatcher$DumpQueue;Landroid/os/OplusHistoryMsg;)V
    .locals 0

    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/OplusLooperMsgDispatcher;)V
    .locals 0

    .line 139
    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->this$0:Landroid/os/OplusLooperMsgDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDumpList:Ljava/util/ArrayList;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgSlowList:Ljava/util/ArrayList;

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgHHandlerSlowList:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgMergeList:Ljava/util/ArrayList;

    .line 160
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDoingList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/OplusLooperMsgDispatcher;Landroid/os/OplusLooperMsgDispatcher$DumpQueue-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;-><init>(Landroid/os/OplusLooperMsgDispatcher;)V

    return-void
.end method

.method private blacklist addToMergeList(Landroid/os/OplusHistoryMsg;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/OplusHistoryMsg;

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "hasAddToMergeList":Z
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgMergeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/OplusHistoryMsg;

    .line 210
    .local v2, "mergeMsg":Landroid/os/OplusHistoryMsg;
    invoke-virtual {v2, p1}, Landroid/os/OplusHistoryMsg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-wide v3, p1, Landroid/os/OplusHistoryMsg;->mEndTime:J

    iput-wide v3, v2, Landroid/os/OplusHistoryMsg;->mEndTime:J

    .line 212
    iget-wide v3, v2, Landroid/os/OplusHistoryMsg;->mWall:J

    iget-wide v5, p1, Landroid/os/OplusHistoryMsg;->mWall:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/os/OplusHistoryMsg;->mWall:J

    .line 213
    iget v1, v2, Landroid/os/OplusHistoryMsg;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/os/OplusHistoryMsg;->mCount:I

    .line 214
    const/4 v0, 0x1

    .line 215
    goto :goto_1

    .line 217
    .end local v2    # "mergeMsg":Landroid/os/OplusHistoryMsg;
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "hasAddToDoingList":Z
    const/4 v2, 0x0

    .line 222
    .local v2, "tmpDoMsg":Landroid/os/OplusHistoryMsg;
    iget-object v3, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDoingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/OplusHistoryMsg;

    .line 223
    .local v4, "doMsg":Landroid/os/OplusHistoryMsg;
    invoke-virtual {v4, p1}, Landroid/os/OplusHistoryMsg;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    iget-wide v5, p1, Landroid/os/OplusHistoryMsg;->mEndTime:J

    iput-wide v5, v4, Landroid/os/OplusHistoryMsg;->mEndTime:J

    .line 225
    iget-wide v5, v4, Landroid/os/OplusHistoryMsg;->mWall:J

    iget-wide v7, p1, Landroid/os/OplusHistoryMsg;->mWall:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/os/OplusHistoryMsg;->mWall:J

    .line 226
    iget v3, v4, Landroid/os/OplusHistoryMsg;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Landroid/os/OplusHistoryMsg;->mCount:I

    .line 227
    const/4 v1, 0x1

    .line 228
    move-object v2, v4

    .line 229
    goto :goto_3

    .line 231
    .end local v4    # "doMsg":Landroid/os/OplusHistoryMsg;
    :cond_2
    goto :goto_2

    .line 232
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 234
    iget v3, v2, Landroid/os/OplusHistoryMsg;->mCount:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_5

    .line 235
    iget-object v3, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDoingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v3, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgMergeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 240
    :cond_4
    iget-object v3, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDoingList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v1    # "hasAddToDoingList":Z
    .end local v2    # "tmpDoMsg":Landroid/os/OplusHistoryMsg;
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    .line 169
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDumpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    return-void
.end method

.method public blacklist doDumpMerge()V
    .locals 3

    .line 190
    :goto_0
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDumpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 191
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDumpList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OplusHistoryMsg;

    .line 193
    .local v0, "msg":Landroid/os/OplusHistoryMsg;
    iget-object v1, v0, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    const-string v2, "msg_dispatch_slow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgSlowList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_0
    iget-object v1, v0, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    const-string v2, "msg_h_handler_slow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgHHandlerSlowList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_1
    invoke-direct {p0, v0}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->addToMergeList(Landroid/os/OplusHistoryMsg;)V

    .line 200
    .end local v0    # "msg":Landroid/os/OplusHistoryMsg;
    :goto_1
    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDoingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    invoke-virtual {p0, v0}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->printCurrentAnr(Landroid/os/OplusHistoryMsg;)V

    .line 204
    return-void
.end method

.method public blacklist dumpTrackedMessageLock()Ljava/lang/String;
    .locals 8

    .line 256
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "---------------main thread looper tracked messasge---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "info":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 259
    .local v1, "j":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## mMsgSlowList. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgSlowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v2, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgSlowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " "

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/OplusHistoryMsg;

    .line 261
    .local v4, "msg":Landroid/os/OplusHistoryMsg;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/OplusHistoryMsg;->toStringWithoutCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    nop

    .end local v4    # "msg":Landroid/os/OplusHistoryMsg;
    add-int/lit8 v1, v1, 0x1

    .line 263
    goto :goto_0

    .line 264
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## mMsgMergeList."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgMergeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v2, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgMergeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/OplusHistoryMsg;

    .line 266
    .restart local v4    # "msg":Landroid/os/OplusHistoryMsg;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/OplusHistoryMsg;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    nop

    .end local v4    # "msg":Landroid/os/OplusHistoryMsg;
    add-int/lit8 v1, v1, 0x1

    .line 268
    goto :goto_1

    .line 269
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## mMsgHSlowList."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgHHandlerSlowList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v2, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgHHandlerSlowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/OplusHistoryMsg;

    .line 271
    .restart local v4    # "msg":Landroid/os/OplusHistoryMsg;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/OplusHistoryMsg;->toStringWithoutCount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    nop

    .end local v4    # "msg":Landroid/os/OplusHistoryMsg;
    add-int/lit8 v1, v1, 0x1

    .line 273
    goto :goto_2

    .line 274
    :cond_2
    const-string v2, "Finish dumping main looper message.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    sget-object v2, Landroid/os/OplusLooperMsgDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpTrackedMessageLock MSG: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist printCurrentAnr(Landroid/os/OplusHistoryMsg;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/OplusHistoryMsg;

    .line 246
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "==========================MsgBlockInfo=========================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz p1, :cond_0

    .line 248
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current msg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/OplusHistoryMsg;->toStringWithoutCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_0
    if-nez p1, :cond_1

    .line 250
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "current msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->dumpTrackedMessageLock()Ljava/lang/String;

    .line 253
    return-void
.end method

.method public blacklist processRegisterFinishMsg()V
    .locals 2

    .line 177
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-static {v0}, Landroid/os/OplusHistoryMsg;->endMsg(Landroid/os/OplusHistoryMsg;)Landroid/os/OplusHistoryMsg;

    .line 181
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDumpList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDumpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mMsgDumpList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    .line 186
    return-void
.end method

.method public blacklist startRegisterCurrentMsg(Landroid/os/OplusHistoryMsg;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/OplusHistoryMsg;

    .line 173
    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->mCurrentMsg:Landroid/os/OplusHistoryMsg;

    .line 174
    return-void
.end method
