.class public Loplus/telecom/CallExt$Details;
.super Ljava/lang/Object;
.source "CallExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loplus/telecom/CallExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# static fields
.field public static final blacklist CAPABILITY_AUDIO_RINGTONE:I = 0x40000000

.field public static final blacklist CAPABILITY_BASE_EXT:I = 0x10000000

.field public static final blacklist CAPABILITY_CALL_RECORDING:I = 0x10000000

.field public static final blacklist CAPABILITY_VIDEO_RINGTONE:I = 0x20000000

.field public static final blacklist PROPERTY_BASE_EXT:I = 0x10000

.field public static final blacklist PROPERTY_CDMA:I = 0x20000

.field public static final blacklist PROPERTY_CONFERENCE_PARTICIPANT:I = 0x200000

.field public static final blacklist PROPERTY_VOICE_RECORDING:I = 0x40000

.field public static final blacklist PROPERTY_VOLTE:I = 0x10000


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
