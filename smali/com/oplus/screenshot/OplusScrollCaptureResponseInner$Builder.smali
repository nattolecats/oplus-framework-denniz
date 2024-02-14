.class public Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
.super Ljava/lang/Object;
.source "OplusScrollCaptureResponseInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mWindowBounds:Landroid/graphics/Rect;

.field private blacklist mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 249
    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    .line 366
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 370
    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addMessage(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mMessages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->setMessages(Ljava/util/ArrayList;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    return-object p0
.end method

.method public blacklist build()Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;
    .locals 9

    .line 330
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 331
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 333
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 334
    const-string v2, ""

    iput-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mDescription:Ljava/lang/String;

    .line 336
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 337
    iput-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 339
    :cond_1
    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_2

    .line 340
    iput-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mWindowBounds:Landroid/graphics/Rect;

    .line 342
    :cond_2
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_3

    .line 343
    iput-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 345
    :cond_3
    const-wide/16 v6, 0x10

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_4

    .line 346
    iput-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mWindowTitle:Ljava/lang/String;

    .line 348
    :cond_4
    const-wide/16 v6, 0x20

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_5

    .line 349
    iput-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mPackageName:Ljava/lang/String;

    .line 351
    :cond_5
    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mMessages:Ljava/util/ArrayList;

    .line 354
    :cond_6
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    iget-object v4, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mWindowBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mWindowTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mMessages:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;-><init>(Ljava/lang/String;Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    .local v0, "o":Lcom/oplus/screenshot/OplusScrollCaptureResponseInner;
    return-object v0
.end method

.method public blacklist setBoundsInWindow(Landroid/graphics/Rect;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 4
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 285
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 286
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 287
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 288
    return-object p0
.end method

.method public blacklist setConnection(Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 4
    .param p1, "value"    # Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 265
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 266
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 267
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 268
    return-object p0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 256
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 257
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mDescription:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public blacklist setMessages(Ljava/util/ArrayList;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;"
        }
    .end annotation

    .line 315
    .local p1, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 316
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 317
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mMessages:Ljava/util/ArrayList;

    .line 318
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 306
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 307
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mPackageName:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public blacklist setWindowBounds(Landroid/graphics/Rect;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 4
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 275
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 276
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 277
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mWindowBounds:Landroid/graphics/Rect;

    .line 278
    return-object p0
.end method

.method public blacklist setWindowTitle(Ljava/lang/String;)Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->checkNotUsed()V

    .line 296
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mBuilderFieldsSet:J

    .line 297
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureResponseInner$Builder;->mWindowTitle:Ljava/lang/String;

    .line 298
    return-object p0
.end method
