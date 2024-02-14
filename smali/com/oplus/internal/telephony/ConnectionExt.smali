.class public Lcom/oplus/internal/telephony/ConnectionExt;
.super Ljava/lang/Object;
.source "ConnectionExt.java"


# static fields
.field public static final blacklist STATE_AUDIO_RINGTONE:I = 0x1

.field public static final blacklist STATE_VIDEO_RINGTONE:I = 0x2

.field public static final blacklist SUPPORTS_AUDIO_RINGTONE:I = 0x1000

.field public static final blacklist SUPPORTS_VIDEO_RINGTONE:I = 0x2000


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getSupportsAudioRingtone()I
    .locals 1

    .line 34
    const/16 v0, 0x1000

    return v0
.end method

.method public static final blacklist getSupportsVideoRingtone()I
    .locals 1

    .line 38
    const/16 v0, 0x2000

    return v0
.end method
