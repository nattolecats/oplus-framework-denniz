.class public Lcom/oplus/wrapper/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# instance fields
.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor whitelist <init>(Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oplus/wrapper/telephony/TelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getSimOperatorNameForPhone(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 45
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/TelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
