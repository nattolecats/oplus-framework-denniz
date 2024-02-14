.class public Lcom/qualcomm/listen/ListenTypes;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/listen/ListenTypes$QualityCheckInfo;,
        Lcom/qualcomm/listen/ListenTypes$ConfidenceData;,
        Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;,
        Lcom/qualcomm/listen/ListenTypes$KeywordInfo;,
        Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;,
        Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;,
        Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionDataV2;,
        Lcom/qualcomm/listen/ListenTypes$VoiceWakeupDetectionData;,
        Lcom/qualcomm/listen/ListenTypes$DetectionData;,
        Lcom/qualcomm/listen/ListenTypes$ReadResults;,
        Lcom/qualcomm/listen/ListenTypes$LookAheadBufferParams;,
        Lcom/qualcomm/listen/ListenTypes$RegisterParams;,
        Lcom/qualcomm/listen/ListenTypes$SoundModelParams;,
        Lcom/qualcomm/listen/ListenTypes$VWUUserKeywordPairConfLevel;,
        Lcom/qualcomm/listen/ListenTypes$VWUKeywordConfLevel;,
        Lcom/qualcomm/listen/ListenTypes$EventData;
    }
.end annotation


# static fields
.field public static final blacklist DEREGISTERED_EVENT:I = 0x7

.field public static final blacklist DETECT_FAILED_EVENT:I = 0x6

.field public static final blacklist DETECT_SUCCESS_EVENT:I = 0x5

.field public static final blacklist DISABLE:Ljava/lang/String; = "disable"

.field public static final blacklist ENABLE:Ljava/lang/String; = "enable"

.field public static final blacklist EVENT_DATA_TYPE:I = 0x1

.field public static final blacklist EVENT_DATA_TYPE_V2:I = 0x2

.field public static final blacklist KEYWORD_ONLY_DETECTION_MODE:I = 0x1

.field public static final blacklist LISTEN_ENGINE_DIED_EVENT:I = 0xa

.field public static final blacklist LISTEN_FEATURE:Ljava/lang/String; = "ListenFeature"

.field public static final blacklist LISTEN_FEATURE_DISABLE_EVENT:I = 0x1

.field public static final blacklist LISTEN_FEATURE_ENABLE_EVENT:I = 0x2

.field public static final blacklist LISTEN_RUNNING_EVENT:I = 0x8

.field public static final blacklist LISTEN_STOPPED_EVENT:I = 0x9

.field public static final blacklist STATUS_EBAD_PARAM:I = -0x2

.field public static final blacklist STATUS_EBUFFERING_DATA_INCOMPLETE:I = -0xa

.field public static final blacklist STATUS_EBUFFERING_NOT_ENABLED:I = -0x8

.field public static final blacklist STATUS_ECALLBACK_NOT_SET:I = -0x7

.field public static final blacklist STATUS_ECANNOT_DELETE_LAST_KEYWORD:I = -0x18

.field public static final blacklist STATUS_ECHOPPED_SAMPLE:I = -0x1d

.field public static final blacklist STATUS_ECLIPPED_SAMPLE:I = -0x1e

.field public static final blacklist STATUS_EDETECTION_NOT_RUNNING:I = -0x12

.field public static final blacklist STATUS_EFAILURE:I = -0x1

.field public static final blacklist STATUS_EFEATURE_NOT_ENABLED:I = -0x5

.field public static final blacklist STATUS_EKEYWORD_NOT_IN_SOUNDMODEL:I = -0xb

.field public static final blacklist STATUS_EKEYWORD_USER_PAIR_NOT_IN_SOUNDMODEL:I = -0xd

.field public static final blacklist STATUS_EMAX_KEYWORDS_EXCEEDED:I = -0x16

.field public static final blacklist STATUS_EMAX_USERS_EXCEEDED:I = -0x17

.field public static final blacklist STATUS_ENOT_BUFFERING:I = -0x9

.field public static final blacklist STATUS_ENOT_SUPPORTED_FOR_SOUNDMODEL_VERSION:I = -0xe

.field public static final blacklist STATUS_ENO_MEMORY:I = -0x11

.field public static final blacklist STATUS_ENO_SPEACH_IN_RECORDING:I = -0x19

.field public static final blacklist STATUS_ERECORDING_TOO_LONG:I = -0x1c

.field public static final blacklist STATUS_ERECORDING_TOO_SHORT:I = -0x1b

.field public static final blacklist STATUS_ERESOURCE_NOT_AVAILABLE:I = -0x6

.field public static final blacklist STATUS_ESOUNDMODELS_WITH_SAME_KEYWORD_CANNOT_BE_MERGED:I = -0x14

.field public static final blacklist STATUS_ESOUNDMODELS_WITH_SAME_USER_KEYWORD_PAIR_CANNOT_BE_MERGED:I = -0x15

.field public static final blacklist STATUS_ESOUNDMODEL_ALREADY_REGISTERED:I = -0x4

.field public static final blacklist STATUS_ESOUNDMODEL_NOT_REGISTERED:I = -0x3

.field public static final blacklist STATUS_ETOO_MUCH_NOISE_IN_RECORDING:I = -0x1a

.field public static final blacklist STATUS_EUNSUPPORTED_SOUNDMODEL:I = -0xf

.field public static final blacklist STATUS_EUSER_KEYWORD_PAIRING_ALREADY_PRESENT:I = -0x13

.field public static final blacklist STATUS_EUSER_NAME_CANNOT_BE_USED:I = -0x10

.field public static final blacklist STATUS_EUSER_NOT_IN_SOUNDMODEL:I = -0xc

.field public static final blacklist STATUS_SUCCESS:I = 0x0

.field public static final blacklist SVA_APP_TYPE:I = 0x1

.field public static final blacklist USER_KEYWORD_DETECTION_MODE:I = 0x2

.field public static final blacklist VOICEWAKEUP_FEATURE:Ljava/lang/String; = "VoiceWakeupFeature"

.field public static final blacklist VOICEWAKEUP_FEATURE_DISABLE_EVENT:I = 0x3

.field public static final blacklist VOICEWAKEUP_FEATURE_ENABLE_EVENT:I = 0x4

.field public static final blacklist VWU_EVENT_0100:Ljava/lang/String; = "VoiceWakeup_DetectionData_v0100"

.field public static final blacklist VWU_EVENT_0200:Ljava/lang/String; = "VoiceWakeup_DetectionData_v0200"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
