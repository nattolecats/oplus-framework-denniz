.class public Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;
.super Ljava/lang/Object;
.source "OplusCriticalLogInfo.java"


# instance fields
.field public blacklist mDesc:Ljava/lang/String;

.field public blacklist mIssue:Ljava/lang/String;

.field public blacklist mLog:Ljava/lang/String;

.field public blacklist mTag:Ljava/lang/String;

.field public blacklist mType:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "logstring"    # Ljava/lang/String;
    .param p3, "issue"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mType:I

    .line 12
    iput-object p2, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mLog:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mIssue:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mDesc:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "logstring"    # Ljava/lang/String;
    .param p3, "tagString"    # Ljava/lang/String;
    .param p4, "issue"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mType:I

    .line 19
    iput-object p2, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mLog:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mTag:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mIssue:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/android/internal/telephony/CriticalLog/OplusCriticalLogInfo;->mDesc:Ljava/lang/String;

    .line 23
    return-void
.end method
