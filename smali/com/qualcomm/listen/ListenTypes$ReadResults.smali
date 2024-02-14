.class public Lcom/qualcomm/listen/ListenTypes$ReadResults;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadResults"
.end annotation


# instance fields
.field public blacklist status:I

.field public blacklist writeSize:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
