.class public Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeywordUserCounts"
.end annotation


# instance fields
.field public blacklist numKeywords:S

.field public blacklist numUserKWPairs:S

.field public blacklist numUsers:S


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
