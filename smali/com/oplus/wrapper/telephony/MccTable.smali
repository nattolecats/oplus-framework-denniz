.class public Lcom/oplus/wrapper/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist countryCodeForMcc(I)Ljava/lang/String;
    .locals 1
    .param p0, "mcc"    # I

    .line 33
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
