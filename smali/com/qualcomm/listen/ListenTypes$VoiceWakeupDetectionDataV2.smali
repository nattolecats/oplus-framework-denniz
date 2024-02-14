.class public Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;
.super Lcom/qualcomm/listen/ListenTypes$DetectionData;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceWakeupDetectionDataV2"
.end annotation


# instance fields
.field public blacklist nonzeroKWConfLevels:[Lcom/qualcomm/listen/ListenTypes$VWUKeywordConfLevel;

.field public blacklist nonzeroUserKWPairConfLevels:[Lcom/qualcomm/listen/ListenTypes$VWUUserKeywordPairConfLevel;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Lcom/qualcomm/listen/ListenTypes$DetectionData;-><init>()V

    return-void
.end method
