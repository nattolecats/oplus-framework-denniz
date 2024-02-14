.class public Lcom/qualcomm/listen/ListenTypes$SVASoundModelInfo;
.super Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SVASoundModelInfo"
.end annotation


# instance fields
.field public blacklist counts:Lcom/qualcomm/listen/ListenTypes$KeywordUserCounts;

.field public blacklist keywordInfo:[Lcom/qualcomm/listen/ListenTypes$KeywordInfo;

.field public blacklist userNames:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 562
    invoke-direct {p0}, Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;-><init>()V

    return-void
.end method
