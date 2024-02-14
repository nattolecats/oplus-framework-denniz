.class public Landroid/telephony/OplusKeyLogBase$CriticalLogInfo;
.super Ljava/lang/Object;
.source "OplusKeyLogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/OplusKeyLogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CriticalLogInfo"
.end annotation


# instance fields
.field public blacklist errcode:J

.field public blacklist extra:Ljava/lang/String;

.field public blacklist issue:Ljava/lang/String;

.field public blacklist rat:J

.field final synthetic blacklist this$0:Landroid/telephony/OplusKeyLogBase;

.field public blacklist type:J


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/OplusKeyLogBase;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/telephony/OplusKeyLogBase;
    .param p2, "type"    # I
    .param p3, "errcode"    # I
    .param p4, "rat"    # I
    .param p5, "extra"    # Ljava/lang/String;
    .param p6, "issue"    # Ljava/lang/String;

    .line 617
    iput-object p1, p0, Landroid/telephony/OplusKeyLogBase$CriticalLogInfo;->this$0:Landroid/telephony/OplusKeyLogBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    int-to-long v0, p2

    iput-wide v0, p0, Landroid/telephony/OplusKeyLogBase$CriticalLogInfo;->type:J

    .line 619
    int-to-long v0, p3

    iput-wide v0, p0, Landroid/telephony/OplusKeyLogBase$CriticalLogInfo;->errcode:J

    .line 620
    int-to-long v0, p4

    iput-wide v0, p0, Landroid/telephony/OplusKeyLogBase$CriticalLogInfo;->rat:J

    .line 621
    iput-object p5, p0, Landroid/telephony/OplusKeyLogBase$CriticalLogInfo;->extra:Ljava/lang/String;

    .line 622
    iput-object p6, p0, Landroid/telephony/OplusKeyLogBase$CriticalLogInfo;->issue:Ljava/lang/String;

    .line 623
    return-void
.end method
