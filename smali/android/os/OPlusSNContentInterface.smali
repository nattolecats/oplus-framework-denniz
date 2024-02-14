.class public Landroid/os/OPlusSNContentInterface;
.super Ljava/lang/Object;
.source "OPlusSNContentInterface.java"


# static fields
.field public static final whitelist CMD_COPY:I = 0x3

.field public static final whitelist CMD_COPY_CANCEL:I = 0x6

.field public static final whitelist CMD_GENERIC_FAIL:I = 0x7

.field public static final whitelist CMD_GENERIC_RESERVED:I = 0x8

.field public static final whitelist CMD_MEDIA_RECEIVED:I = 0x5

.field public static final whitelist CMD_MOUNT:I = 0x1

.field public static final whitelist CMD_MW_FAIL:I = 0x9

.field public static final whitelist CMD_REFRESH:I = 0x4

.field public static final whitelist CMD_UNMOUNT:I = 0x2

.field public static final whitelist KEY_COMMAND:Ljava/lang/String; = "key_command"

.field public static final whitelist KEY_COPIED_DATA_SIZE:Ljava/lang/String; = "key_copied_data_size"

.field public static final whitelist KEY_MEDIA_PATH:Ljava/lang/String; = "key_media_path"

.field public static final whitelist KEY_STATUS:Ljava/lang/String; = "key_status"

.field public static final whitelist KEY_TOTAL_SIZE:Ljava/lang/String; = "key_total_size"

.field public static final whitelist RESULT_CODE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 8
    const-class v0, Landroid/os/OPlusSNContentInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OPlusSNContentInterface;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "snmcjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist PostServiceCBFromNative(Ljava/lang/Object;IILjava/lang/Object;IILjava/lang/String;)I
    .locals 4
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "o2"    # Ljava/lang/Object;
    .param p4, "copiedDatasize"    # I
    .param p5, "totalsize"    # I
    .param p6, "mediaPath"    # Ljava/lang/String;

    .line 61
    sget-object v0, Landroid/os/OPlusSNContentInterface;->TAG:Ljava/lang/String;

    const-string v1, "Received callback from native layer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostServiceCBFromNative Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Copied Data size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Total size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MediaPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v1, Landroid/os/OPlusSNContentInterface;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "key_command"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v3, "key_status"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v3, "key_total_size"

    invoke-virtual {v1, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v3, "key_copied_data_size"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v3, "key_media_path"

    invoke-virtual {v1, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "Send result to app layer "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Landroid/os/OPlusSNContentInterface;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 74
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "Callback not register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return v2
.end method

.method public static whitelist addResultReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 40
    sput-object p0, Landroid/os/OPlusSNContentInterface;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 41
    return-void
.end method

.method public static native whitelist nativeInitMW(Ljava/lang/Object;)Z
.end method

.method public static whitelist removeResultReceiver()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OPlusSNContentInterface;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 48
    return-void
.end method


# virtual methods
.method public native whitelist nativeDeInitMW()I
.end method

.method public native whitelist nativeSendUpdateCmd(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public native whitelist nativeSetExternalSDPath(Ljava/lang/String;)V
.end method

.method public native whitelist nativeSetWhiteListedUID(I)V
.end method
