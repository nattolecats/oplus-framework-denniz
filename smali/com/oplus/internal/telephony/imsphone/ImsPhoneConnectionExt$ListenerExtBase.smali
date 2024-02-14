.class public abstract Lcom/oplus/internal/telephony/imsphone/ImsPhoneConnectionExt$ListenerExtBase;
.super Lcom/android/internal/telephony/Connection$ListenerBase;
.source "ImsPhoneConnectionExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/internal/telephony/imsphone/ImsPhoneConnectionExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerExtBase"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAddressDisplayChanged()V
    .locals 0

    .line 53
    return-void
.end method

.method public blacklist onConferenceConnectionsConfigured(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "radioConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    return-void
.end method

.method public blacklist onConferenceParticipantsInvited(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .line 42
    return-void
.end method

.method public blacklist onRedialEcc(Z)V
    .locals 0
    .param p1, "isNeedUserConfirm"    # Z

    .line 66
    return-void
.end method

.method public blacklist onTextCapabilityChanged(IIII)V
    .locals 0
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteTextCapability"    # I

    .line 60
    return-void
.end method
