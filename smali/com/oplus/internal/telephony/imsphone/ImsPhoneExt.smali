.class public Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt;
.super Ljava/lang/Object;
.source "ImsPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/internal/telephony/imsphone/ImsPhoneExt$ImsDialArgsExt;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist holdActiveCallOnly(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p0, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->holdActiveCallOnly()V

    .line 38
    return-void
.end method

.method public static blacklist unholdHeldCall(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p1, "connection"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unholdHeldCall(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 49
    return-void
.end method
