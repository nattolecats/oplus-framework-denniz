.class Lcom/oplus/network/heartbeat/HeartbeatSettings$1;
.super Ljava/lang/Object;
.source "HeartbeatSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/heartbeat/HeartbeatSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/heartbeat/HeartbeatSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/heartbeat/HeartbeatSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    new-instance v0, Lcom/oplus/network/heartbeat/HeartbeatSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oplus/network/heartbeat/HeartbeatSettings;-><init>(Landroid/os/Parcel;Lcom/oplus/network/heartbeat/HeartbeatSettings-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/heartbeat/HeartbeatSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/heartbeat/HeartbeatSettings;
    .locals 1
    .param p1, "size"    # I

    .line 41
    new-array v0, p1, [Lcom/oplus/network/heartbeat/HeartbeatSettings;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/oplus/network/heartbeat/HeartbeatSettings$1;->newArray(I)[Lcom/oplus/network/heartbeat/HeartbeatSettings;

    move-result-object p1

    return-object p1
.end method
