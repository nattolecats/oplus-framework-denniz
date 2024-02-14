.class public Landroid/telephony/CarrierConfigManagerExtImpl;
.super Ljava/lang/Object;
.source "CarrierConfigManagerExtImpl.java"

# interfaces
.implements Landroid/telephony/ICarrierConfigManagerExt;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CarrierConfigManagerExtImpl"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public whitelist putDefault(Landroid/os/PersistableBundle;)V
    .locals 6
    .param p1, "defaults"    # Landroid/os/PersistableBundle;

    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string v0, "CarrierConfigManagerExtImpl"

    const-string v1, "setPersistableBundleDefault null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 31
    :cond_0
    const-string v0, "carrier_volte_fr1_bool"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const-string v3, "carrier_volte_fr1_int_array"

    invoke-virtual {p1, v3, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 40
    const-string v2, "support_1x_incall_mmi"

    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v2, "config_oplus_dual_lte_available_bool"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string v2, "default"

    const-string v4, "dun"

    const-string v5, "supl"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "carrier_metered_apn_types_strings"

    invoke-virtual {p1, v4, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    const-string v4, "call_presentation_mapping_string_array"

    invoke-virtual {p1, v4, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    const-string v2, "carrier_show_ims_conference_list_without_cep_config"

    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    const-string v2, "wfc_disable_nrsa_config"

    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v2, "carrier_support_bwp"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v2, "carrier_support_nrca"

    invoke-virtual {p1, v2, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v2, "dpmFdDelayIdleTime"

    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v2, "dpmFdScreenOnIdleTime"

    const/16 v5, 0xf

    invoke-virtual {p1, v2, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v2, "dpmFdmScreenOffIdleTime"

    invoke-virtual {p1, v2, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v0, "dpmFdTetheringIdleTime"

    invoke-virtual {p1, v0, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v0, "force_build_mms_over_wifi_apns"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const-string v0, "config_oplus_erlvt_mt_off_bool"

    invoke-virtual {p1, v0, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string v0, "carrier_customized_nricon_config"

    invoke-virtual {p1, v0, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v0, "carrier_oplus_esm_reject"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    return-void

    nop

    :array_0
    .array-data 4
        -0x3e7
        -0x3e7
        -0x3e7
    .end array-data
.end method
