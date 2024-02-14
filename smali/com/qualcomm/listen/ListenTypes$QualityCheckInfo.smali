.class public Lcom/qualcomm/listen/ListenTypes$QualityCheckInfo;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QualityCheckInfo"
.end annotation


# instance fields
.field public blacklist epdEnd:I

.field public blacklist epdPeakLevel:F

.field public blacklist epdRmsLevel:F

.field public blacklist epdSnr:F

.field public blacklist epdStart:I

.field public blacklist exactEpdEnd:I

.field public blacklist exactEpdStart:I

.field public blacklist isEpdFilteredSegmentSet:Z

.field public blacklist isLowSnrSet:Z

.field public blacklist keywordConfidenceLevel:S

.field public blacklist keywordEnd:I

.field public blacklist keywordStart:I

.field public blacklist n_epdSamplesClipping:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
