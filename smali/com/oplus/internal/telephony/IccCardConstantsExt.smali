.class public Lcom/oplus/internal/telephony/IccCardConstantsExt;
.super Ljava/lang/Object;
.source "IccCardConstantsExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    }
.end annotation


# static fields
.field public static final blacklist SML_SLOT_LOCK_POLICY_ALL_SLOTS_INDIVIDUAL:I = 0x3

.field public static final blacklist SML_SLOT_LOCK_POLICY_LK_SLOT1:I = 0x4

.field public static final blacklist SML_SLOT_LOCK_POLICY_LK_SLOT2:I = 0x5

.field public static final blacklist SML_SLOT_LOCK_POLICY_LK_SLOTA:I = 0x6

.field public static final blacklist SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_INVALID_CS:I = 0x7

.field public static final blacklist SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_INVALID_ECC_FOR_VALID_NO_SERVICE:I = 0x9

.field public static final blacklist SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_REVERSE:I = 0x8

.field public static final blacklist SML_SLOT_LOCK_POLICY_NONE:I = 0x0

.field public static final blacklist SML_SLOT_LOCK_POLICY_ONLY_SLOT1:I = 0x1

.field public static final blacklist SML_SLOT_LOCK_POLICY_ONLY_SLOT2:I = 0x2

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_CS_INCOMING_ONLY:I = 0x6

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_CS_ONLY:I = 0x1

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_ECC_ONLY:I = 0x3

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_FULL:I = 0x0

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_FULL_INACTIVE:I = 0x7

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_NO_SERVICE:I = 0x4

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_PS_ONLY:I = 0x2

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_UNKNOWN:I = -0x1

.field public static final blacklist SML_SLOT_LOCK_POLICY_SERVICE_CAPABILITY_VOICE_ONLY:I = 0x5

.field public static final blacklist SML_SLOT_LOCK_POLICY_UNKNOWN:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
