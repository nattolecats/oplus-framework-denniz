.class Lcom/oplus/wrapper/app/IActivityManager$Stub$1;
.super Landroid/app/IActivityManager$Stub;
.source "IActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/wrapper/app/IActivityManager$Stub;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/wrapper/app/IActivityManager$Stub;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/wrapper/app/IActivityManager$Stub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/wrapper/app/IActivityManager$Stub;

    .line 74
    iput-object p1, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub$1;->this$0:Lcom/oplus/wrapper/app/IActivityManager$Stub;

    invoke-direct {p0}, Landroid/app/IActivityManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method public blacklist addPackageDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    return-void
.end method

.method public blacklist appNotResponding(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    return-void
.end method

.method public blacklist appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    return-void
.end method

.method public blacklist attachApplication(Landroid/app/IApplicationThread;J)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public blacklist backgroundAllowlistUid(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    return-void
.end method

.method public blacklist backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    return-void
.end method

.method public blacklist bindBackupAgent(Ljava/lang/String;III)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "iServiceConnection"    # Landroid/app/IServiceConnection;
    .param p6, "i"    # I
    .param p7, "s1"    # Ljava/lang/String;
    .param p8, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "iServiceConnection"    # Landroid/app/IServiceConnection;
    .param p6, "i"    # I
    .param p7, "s1"    # Ljava/lang/String;
    .param p8, "s2"    # Ljava/lang/String;
    .param p9, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist bootAnimationComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    return-void
.end method

.method public blacklist broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "iIntentReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "i"    # I
    .param p6, "s1"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "strings"    # [Ljava/lang/String;
    .param p9, "i1"    # I
    .param p10, "bundle1"    # Landroid/os/Bundle;
    .param p11, "b"    # Z
    .param p12, "b1"    # Z
    .param p13, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p6, "resultCode"    # I
    .param p7, "resultData"    # Ljava/lang/String;
    .param p8, "map"    # Landroid/os/Bundle;
    .param p9, "requiredPermissions"    # [Ljava/lang/String;
    .param p10, "excludePermissions"    # [Ljava/lang/String;
    .param p11, "excludePackages"    # [Ljava/lang/String;
    .param p12, "appOp"    # I
    .param p13, "options"    # Landroid/os/Bundle;
    .param p14, "serialized"    # Z
    .param p15, "sticky"    # Z
    .param p16, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 0
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    return-void
.end method

.method public blacklist cancelTaskWindowTransition(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    return-void
.end method

.method public blacklist checkPermission(Ljava/lang/String;II)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I
    .param p6, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I
    .locals 1
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I
    .param p6, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;IIII",
            "Landroid/os/IBinder;",
            ")[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z
    .param p3, "iPackageDataObserver"    # Landroid/content/pm/IPackageDataObserver;
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist closeSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    return-void
.end method

.method public blacklist crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i2"    # I
    .param p5, "s1"    # Ljava/lang/String;
    .param p6, "b"    # Z
    .param p7, "i3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    return-void
.end method

.method public blacklist crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i2"    # I
    .param p5, "s1"    # Ljava/lang/String;
    .param p6, "b"    # Z
    .param p7, "i3"    # I
    .param p8, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    return-void
.end method

.method public blacklist dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "b"    # Z
    .param p4, "b1"    # Z
    .param p5, "b2"    # Z
    .param p6, "s1"    # Ljava/lang/String;
    .param p7, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p8, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpHeapFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    return-void
.end method

.method public blacklist enableAppFreezer(Z)Z
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableBinderTracing()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    return-void
.end method

.method public blacklist enableFgsNotificationRateLimit(Z)Z
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enterSafeMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    return-void
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishHeavyWeightApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    return-void
.end method

.method public blacklist finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    return-void
.end method

.method public blacklist finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "b"    # Z
    .param p6, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public blacklist forceStopPackage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    return-void
.end method

.method public blacklist getAllRootTaskInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 849
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBackgroundRestrictionExemptionReason(I)I
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBugreportWhitelistedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub$1;->this$0:Lcom/oplus/wrapper/app/IActivityManager$Stub;

    invoke-virtual {v0}, Lcom/oplus/wrapper/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "i"    # I
    .param p5, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "iBinder"    # Landroid/os/IBinder;
    .param p4, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentUserId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDelegatedShellPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "iBinder"    # Landroid/os/IBinder;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "i1"    # I
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "strings"    # [Ljava/lang/String;
    .param p8, "i2"    # I
    .param p9, "bundle"    # Landroid/os/Bundle;
    .param p10, "i3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "iBinder"    # Landroid/os/IBinder;
    .param p5, "s2"    # Ljava/lang/String;
    .param p6, "i1"    # I
    .param p7, "intents"    # [Landroid/content/Intent;
    .param p8, "strings"    # [Ljava/lang/String;
    .param p9, "i2"    # I
    .param p10, "bundle"    # Landroid/os/Bundle;
    .param p11, "i3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLifeMonitor()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1119
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLockTaskModeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 0
    .param p1, "memoryInfo"    # Landroid/app/ActivityManager$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    return-void
.end method

.method public blacklist getMemoryTrimLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .param p1, "runningAppProcessInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    return-void
.end method

.method public blacklist getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProcessLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 1
    .param p1, "ints"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Debug$MemoryInfo;

    return-object v0
.end method

.method public blacklist getProcessPss([I)[J
    .locals 1
    .param p1, "ints"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public blacklist getProcessesInErrorState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I
    .param p3, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    return-void
.end method

.method public blacklist getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningAppProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningExternalApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRunningUserIds()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist getServices(II)Ljava/util/List;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSwitchingFromUserMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSwitchingToUserMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTasks(I)Ljava/util/List;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidProcessCapabilities(ILjava/lang/String;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUidProcessState(ILjava/lang/String;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "i"    # I
    .param p5, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    return-void
.end method

.method public blacklist handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "parcelableCrashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .param p3, "violationInfo"    # Landroid/os/StrictMode$ViolationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    return-void
.end method

.method public blacklist handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z
    .param p4, "parcelableCrashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .param p5, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "b"    # Z
    .param p5, "b1"    # Z
    .param p6, "s"    # Ljava/lang/String;
    .param p7, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hang(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    return-void
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1185
    return-void
.end method

.method public blacklist isAppFreezerEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppFreezerSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBackgroundRestricted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInLockTaskMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTopActivityImmersive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTopOfTask(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUidActive(ILjava/lang/String;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserAMonkey()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserRunning(II)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist killAllBackgroundProcesses()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    return-void
.end method

.method public blacklist killApplication(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    return-void
.end method

.method public blacklist killApplicationProcess(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    return-void
.end method

.method public blacklist killBackgroundProcesses(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    return-void
.end method

.method public blacklist killPackageDependents(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    return-void
.end method

.method public blacklist killPids([ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "ints"    # [I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist killProcessesBelowForeground(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist killProcessesWhenImperceptible([ILjava/lang/String;)V
    .locals 0
    .param p1, "ints"    # [I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    return-void
.end method

.method public blacklist killUid(IILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    return-void
.end method

.method public blacklist killUidForPermissionChange(IILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1165
    return-void
.end method

.method public blacklist launchBugReportHandlerApp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist makePackageIdle(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    return-void
.end method

.method public blacklist moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .param p5, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    return-void
.end method

.method public blacklist moveTaskToRootTask(IIZ)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    return-void
.end method

.method public blacklist noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 0
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "i"    # I
    .param p4, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    return-void
.end method

.method public blacklist noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 0
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "i"    # I
    .param p4, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    return-void
.end method

.method public blacklist noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "i"    # I
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    return-void
.end method

.method public blacklist notifyCleartextNetwork(I[B)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    return-void
.end method

.method public blacklist notifyLockedProfile(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    return-void
.end method

.method public blacklist openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist performIdleMaintenance()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    return-void
.end method

.method public blacklist profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "b"    # Z
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List<",
            "Landroid/app/ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    return-void
.end method

.method public blacklist publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "iBinder1"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public blacklist queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist refContentProvider(Landroid/os/IBinder;II)Z
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z
    .locals 1
    .param p1, "iForegroundServiceObserver"    # Landroid/app/IForegroundServiceObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "iResultReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 0
    .param p1, "iProcessObserver"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    return-void
.end method

.method public blacklist registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "iIntentReceiver"    # Landroid/content/IIntentReceiver;
    .param p4, "intentFilter"    # Landroid/content/IntentFilter;
    .param p5, "s1"    # Ljava/lang/String;
    .param p6, "i"    # I
    .param p7, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;
    .param p5, "iIntentReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "intentFilter"    # Landroid/content/IntentFilter;
    .param p7, "s3"    # Ljava/lang/String;
    .param p8, "i"    # I
    .param p9, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 0
    .param p1, "iTaskStackListener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    return-void
.end method

.method public blacklist registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    .locals 0
    .param p1, "iUidObserver"    # Landroid/app/IUidObserver;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "iUserSwitchObserver"    # Landroid/app/IUserSwitchObserver;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    return-void
.end method

.method public blacklist removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    return-void
.end method

.method public blacklist removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    return-void
.end method

.method public blacklist removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    return-void
.end method

.method public blacklist removeTask(I)Z
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub$1;->this$0:Lcom/oplus/wrapper/app/IActivityManager$Stub;

    invoke-virtual {v0, p1}, Lcom/oplus/wrapper/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v0

    return v0
.end method

.method public blacklist requestBugReport(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    return-void
.end method

.method public blacklist requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    return-void
.end method

.method public blacklist requestFullBugReport()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    return-void
.end method

.method public blacklist requestInteractiveBugReport()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    return-void
.end method

.method public blacklist requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    return-void
.end method

.method public blacklist requestRemoteBugReport(J)V
    .locals 0
    .param p1, "nonce"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    return-void
.end method

.method public blacklist requestSystemServerHeapDump()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    return-void
.end method

.method public blacklist requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    return-void
.end method

.method public blacklist requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    return-void
.end method

.method public blacklist resetAppErrors()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1170
    return-void
.end method

.method public blacklist resizeTask(ILandroid/graphics/Rect;I)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 950
    return-void
.end method

.method public blacklist restart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    return-void
.end method

.method public blacklist restartUserInBackground(I)I
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1069
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resumeAppSwitches()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    return-void
.end method

.method public blacklist revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "i"    # I
    .param p5, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    return-void
.end method

.method public blacklist scheduleApplicationInfoChanged(Ljava/util/List;I)V
    .locals 0
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist sendIdleJobTrigger()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    return-void
.end method

.method public blacklist sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "i"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "iIntentReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "s1"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public blacklist setAalEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    return-void
.end method

.method public blacklist setAalMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    return-void
.end method

.method public blacklist setActivityController(Landroid/app/IActivityController;Z)V
    .locals 0
    .param p1, "iActivityController"    # Landroid/app/IActivityController;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    return-void
.end method

.method public blacklist setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "locusId"    # Landroid/content/LocusId;
    .param p3, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    return-void
.end method

.method public blacklist setAgentApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    return-void
.end method

.method public blacklist setAlwaysFinish(Z)V
    .locals 0
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    return-void
.end method

.method public blacklist setDebugApp(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z
    .param p3, "b1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    return-void
.end method

.method public blacklist setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "l"    # J
    .param p5, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    return-void
.end method

.method public blacklist setFocusedRootTask(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    return-void
.end method

.method public blacklist setHasTopUi(Z)V
    .locals 0
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    return-void
.end method

.method public blacklist setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    return-void
.end method

.method public blacklist setPersistentVrThread(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1085
    return-void
.end method

.method public blacklist setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .param p3, "b"    # Z
    .param p4, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    return-void
.end method

.method public blacklist setProcessLimit(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    return-void
.end method

.method public blacklist setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setProcessStateSummary([B)V
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    return-void
.end method

.method public blacklist setRenderThread(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    return-void
.end method

.method public blacklist setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    return-void
.end method

.method public blacklist setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "i"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "i1"    # I
    .param p6, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    return-void
.end method

.method public blacklist setStopUserOnSwitch(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    return-void
.end method

.method public blacklist setTaskResizeable(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    return-void
.end method

.method public blacklist setUserIsMonkey(Z)V
    .locals 0
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    return-void
.end method

.method public blacklist showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    return-void
.end method

.method public blacklist showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    return-void
.end method

.method public blacklist shutdown(I)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist signalPersistentProcesses(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    return-void
.end method

.method public blacklist startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "iBinder"    # Landroid/os/IBinder;
    .param p6, "s2"    # Ljava/lang/String;
    .param p7, "i"    # I
    .param p8, "i1"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "iBinder"    # Landroid/os/IBinder;
    .param p6, "s2"    # Ljava/lang/String;
    .param p7, "i"    # I
    .param p8, "i1"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bundle"    # Landroid/os/Bundle;
    .param p11, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "s2"    # Ljava/lang/String;
    .param p6, "iBinder"    # Landroid/os/IBinder;
    .param p7, "s3"    # Ljava/lang/String;
    .param p8, "i"    # I
    .param p9, "i1"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bundle"    # Landroid/os/Bundle;
    .param p12, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "s2"    # Ljava/lang/String;
    .param p6, "iBinder"    # Landroid/os/IBinder;
    .param p7, "s3"    # Ljava/lang/String;
    .param p8, "i"    # I
    .param p9, "i1"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startBinderTracking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    return-void
.end method

.method public blacklist startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    return-void
.end method

.method public blacklist startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "iInstrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "iUiAutomationConnection"    # Landroid/app/IUiAutomationConnection;
    .param p7, "i1"    # I
    .param p8, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startProfile(I)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "b"    # Z
    .param p5, "s1"    # Ljava/lang/String;
    .param p6, "s2"    # Ljava/lang/String;
    .param p7, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startSystemLockTaskMode(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    return-void
.end method

.method public blacklist startUserInBackground(I)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "iProgressListener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "iProgressListener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopAppForUser(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    return-void
.end method

.method public blacklist stopAppSwitches()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    return-void
.end method

.method public blacklist stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopDelegateShellPermissionIdentity()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    return-void
.end method

.method public blacklist stopProfile(I)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 1
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopUser(IZLandroid/app/IStopUserCallback;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "b"    # Z
    .param p3, "iStopUserCallback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopUserWithDelayedLocking(IZLandroid/app/IStopUserCallback;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "b"    # Z
    .param p3, "iStopUserCallback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist suppressResizeConfigChanges(Z)V
    .locals 0
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    return-void
.end method

.method public blacklist switchUser(I)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    return-void
.end method

.method public blacklist unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    return-void
.end method

.method public blacklist unbindService(Landroid/app/IServiceConnection;)Z
    .locals 1
    .param p1, "iServiceConnection"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "iApplicationThread"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public blacklist unhandledBack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "bytes"    # [B
    .param p3, "bytes1"    # [B
    .param p4, "iProgressListener"    # Landroid/os/IProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .locals 0
    .param p1, "iIntentSender"    # Landroid/content/IIntentSender;
    .param p2, "iResultReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    return-void
.end method

.method public blacklist unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 0
    .param p1, "iProcessObserver"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    return-void
.end method

.method public blacklist unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 0
    .param p1, "iIntentReceiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public blacklist unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 0
    .param p1, "iTaskStackListener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    return-void
.end method

.method public blacklist unregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 0
    .param p1, "iUidObserver"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 0
    .param p1, "iUserSwitchObserver"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    return-void
.end method

.method public blacklist unstableProviderDied(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    return-void
.end method

.method public blacklist updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    return-void
.end method

.method public blacklist updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    return-void
.end method

.method public blacklist updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    return-void
.end method

.method public blacklist updateServiceGroup(Landroid/app/IServiceConnection;II)V
    .locals 0
    .param p1, "iServiceConnection"    # Landroid/app/IServiceConnection;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method public blacklist waitForBroadcastIdle()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    return-void
.end method

.method public blacklist waitForNetworkStateUpdate(J)V
    .locals 0
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    return-void
.end method
