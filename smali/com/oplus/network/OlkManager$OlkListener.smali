.class public interface abstract Lcom/oplus/network/OlkManager$OlkListener;
.super Ljava/lang/Object;
.source "OlkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OlkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OlkListener"
.end annotation


# virtual methods
.method public whitelist clearSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;

    .line 195
    return-void
.end method

.method public whitelist setApBandwithCallback(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "rxBw"    # I
    .param p3, "txBw"    # I

    .line 189
    return-void
.end method

.method public whitelist setApStateCallback(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "delay"    # Z

    .line 186
    return-void
.end method

.method public whitelist setRealTimeEventCallback(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # I

    .line 198
    return-void
.end method

.method public whitelist setSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;

    .line 192
    return-void
.end method

.method public whitelist setUpdateCellularEnable(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 201
    return-void
.end method
