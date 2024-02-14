.class public interface abstract Landroid/app/IOplusApplicationThread;
.super Ljava/lang/Object;
.source "IOplusApplicationThread.java"


# static fields
.field public static final blacklist APPLICATION_INFO_CHANGED_FOR_SWITCH_USER:I = 0x2714

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field public static final blacklist OPLUS_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final blacklist OPLUS_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final blacklist SEND_GFX_TRIM:I = 0x2716

.field public static final blacklist SET_DYNAMICAL_LOG_CONFIG:I = 0x2713

.field public static final blacklist SET_DYNAMICAL_LOG_ENABLE:I = 0x2712

.field public static final blacklist SET_ZOOM_SENSOR_STATE:I = 0x2715


# virtual methods
.method public abstract blacklist scheduleApplicationInfoChangedForSwitchUser(Landroid/content/pm/ApplicationInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendGfxTrim(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDynamicalLogConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDynamicalLogEnable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setZoomSensorState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
