.class public final Loplus/telecom/PhoneAccountExt;
.super Ljava/lang/Object;
.source "PhoneAccountExt.java"


# static fields
.field public static final blacklist CARRIER_CAPABILITY_ALLOW_ONE_VIDEO_CALL_ONLY:I = 0x20

.field private static final blacklist CARRIER_CAPABILITY_BASE:I = 0x1

.field public static final blacklist CARRIER_CAPABILITY_DISABLE_MO_CALL_DURING_CONFERENCE:I = 0x80

.field public static final blacklist CARRIER_CAPABILITY_DISABLE_VT_OVER_WIFI:I = 0x4

.field public static final blacklist CARRIER_CAPABILITY_DISALLOW_OUTGOING_CALLS_DURING_VIDEO_OR_VOICE_CALL:I = 0x40

.field public static final blacklist CARRIER_CAPABILITY_RESUME_HOLD_CALL_AFTER_ACTIVE_CALL_END_BY_REMOTE:I = 0x1

.field public static final blacklist CARRIER_CAPABILITY_ROAMING_BAR_GUARD:I = 0x8

.field public static final blacklist CARRIER_CAPABILITY_SUPPORT_ENHANCED_CALL_BLOCKING:I = 0x100

.field public static final blacklist EXTRA_PHONE_ACCOUNT_CARRIER_CAPABILITIES:Ljava/lang/String; = "mediatek.telecom.extra.PHONE_ACCOUNT_CARRIER_CAPABILITIES"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hasCarrierCapabilities(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 125
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
