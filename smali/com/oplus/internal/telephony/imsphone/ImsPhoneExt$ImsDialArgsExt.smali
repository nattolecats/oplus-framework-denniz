.class public Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt;
.super Ljava/lang/Object;
.source "ImsPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsDialArgsExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setDeferDial(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;)V
    .locals 3
    .param p0, "builder"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .param p1, "deferDialExt"    # Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;

    .line 59
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;->INVALID:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;

    .line 60
    .local v0, "deferDial":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;
    sget-object v1, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$1;->$SwitchMap$com$oplus$internal$telephony$imsphone$ImsPhoneExt$ImsDialArgsExt$DeferDial:[I

    invoke-virtual {p1}, Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt$DeferDial;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;->DISABLE:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;

    .line 68
    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;->ENABLE:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;

    .line 65
    goto :goto_0

    .line 62
    :pswitch_2
    nop

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setDeferDial(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$DeferDial;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 72
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
