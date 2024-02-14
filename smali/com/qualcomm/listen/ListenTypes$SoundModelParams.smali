.class public Lcom/qualcomm/listen/ListenTypes$SoundModelParams;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModelParams"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public blacklist bFailureNotification:Z

.field public blacklist detectionMode:I

.field public blacklist minKeywordConfidence:S

.field public blacklist minUserConfidence:S

.field public blacklist soundModelData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
