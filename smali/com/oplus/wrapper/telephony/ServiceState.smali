.class public Lcom/oplus/wrapper/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"


# instance fields
.field private final blacklist mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method public constructor whitelist <init>(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oplus/wrapper/telephony/ServiceState;->mServiceState:Landroid/telephony/ServiceState;

    .line 42
    return-void
.end method

.method public static whitelist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .line 68
    invoke-static {p0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getDataRegState()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/ServiceState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public whitelist getNrState()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/ServiceState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    return v0
.end method
