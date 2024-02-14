.class public Lcom/oplus/network/OlkUtils;
.super Ljava/lang/Object;
.source "OlkUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCapId(Ljava/lang/String;)I
    .locals 2
    .param p0, "function"    # Ljava/lang/String;

    .line 6
    const/4 v0, -0x1

    .line 7
    .local v0, "cap":I
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "getAppDenyFlag"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "getULLState"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "setSocketPriority"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "requestDualSta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "getORoustBoostState"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "clearSocketPriority"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "getL2Param"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "sendSTARTScorechange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "setApBandwidth"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "enableQoEMonitor"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_a
    const-string v1, "updateCellularEnable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v1, "getNetworkQuality"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_c
    const-string v1, "releaseDualSta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_d
    const-string v1, "sendABRchange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_e
    const-string v1, "getDualStaEnable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_f
    const-string v1, "disableQoEMonitor"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_10
    const-string v1, "setRealTimeEvent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_11
    const-string v1, "setApState"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 34
    :pswitch_0
    const/4 v0, 0x6

    .line 35
    goto :goto_2

    .line 30
    :pswitch_1
    const/4 v0, 0x5

    .line 31
    goto :goto_2

    .line 23
    :pswitch_2
    const/4 v0, 0x4

    .line 24
    goto :goto_2

    .line 18
    :pswitch_3
    const/4 v0, 0x2

    .line 19
    goto :goto_2

    .line 14
    :pswitch_4
    const/4 v0, 0x1

    .line 15
    nop

    .line 40
    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7f9e6920 -> :sswitch_11
        -0x7e833d73 -> :sswitch_10
        -0x795f0585 -> :sswitch_f
        -0x6e2ed90f -> :sswitch_e
        -0x5d150747 -> :sswitch_d
        -0x539dea03 -> :sswitch_c
        -0x50236419 -> :sswitch_b
        -0x460edb4a -> :sswitch_a
        -0x434a48aa -> :sswitch_9
        -0x42b42c80 -> :sswitch_8
        -0x1902a558 -> :sswitch_7
        -0x172a4d4f -> :sswitch_6
        -0x11312e1c -> :sswitch_5
        -0x6c15332 -> :sswitch_4
        0x87ce275 -> :sswitch_3
        0x1ba80f39 -> :sswitch_2
        0x30957a52 -> :sswitch_1
        0x3bb4ffa3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getErrorId(I)I
    .locals 1
    .param p0, "errorCode"    # I

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "errId":I
    sparse-switch p0, :sswitch_data_0

    .line 81
    const/16 v0, 0xb

    goto :goto_0

    .line 77
    :sswitch_0
    const/16 v0, 0xa

    .line 78
    goto :goto_0

    .line 74
    :sswitch_1
    const/16 v0, 0x9

    .line 75
    goto :goto_0

    .line 71
    :sswitch_2
    const/16 v0, 0x8

    .line 72
    goto :goto_0

    .line 68
    :sswitch_3
    const/4 v0, 0x7

    .line 69
    goto :goto_0

    .line 65
    :sswitch_4
    const/4 v0, 0x6

    .line 66
    goto :goto_0

    .line 62
    :sswitch_5
    const/4 v0, 0x5

    .line 63
    goto :goto_0

    .line 59
    :sswitch_6
    const/4 v0, 0x4

    .line 60
    goto :goto_0

    .line 56
    :sswitch_7
    const/4 v0, 0x3

    .line 57
    goto :goto_0

    .line 53
    :sswitch_8
    const/4 v0, 0x2

    .line 54
    goto :goto_0

    .line 50
    :sswitch_9
    const/4 v0, 0x1

    .line 51
    goto :goto_0

    .line 47
    :sswitch_a
    const/4 v0, 0x0

    .line 48
    nop

    .line 84
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_7
        0x12c -> :sswitch_6
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_3
        0x3e8 -> :sswitch_2
        0x44c -> :sswitch_1
        0x4b0 -> :sswitch_0
    .end sparse-switch
.end method
