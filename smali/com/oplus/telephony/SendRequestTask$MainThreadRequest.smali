.class public final Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
.super Ljava/lang/Object;
.source "SendRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/telephony/SendRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public blacklist mArgument:Ljava/lang/Object;

.field public blacklist mResult:Ljava/lang/Object;

.field public blacklist mSlotId:Ljava/lang/Integer;

.field public blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "argument"    # Ljava/lang/Object;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mSlotId:Ljava/lang/Integer;

    .line 234
    iput-object p1, p0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mArgument:Ljava/lang/Object;

    .line 235
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "argument"    # Ljava/lang/Object;
    .param p2, "slotId"    # Ljava/lang/Integer;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mSlotId:Ljava/lang/Integer;

    .line 238
    iput-object p1, p0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mArgument:Ljava/lang/Object;

    .line 239
    if-eqz p2, :cond_0

    .line 240
    iput-object p2, p0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mSlotId:Ljava/lang/Integer;

    .line 242
    :cond_0
    iput-object p3, p0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 243
    return-void
.end method
