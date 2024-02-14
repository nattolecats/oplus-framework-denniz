.class public final Lcom/oplus/media/OplusRecorder$AudioSource;
.super Ljava/lang/Object;
.source "OplusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/media/OplusRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field public static final whitelist CAMCORDER:I = 0x5

.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist MIC:I = 0x1

.field public static final whitelist VOICE_CALL:I = 0x4

.field public static final whitelist VOICE_COMMUNICATION:I = 0x7

.field public static final whitelist VOICE_DOWNLINK:I = 0x3

.field public static final whitelist VOICE_RECOGNITION:I = 0x6

.field public static final whitelist VOICE_UPLINK:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/media/OplusRecorder;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/media/OplusRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/media/OplusRecorder;

    .line 139
    iput-object p1, p0, Lcom/oplus/media/OplusRecorder$AudioSource;->this$0:Lcom/oplus/media/OplusRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
