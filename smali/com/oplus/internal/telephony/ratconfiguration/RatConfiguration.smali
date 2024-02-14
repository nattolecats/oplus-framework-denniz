.class public Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;
.super Ljava/lang/Object;
.source "RatConfiguration.java"


# static fields
.field public static final blacklist CDMA:Ljava/lang/String; = "C"

.field public static final blacklist DELIMITER:Ljava/lang/String; = "/"

.field public static final blacklist GSM:Ljava/lang/String; = "G"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "RatConfig"

.field public static final blacklist LTEFDD:Ljava/lang/String; = "Lf"

.field public static final blacklist LTETDD:Ljava/lang/String; = "Lt"

.field public static final blacklist MASK_CDMA:I = 0x20

.field public static final blacklist MASK_GSM:I = 0x1

.field public static final blacklist MASK_LTEFDD:I = 0x10

.field public static final blacklist MASK_LTETDD:I = 0x8

.field public static final blacklist MASK_NR:I = 0x40

.field public static final blacklist MASK_TDSCDMA:I = 0x2

.field public static final blacklist MASK_WCDMA:I = 0x4

.field protected static final blacklist MD_MODE_LCTG:I = 0x10

.field protected static final blacklist MD_MODE_LFWCG:I = 0xf

.field protected static final blacklist MD_MODE_LFWG:I = 0xe

.field protected static final blacklist MD_MODE_LTCTG:I = 0x11

.field protected static final blacklist MD_MODE_LTG:I = 0x8

.field protected static final blacklist MD_MODE_LTTG:I = 0xd

.field protected static final blacklist MD_MODE_LWCG:I = 0xb

.field protected static final blacklist MD_MODE_LWCTG:I = 0xc

.field protected static final blacklist MD_MODE_LWG:I = 0x9

.field protected static final blacklist MD_MODE_LWTG:I = 0xa

.field protected static final blacklist MD_MODE_UNKNOWN:I = 0x0

.field public static final blacklist NR:Ljava/lang/String; = "N"

.field public static final blacklist PROPERTY_BUILD_RAT_CONFIG:Ljava/lang/String; = "ro.vendor.mtk_protocol1_rat_config"

.field public static final blacklist PROPERTY_IS_USING_DEFAULT_CONFIG:Ljava/lang/String; = "ro.boot.opt_using_default"

.field public static final blacklist PROPERTY_RAT_CONFIG:Ljava/lang/String; = "ro.vendor.mtk_ps1_rat"

.field public static final blacklist TDSCDMA:Ljava/lang/String; = "T"

.field public static final blacklist WCDMA:Ljava/lang/String; = "W"

.field private static blacklist sActivedRat:I

.field private static blacklist sIsDefaultConfig:Z

.field private static blacklist sMaxRat:I

.field private static blacklist sMaxRatInitialized:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRat:I

    .line 66
    sput-boolean v0, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRatInitialized:Z

    .line 67
    sput v0, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sActivedRat:I

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sIsDefaultConfig:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist checkRatConfig(I)Z
    .locals 3
    .param p0, "iRat"    # I

    .line 126
    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    .line 127
    .local v0, "maxrat":I
    or-int v1, p0, v0

    if-ne v1, v0, :cond_0

    .line 128
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRatConfig: FAIL with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getActiveRatConfig()Ljava/lang/String;
    .locals 3

    .line 223
    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->ratToString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "rat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveRatConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method protected static declared-synchronized blacklist getMaxRat()I
    .locals 4

    const-class v0, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-boolean v1, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRatInitialized:Z

    if-nez v1, :cond_1

    .line 107
    const-string v1, "ro.vendor.mtk_protocol1_rat_config"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "maxRat":Ljava/lang/String;
    invoke-static {v1}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->ratToBitmask(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRat:I

    .line 110
    const-string v2, "ro.boot.opt_using_default"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sIsDefaultConfig:Z

    .line 111
    sput-boolean v3, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRatInitialized:Z

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxRat: initial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 115
    .end local v1    # "maxRat":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sMaxRat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static blacklist getRatConfig()I
    .locals 3

    .line 140
    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    .line 141
    .local v0, "defaultRatConfig":I
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    sput v1, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sActivedRat:I

    .line 143
    return v1

    .line 145
    :cond_0
    sget-boolean v1, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sIsDefaultConfig:Z

    if-eqz v1, :cond_1

    .line 146
    sput v0, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sActivedRat:I

    .line 147
    return v0

    .line 149
    :cond_1
    const-string v1, "ro.vendor.mtk_ps1_rat"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "rat":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 151
    invoke-static {v1}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->ratToBitmask(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sActivedRat:I

    .line 152
    invoke-static {v2}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->checkRatConfig(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    const-string v2, "getRatConfig: invalid PROPERTY_RAT_CONFIG, set to max_rat"

    invoke-static {v2}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v2

    sput v2, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sActivedRat:I

    goto :goto_0

    .line 157
    :cond_2
    const-string v2, "getRatConfig: ger property PROPERTY_RAT_CONFIG fail, initialize"

    invoke-static {v2}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->logd(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v2

    sput v2, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sActivedRat:I

    .line 160
    :cond_3
    :goto_0
    sget v2, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->sActivedRat:I

    return v2
.end method

.method public static blacklist isC2kSupported()Z
    .locals 2

    .line 205
    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isNrSupported()Z
    .locals 2

    .line 215
    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getMaxRat()I

    move-result v0

    invoke-static {}, Lcom/oplus/internal/telephony/ratconfiguration/RatConfiguration;->getRatConfig()I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 228
    const-string v0, "RatConfig"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method protected static blacklist ratToBitmask(Ljava/lang/String;)I
    .locals 2
    .param p0, "rat"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "iRat":I
    const-string v1, "C"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    or-int/lit8 v0, v0, 0x20

    .line 80
    :cond_0
    const-string v1, "Lf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    or-int/lit8 v0, v0, 0x10

    .line 83
    :cond_1
    const-string v1, "Lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    or-int/lit8 v0, v0, 0x8

    .line 86
    :cond_2
    const-string v1, "W"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    or-int/lit8 v0, v0, 0x4

    .line 89
    :cond_3
    const-string v1, "T"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    or-int/lit8 v0, v0, 0x2

    .line 92
    :cond_4
    const-string v1, "G"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    or-int/lit8 v0, v0, 0x1

    .line 95
    :cond_5
    const-string v1, "N"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    or-int/lit8 v0, v0, 0x40

    .line 98
    :cond_6
    return v0
.end method

.method protected static blacklist ratToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "iRat"    # I

    .line 169
    const-string v0, ""

    .line 170
    .local v0, "rat":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_0
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Lf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_1
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Lt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/W"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_3
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_4
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/G"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_6

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/N"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_7
    return-object v0
.end method
