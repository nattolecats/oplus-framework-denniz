.class public interface abstract Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;
.super Ljava/lang/Object;
.source "CyberSenseLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CyberSenseLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICslMockCallback"
.end annotation


# virtual methods
.method public abstract blacklist onCslCollectionDataChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CyberSenseCellInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onCslNetworkResultChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LocationResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onCslResultChanged(Landroid/telephony/LocationResult;)V
.end method

.method public abstract blacklist onCslStateChanged(I)V
.end method

.method public abstract blacklist onMockPolicyChanged(Landroid/os/Bundle;)V
.end method
