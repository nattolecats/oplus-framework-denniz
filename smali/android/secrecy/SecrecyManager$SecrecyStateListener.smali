.class public abstract Landroid/secrecy/SecrecyManager$SecrecyStateListener;
.super Ljava/lang/Object;
.source "SecrecyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/SecrecyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SecrecyStateListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSecrecyStateChanged(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .line 213
    return-void
.end method
