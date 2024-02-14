.class public Loplus/telephony/TelephonyManagerExt;
.super Ljava/lang/Object;
.source "TelephonyManagerExt.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isConcurrentCallsPossible()Z
    .locals 1

    .line 32
    invoke-static {}, Landroid/telephony/TelephonyManager;->isConcurrentCallsPossible()Z

    move-result v0

    return v0
.end method
