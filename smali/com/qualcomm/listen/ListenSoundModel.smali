.class public Lcom/qualcomm/listen/ListenSoundModel;
.super Ljava/lang/Object;
.source "ListenSoundModel.java"


# static fields
.field private static final blacklist SVA_KEYWORD_TYPE_PDK:I = 0x2

.field private static final blacklist SVA_KEYWORD_TYPE_UDK:I = 0x3

.field private static final blacklist SVA_SOUNDMODEL_TYPE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ListenSoundModel"

.field private static final blacklist UNKNOWN_SOUNDMODEL_TYPE:I = 0x0

.field private static final blacklist VERSION_0100:I = 0x100

.field private static final blacklist VERSION_0200:I = 0x200

.field private static final blacklist VERSION_UNKNOWN:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 79
    const-string v0, "ListenSoundModel"

    const-string v1, "Load liblistenjni.qti"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "listenjni.qti"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static native blacklist SetSoundModelTuningParams(ILjava/nio/ByteBuffer;)I
.end method

.method public static native blacklist createUdkSm(Ljava/lang/String;Ljava/lang/String;I[Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$ConfidenceData;)I
.end method

.method public static native blacklist deleteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;)I
.end method

.method public static blacklist extend(Ljava/nio/ByteBuffer;I[Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$ConfidenceData;)I
    .locals 7
    .param p0, "userIndependentModel"    # Ljava/nio/ByteBuffer;
    .param p1, "numUserRecordings"    # I
    .param p2, "userRecordings"    # [Ljava/nio/ShortBuffer;
    .param p3, "extendedSoundModel"    # Ljava/nio/ByteBuffer;
    .param p4, "confidenceData"    # Lcom/qualcomm/listen/ListenTypes$ConfidenceData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/qualcomm/listen/ListenSoundModel;->extend(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;I[Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$ConfidenceData;)I

    move-result v0

    .line 307
    .local v0, "status":I
    return v0
.end method

.method public static native blacklist extend(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;I[Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$ConfidenceData;)I
.end method

.method private static native blacklist getInfo(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;)I
.end method

.method public static native blacklist getSizeAfterDelete(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static blacklist getSizeWhenExtended(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "userIndependentModel"    # Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/qualcomm/listen/ListenSoundModel;->getSizeWhenExtended(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 228
    .local v0, "status":I
    return v0
.end method

.method public static native blacklist getSizeWhenExtended(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native blacklist getSizeWhenMerged([Ljava/nio/ByteBuffer;)I
.end method

.method public static native blacklist getTypeVersion(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;)I
.end method

.method public static native blacklist getUdkSmSize(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method public static native blacklist merge([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method public static blacklist parseDetectionEventData(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$EventData;)Lcom/qualcomm/listen/ListenTypes$DetectionData;
    .locals 7
    .param p0, "registeredSoundModel"    # Ljava/nio/ByteBuffer;
    .param p1, "eventPayload"    # Lcom/qualcomm/listen/ListenTypes$EventData;

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "status":I
    const/4 v1, 0x0

    .line 508
    .local v1, "detData":Lcom/qualcomm/listen/ListenTypes$DetectionData;
    new-instance v2, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;

    invoke-direct {v2}, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;-><init>()V

    .line 509
    .local v2, "soundModelInfo":Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;
    nop

    .line 513
    invoke-static {p0, v2}, Lcom/qualcomm/listen/ListenSoundModel;->getTypeVersion(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;)I

    move-result v0

    .line 514
    const/4 v3, 0x0

    const-string v4, "ListenSoundModel"

    if-eqz v0, :cond_0

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseDetectionEventData() get SM Info failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-object v3

    .line 518
    :cond_0
    iget v5, v2, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseDetectionEventData() SM type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unsupported!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-object v3

    .line 525
    :cond_1
    iget v3, v2, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->version:I

    const/16 v5, 0x100

    if-ne v3, v5, :cond_2

    .line 526
    const-string v3, "SM type is SVA 1.0"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v3, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;

    invoke-direct {v3}, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;-><init>()V

    .line 531
    .local v3, "vwuDetData":Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;
    invoke-static {p0, p1, v3}, Lcom/qualcomm/listen/ListenSoundModel;->parseVWUDetectionEventData(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$EventData;Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;)I

    move-result v5

    iput v5, v3, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;->status:I

    .line 533
    const-string v5, "VoiceWakeup_DetectionData_v0100"

    iput-object v5, v3, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;->type:Ljava/lang/String;

    .line 534
    move-object v1, v3

    .line 535
    .end local v3    # "vwuDetData":Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;
    goto :goto_0

    .line 537
    :cond_2
    const-string v3, "SM type is SVA 2.0"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v3, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;

    invoke-direct {v3}, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;-><init>()V

    .line 543
    .local v3, "vwuDetDataV2":Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;
    invoke-static {p0, p1, v3}, Lcom/qualcomm/listen/ListenSoundModel;->parseVWUDetectionEventDataV2(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$EventData;Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;)I

    move-result v5

    iput v5, v3, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;->status:I

    .line 545
    const-string v5, "VoiceWakeup_DetectionData_v0200"

    iput-object v5, v3, Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;->type:Ljava/lang/String;

    .line 546
    move-object v1, v3

    .line 549
    .end local v3    # "vwuDetDataV2":Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;
    :goto_0
    nop

    .line 551
    iget v3, v1, Lcom/qualcomm/listen/ListenTypes$DetectionData;->status:I

    if-eqz v3, :cond_3

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseDetectionEventData() returns status "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/qualcomm/listen/ListenTypes$DetectionData;->status:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v1, 0x0

    .line 555
    :cond_3
    return-object v1
.end method

.method private static native blacklist parseVWUDetectionEventData(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$EventData;Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;)I
.end method

.method private static native blacklist parseVWUDetectionEventDataV2(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$EventData;Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;)I
.end method

.method public static blacklist query(Ljava/nio/ByteBuffer;)Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;
    .locals 8
    .param p0, "soundModel"    # Ljava/nio/ByteBuffer;

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "status":I
    new-instance v1, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;

    invoke-direct {v1}, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;-><init>()V

    .line 622
    .local v1, "genSMInfo":Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;
    new-instance v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;

    invoke-direct {v2}, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;-><init>()V

    .line 623
    .local v2, "soundModelInfo":Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;
    const-string v3, "ListenSoundModel"

    const-string v4, "query() getTypeVersion"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {p0, v1}, Lcom/qualcomm/listen/ListenSoundModel;->getTypeVersion(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;)I

    move-result v0

    .line 626
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query() getTypeVersion failed, returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-object v4

    .line 630
    :cond_0
    iget v5, v1, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->type:I

    iput v5, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->type:I

    .line 631
    iget v5, v1, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->version:I

    iput v5, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->version:I

    .line 632
    iget v5, v1, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->size:I

    iput v5, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->size:I

    .line 635
    iget v5, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 636
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query() SM type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unsupported!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-object v4

    .line 640
    :cond_1
    iget v5, v1, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;->version:I

    const/16 v7, 0x100

    if-ne v5, v7, :cond_2

    .line 641
    const-string v5, "query() only returns type and version for SVA 1.0 SoundModel"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v3, Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;

    invoke-direct {v3}, Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;-><init>()V

    .line 644
    .local v3, "counts":Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;
    iput-object v3, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->counts:Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;

    .line 645
    iget-object v5, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->counts:Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;

    iput-short v6, v5, Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;->numKeywords:S

    .line 646
    iget-object v5, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->counts:Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;

    const/4 v7, 0x0

    iput-short v7, v5, Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;->numUsers:S

    .line 647
    iget-object v5, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->counts:Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;

    iput-short v6, v5, Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;->numUserKWPairs:S

    .line 648
    iput-object v4, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->keywordInfo:[Lcom/qualcomm/listen/ListenTypes$KeywordInfo;

    .line 649
    iput-object v4, v2, Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;->userNames:[Ljava/lang/String;

    .line 650
    .end local v3    # "counts":Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;
    goto :goto_0

    .line 651
    :cond_2
    const-string v5, "query() getInfoV2 called"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {p0, v2}, Lcom/qualcomm/listen/ListenSoundModel;->getInfo(Ljava/nio/ByteBuffer;Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;)I

    move-result v0

    .line 654
    if-eqz v0, :cond_3

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query() getInfoV2 failed, returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-object v4

    .line 659
    :cond_3
    :goto_0
    return-object v2
.end method

.method public static native blacklist verifyUdkRecording(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;)I
.end method

.method public static native blacklist verifyUdkRecording(Ljava/nio/ByteBuffer;[Ljava/nio/ShortBuffer;)I
.end method

.method public static native blacklist verifyUserRecording(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ShortBuffer;)I
.end method

.method public static blacklist verifyUserRecording(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;)I
    .locals 1
    .param p0, "userIndependentModel"    # Ljava/nio/ByteBuffer;
    .param p1, "userRecording"    # Ljava/nio/ShortBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/qualcomm/listen/ListenSoundModel;->verifyUserRecording(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ShortBuffer;)I

    move-result v0

    .line 117
    .local v0, "status":I
    return v0
.end method

.method public static native blacklist verifyUserRecordingQuality(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ShortBuffer;ZLcom/qualcomm/listen/ListenTypes$QualityCheckInfo;)I
.end method
