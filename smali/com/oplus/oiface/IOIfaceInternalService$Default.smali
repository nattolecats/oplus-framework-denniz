.class public Lcom/oplus/oiface/IOIfaceInternalService$Default;
.super Ljava/lang/Object;
.source "IOIfaceInternalService.java"

# interfaces
.implements Lcom/oplus/oiface/IOIfaceInternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/oiface/IOIfaceInternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist bindGameTask(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "tid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public whitelist currentNetwork(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public whitelist currentPkgStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newPIPPackage"    # Ljava/lang/String;
    .param p4, "oldPIPPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public whitelist enableHQV(I)V
    .locals 0
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public whitelist enableHapticScreenCaptureService(I)V
    .locals 0
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    return-void
.end method

.method public whitelist generalOifaceSignal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "signal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAllLoadInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBatteryCurrentNow()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBatteryFCC()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBatteryRemain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChipName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCpuAvailableFreqTable(I)[J
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCpuClusterInfo()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCpuClusterNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCpuCurrentFreq(I)[J
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCpuLimitedFreqs(I)[J
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCpuLoads(I)[F
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCpuTimeInState()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentGamePackage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFPS(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGPASystemInfo()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getGameModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGpuAvailableFreqTable()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getGpuCurrentFreq()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getGpuLimitedFreqs()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getGpuLoad()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInstalledGameList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSuperVOOCStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSupportGameStartPackage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getThermalTemps(I)[F
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist notifyScreenEvent(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public whitelist oifaceControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "control"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public whitelist oifaceDecision(Ljava/lang/String;)V
    .locals 0
    .param p1, "decision"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public whitelist registerClientThroughCosa(Lcom/oplus/oiface/IOIfaceCallback;Ljava/lang/String;II)I
    .locals 1
    .param p1, "oifaceCallback"    # Lcom/oplus/oiface/IOIfaceCallback;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerGameRoleListener(ILjava/lang/String;Lcom/oplus/oiface/IOIfaceCallback;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "oifaceCallback"    # Lcom/oplus/oiface/IOIfaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public whitelist registerHQV(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerNetworkListener(IILcom/oplus/oiface/IOIfaceCallback;)V
    .locals 0
    .param p1, "thresholdMs"    # I
    .param p2, "minReportMs"    # I
    .param p3, "oifaceCallback"    # Lcom/oplus/oiface/IOIfaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public whitelist registerOifaceCallback(Lcom/oplus/oiface/IOIfaceCallback;)V
    .locals 0
    .param p1, "oifaceCallback"    # Lcom/oplus/oiface/IOIfaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    return-void
.end method

.method public whitelist setCoolExFilterType(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    return-void
.end method

.method public whitelist setGCPEffectMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setGameModeStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    return-void
.end method

.method public whitelist setGeneralSignalCosa(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setGyroscopeLevel(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method

.method public whitelist setHalfHQV(I)V
    .locals 0
    .param p1, "half"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public whitelist setInstalledGameList([Ljava/lang/String;)V
    .locals 0
    .param p1, "games"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    return-void
.end method

.method public whitelist setPerfMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public whitelist setTouchProtection(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    return-void
.end method

.method public whitelist setTouchResponsiveness(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    return-void
.end method

.method public whitelist setTouchSensibility(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    return-void
.end method

.method public whitelist triggerFrameStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist unRegisterGameRoleListener(Lcom/oplus/oiface/IOIfaceCallback;)V
    .locals 0
    .param p1, "oifaceCallback"    # Lcom/oplus/oiface/IOIfaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method
