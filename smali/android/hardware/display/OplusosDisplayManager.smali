.class public Landroid/hardware/display/OplusosDisplayManager;
.super Landroid/hardware/display/OplusBaseDisplayManager;
.source "OplusosDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IOplusosDisplayManager;


# static fields
.field public static final whitelist KEY_GAME_LOCK_SWITCH:Ljava/lang/String; = "game_lock_switch"

.field public static final whitelist MSG_GAME_SPACE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "OplusosDisplayManager"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/hardware/display/OplusBaseDisplayManager;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist setStateChanged(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "msgId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "success":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 39
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 40
    .local v2, "reply":Landroid/os/Parcel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStateChanged +++ msgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OplusosDisplayManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_0
    const-string v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 45
    iget-object v3, p0, Landroid/hardware/display/OplusosDisplayManager;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x277f

    const/4 v7, 0x0

    invoke-interface {v3, v6, v1, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 46
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 47
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 51
    nop

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setStateChanged --- msgId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v0

    .line 49
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw v3
.end method
