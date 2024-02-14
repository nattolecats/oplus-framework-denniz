.class public Lcom/oplus/wrapper/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# instance fields
.field private final blacklist mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor whitelist <init>(Landroid/os/PowerManager;)V
    .locals 0
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oplus/wrapper/os/PowerManager;->mPowerManager:Landroid/os/PowerManager;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist getDefaultScreenBrightnessSetting()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/oplus/wrapper/os/PowerManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public whitelist getMaximumScreenBrightnessSetting()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/oplus/wrapper/os/PowerManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public whitelist getMinimumScreenBrightnessSetting()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oplus/wrapper/os/PowerManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public whitelist wakeUp(JLjava/lang/String;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "details"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/oplus/wrapper/os/PowerManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 92
    return-void
.end method
