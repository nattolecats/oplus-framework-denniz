.class public abstract Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;
.super Ljava/lang/Object;
.source "OplusFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/OplusFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OplusAuthenticationCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/OplusFaceManager;


# direct methods
.method public constructor whitelist <init>(Landroid/hardware/face/OplusFaceManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/face/OplusFaceManager;

    .line 251
    iput-object p1, p0, Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 292
    return-void
.end method

.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 260
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 0

    .line 283
    return-void
.end method

.method public whitelist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 271
    return-void
.end method

.method public whitelist onAuthenticationSucceeded()V
    .locals 0

    .line 277
    return-void
.end method
