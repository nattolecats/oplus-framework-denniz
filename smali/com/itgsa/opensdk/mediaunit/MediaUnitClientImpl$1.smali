.class Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;
.super Ljava/lang/Object;
.source "MediaUnitClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;


# direct methods
.method constructor blacklist <init>(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    .line 65
    iput-object p1, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;->this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 67
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;->this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-static {p2}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->-$$Nest$fputmKaraokeService(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;)V

    .line 68
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;->this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-static {v0, p2}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->-$$Nest$fputmBinder(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;Landroid/os/IBinder;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;->this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-static {v1}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->-$$Nest$fgetmKaraokeService(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;->this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-static {v1}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->-$$Nest$fgetmIsActive(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaUnitClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 74
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;->this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-static {v0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->-$$Nest$fgetmKaraokeService(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;->this$0:Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-static {v0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->-$$Nest$mrestartService(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)V

    .line 77
    :cond_0
    return-void
.end method
