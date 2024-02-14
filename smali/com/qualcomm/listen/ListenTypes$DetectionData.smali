.class public abstract Lcom/qualcomm/listen/ListenTypes$DetectionData;
.super Ljava/lang/Object;
.source "ListenTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/listen/ListenTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DetectionData"
.end annotation


# instance fields
.field public blacklist status:I

.field public blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
