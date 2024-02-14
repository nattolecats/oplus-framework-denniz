.class public Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;
.super Lcom/qualcomm/listen/ListenTypes$DetectionData;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceWakeupDetectionData"
.end annotation


# instance fields
.field public blacklist keyword:Ljava/lang/String;

.field public blacklist keywordConfidenceLevel:S

.field public blacklist userConfidenceLevel:S


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcom/qualcomm/listen/ListenTypes$DetectionData;-><init>()V

    return-void
.end method
