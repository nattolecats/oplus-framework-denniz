.class public Lcom/qualcomm/listen/ListenTypes$VWUUserKeywordPairConfLevel;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VWUUserKeywordPairConfLevel"
.end annotation


# instance fields
.field public blacklist confLevel:S

.field public blacklist keyword:Ljava/lang/String;

.field public blacklist user:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
