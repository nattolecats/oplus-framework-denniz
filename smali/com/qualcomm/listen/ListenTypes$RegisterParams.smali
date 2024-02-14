.class public Lcom/qualcomm/listen/ListenTypes$RegisterParams;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterParams"
.end annotation


# instance fields
.field public blacklist bFailureNotification:Z

.field public blacklist bufferParams:Lcom/qualcomm/listen/ListenTypes$LookAheadBufferParams;

.field public blacklist detectionMode:I

.field public blacklist keywordMinConfLevels:[Lcom/qualcomm/listen/ListenTypes$VWUKeywordConfLevel;

.field public blacklist numKeywordUserPairs:S

.field public blacklist numKeywords:S

.field public blacklist soundModelData:Ljava/nio/ByteBuffer;

.field public blacklist userKWPairMinConfLevels:[Lcom/qualcomm/listen/ListenTypes$VWUUserKeywordPairConfLevel;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
