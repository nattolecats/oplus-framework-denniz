.class public final Lcom/oplus/media/OplusRecorder$VideoEncoder;
.super Ljava/lang/Object;
.source "OplusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/media/OplusRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoEncoder"
.end annotation


# static fields
.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist H263:I = 0x1

.field public static final whitelist H264:I = 0x2

.field public static final whitelist MPEG_4_SP:I = 0x3


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/media/OplusRecorder;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/media/OplusRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/media/OplusRecorder;

    .line 281
    iput-object p1, p0, Lcom/oplus/media/OplusRecorder$VideoEncoder;->this$0:Lcom/oplus/media/OplusRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
