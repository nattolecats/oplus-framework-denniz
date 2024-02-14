.class public Landroid/os/TheiaLogInfo;
.super Ljava/lang/Object;
.source "TheiaLogInfo.java"


# static fields
.field private static final blacklist THEIA_LOGINFO_ANDROID_LOG:I = 0x1

.field private static final blacklist THEIA_LOGINFO_ANR_TRACES:I = 0x4

.field private static final blacklist THEIA_LOGINFO_BINDER_INFO:I = 0x20

.field private static final blacklist THEIA_LOGINFO_DUMPSYS_MEMINFO:I = 0x10

.field private static final blacklist THEIA_LOGINFO_DUMPSYS_SF:I = 0x8

.field private static final blacklist THEIA_LOGINFO_KERNEL_LOG:I = 0x2


# instance fields
.field public blacklist mTheiaLog:J


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0
    .param p1, "theiaLog"    # J

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Landroid/os/TheiaLogInfo;->mTheiaLog:J

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getValue()J
    .locals 2

    .line 28
    iget-wide v0, p0, Landroid/os/TheiaLogInfo;->mTheiaLog:J

    return-wide v0
.end method
