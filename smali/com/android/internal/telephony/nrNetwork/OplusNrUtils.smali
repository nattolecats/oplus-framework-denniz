.class public Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;
.super Ljava/lang/Object;
.source "OplusNrUtils.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const-string v0, "OplusNrModeUtils"

    sput-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist converMtkModeToAp(I)I
    .locals 3
    .param p0, "nrMode"    # I

    .line 216
    move v0, p0

    .line 217
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 227
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :pswitch_2
    const/4 v0, 0x1

    .line 220
    goto :goto_0

    .line 223
    :pswitch_3
    const/4 v0, 0x2

    .line 224
    nop

    .line 230
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "converMtkMode: from nrMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,to mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 231
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist coverApToMtkMode(I)I
    .locals 3
    .param p0, "mode"    # I

    .line 236
    move v0, p0

    .line 237
    .local v0, "nrMode":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    const/4 v0, 0x3

    .line 244
    goto :goto_0

    .line 239
    :pswitch_1
    const/4 v0, 0x5

    .line 240
    goto :goto_0

    .line 248
    :pswitch_2
    const/4 v0, 0x7

    .line 251
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coverApToMtkMode : from mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,to nrMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 252
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static blacklist coverStringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 276
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "tmp":[Ljava/lang/String;
    return-object v0

    .line 280
    .end local v0    # "tmp":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCfgTypeForKey(Ljava/lang/String;)Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->NONE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 146
    .local v0, "cfgType":Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "cu_sa_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "vonr_cities_cu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "vonr_cities_ct"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "vonr_cities_cb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "vonr_cities_cmcc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "vonr_provinces_cmcc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_6
    const-string v1, "cmcc_sa_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "cmcc_sa_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "ct_sa_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "cu_sa_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_a
    const-string v1, "vonr_provinces_cu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_b
    const-string v1, "vonr_provinces_ct"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_c
    const-string v1, "vonr_provinces_cb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_d
    const-string v1, "ct_sa_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 164
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->PROVINCE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 165
    goto :goto_2

    .line 154
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->CITY:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 155
    nop

    .line 170
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCfgTypeForKey : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,cfgType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 171
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d19010d -> :sswitch_d
        -0x5bd8d263 -> :sswitch_c
        -0x5bd8d251 -> :sswitch_b
        -0x5bd8d250 -> :sswitch_a
        -0x3e665f12 -> :sswitch_9
        -0x204428b1 -> :sswitch_8
        0x1ccdc616 -> :sswitch_7
        0x2a089b4c -> :sswitch_6
        0x37127008 -> :sswitch_5
        0x475b867e -> :sswitch_4
        0x6d8f6993 -> :sswitch_3
        0x6d8f69a5 -> :sswitch_2
        0x6d8f69a6 -> :sswitch_1
        0x716a0574 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getLocTypeForKey(Ljava/lang/String;)Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 307
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->NONE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 308
    .local v0, "type":Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "cu_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "cmcc_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "ct_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "cu_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "cmcc_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "ct_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 318
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->PROVINCE:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 319
    goto :goto_2

    .line 312
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;->CITY:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$CfgType;

    .line 313
    nop

    .line 324
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocTypeForKey : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,locType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 325
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x295e175c -> :sswitch_5
        -0x25ff38c3 -> :sswitch_4
        0x348601d -> :sswitch_3
        0xefeeefe -> :sswitch_2
        0x596d5945 -> :sswitch_1
        0x6b869b65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getModeWithSa(I)I
    .locals 3
    .param p0, "mode"    # I

    .line 47
    move v0, p0

    .line 48
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    const/4 v0, 0x3

    .line 60
    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x2

    .line 56
    goto :goto_0

    .line 51
    :pswitch_2
    const/4 v0, 0x0

    .line 52
    nop

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModeWithSa : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 66
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getModeWithoutSa(I)I
    .locals 3
    .param p0, "mode"    # I

    .line 71
    move v0, p0

    .line 72
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    const/4 v0, 0x1

    .line 78
    nop

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModeWithoutSa : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 84
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getNrModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "nrMode"    # I

    .line 365
    packed-switch p0, :pswitch_data_0

    .line 379
    const-string v0, "INVALID"

    return-object v0

    .line 376
    :pswitch_0
    const-string v0, "SA_PRE"

    return-object v0

    .line 373
    :pswitch_1
    const-string v0, "SA_ONLY"

    return-object v0

    .line 370
    :pswitch_2
    const-string v0, "NSA_ONLY"

    return-object v0

    .line 367
    :pswitch_3
    const-string v0, "NSA_PRE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getPhoneIdForSubSlot(I)I
    .locals 1
    .param p0, "ddsSlot"    # I

    .line 285
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist getSimType(Ljava/lang/String;)Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    .locals 3
    .param p0, "plmn"    # Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_OTHER:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 188
    .local v0, "simType":Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 189
    const-string v1, "00101"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_TEST:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    goto/16 :goto_3

    .line 191
    :cond_0
    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "46004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 192
    const-string v1, "46007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "46008"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 194
    :cond_1
    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "46006"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "46009"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 196
    :cond_2
    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "46011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 198
    :cond_3
    const-string v1, "46015"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CB:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    goto/16 :goto_3

    .line 200
    :cond_4
    const-string v1, "405854"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405855"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405856"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405872"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 201
    const-string v1, "405857"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405858"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405859"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 202
    const-string v1, "405860"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405861"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405862"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 203
    const-string v1, "405873"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405863"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405864"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 204
    const-string v1, "405874"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405865"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405866"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 205
    const-string v1, "405867"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405868"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405869"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 206
    const-string v1, "405871"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405870"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "405840"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 207
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_JIO:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    goto :goto_3

    .line 197
    :cond_6
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CT:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    goto :goto_3

    .line 195
    :cond_7
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CU:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    goto :goto_3

    .line 193
    :cond_8
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CMCC:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 210
    :cond_9
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimType: SIM_TYPE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method public static blacklist getSimTypeForKey(Ljava/lang/String;)Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_OTHER:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 109
    .local v0, "simType":Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "cu_sa_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "vonr_cities_cu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "vonr_cities_ct"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "vonr_cities_cb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "vonr_cities_cmcc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "vonr_provinces_cmcc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "cmcc_sa_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "cmcc_sa_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "ct_sa_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v1, "cu_sa_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_a
    const-string v1, "vonr_provinces_cu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_b
    const-string v1, "vonr_provinces_ct"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v1, "vonr_provinces_cb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_d
    const-string v1, "ct_sa_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 133
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CB:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 134
    goto :goto_2

    .line 128
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CT:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 129
    goto :goto_2

    .line 121
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CU:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 122
    goto :goto_2

    .line 114
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CMCC:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 115
    nop

    .line 139
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimTypeForKey : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,simType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 140
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d19010d -> :sswitch_d
        -0x5bd8d263 -> :sswitch_c
        -0x5bd8d251 -> :sswitch_b
        -0x5bd8d250 -> :sswitch_a
        -0x3e665f12 -> :sswitch_9
        -0x204428b1 -> :sswitch_8
        0x1ccdc616 -> :sswitch_7
        0x2a089b4c -> :sswitch_6
        0x37127008 -> :sswitch_5
        0x475b867e -> :sswitch_4
        0x6d8f6993 -> :sswitch_3
        0x6d8f69a5 -> :sswitch_2
        0x6d8f69a6 -> :sswitch_1
        0x716a0574 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getSimTypeForLocKey(Ljava/lang/String;)Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 329
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_OTHER:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 330
    .local v0, "simType":Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "cu_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "cmcc_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "ct_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "cu_pro_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "cmcc_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "ct_city_list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 343
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CT:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 344
    goto :goto_2

    .line 338
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CU:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 339
    goto :goto_2

    .line 333
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;->SIM_TYPE_CMCC:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 334
    nop

    .line 349
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimTypeForKey : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,simType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->logd(Ljava/lang/String;)V

    .line 350
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x295e175c -> :sswitch_5
        -0x25ff38c3 -> :sswitch_4
        0x348601d -> :sswitch_3
        0xefeeefe -> :sswitch_2
        0x596d5945 -> :sswitch_1
        0x6b869b65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getSubIdForPhone(I)I
    .locals 4
    .param p0, "phoneId"    # I

    .line 355
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 356
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 357
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 358
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 360
    :cond_0
    return v1
.end method

.method public static blacklist isAutoNrMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 176
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isChinese(Ljava/lang/String;)Z
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 271
    const-string v0, "^[\u4e00-\u9fa5]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNsaPrefered(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 102
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 292
    return v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 295
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    return v0

    .line 299
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    return v0

    .line 302
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSaModeEnabled(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 89
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isSaPrefered(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 96
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isValidNrMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 181
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 385
    sget-object v0, Lcom/android/internal/telephony/nrNetwork/OplusNrUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public static blacklist stringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    .local v0, "unicode":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 260
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 261
    .local v2, "c":C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
