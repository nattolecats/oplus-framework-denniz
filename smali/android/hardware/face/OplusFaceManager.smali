.class public Landroid/hardware/face/OplusFaceManager;
.super Ljava/lang/Object;
.source "OplusFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/OplusFaceManager$OnAONAuthenticationCancelListener;,
        Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;,
        Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;
    }
.end annotation


# static fields
.field private static final blacklist IOplusFaceManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/face/IOplusFaceManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TAG:Ljava/lang/String; = "OplusFaceManager"


# instance fields
.field private blacklist mClientCallback:Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

.field private blacklist mContext:Landroid/content/Context;

.field blacklist mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field private blacklist mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientCallback(Landroid/hardware/face/OplusFaceManager;)Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/OplusFaceManager;->mClientCallback:Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAONAuthentication(Landroid/hardware/face/OplusFaceManager;Landroid/hardware/biometrics/CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/OplusFaceManager;->cancelAONAuthentication(Landroid/hardware/biometrics/CryptoObject;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/hardware/face/OplusFaceManager$1;

    invoke-direct {v0}, Landroid/hardware/face/OplusFaceManager$1;-><init>()V

    sput-object v0, Landroid/hardware/face/OplusFaceManager;->IOplusFaceManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/hardware/face/OplusFaceManager$4;

    invoke-direct {v0, p0}, Landroid/hardware/face/OplusFaceManager$4;-><init>(Landroid/hardware/face/OplusFaceManager;)V

    iput-object v0, p0, Landroid/hardware/face/OplusFaceManager;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 69
    iput-object p1, p0, Landroid/hardware/face/OplusFaceManager;->mContext:Landroid/content/Context;

    .line 70
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Landroid/hardware/face/OplusFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 71
    return-void
.end method

.method private blacklist cancelAONAuthentication(Landroid/hardware/biometrics/CryptoObject;)V
    .locals 2
    .param p1, "cryptoObject"    # Landroid/hardware/biometrics/CryptoObject;

    .line 296
    const-string v0, "OplusFaceManager"

    const-string v1, "OplusFaceManager#cancelAONAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public static whitelist getService()Landroid/hardware/face/IOplusFaceManager;
    .locals 1

    .line 50
    sget-object v0, Landroid/hardware/face/OplusFaceManager;->IOplusFaceManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/IOplusFaceManager;

    return-object v0
.end method


# virtual methods
.method public blacklist authenticateAON(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;I[BLandroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;
    .param p5, "userId"    # I
    .param p6, "nv21ImageData"    # [B
    .param p7, "handler"    # Landroid/os/Handler;

    .line 211
    iput-object p4, p0, Landroid/hardware/face/OplusFaceManager;->mClientCallback:Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

    .line 212
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v3, p0, Landroid/hardware/face/OplusFaceManager;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p7

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V

    .line 213
    return-void
.end method

.method public blacklist getFaceProcessMemory()I
    .locals 5

    .line 193
    const-string v0, "OplusFaceManager"

    const/4 v1, -0x1

    .line 195
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Landroid/hardware/face/OplusFaceManager;->getService()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/face/IOplusFaceManager;->getFaceProcessMemory()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 200
    :goto_0
    goto :goto_1

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 197
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFaceProcessMemory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 201
    :goto_1
    return v1
.end method

.method public whitelist getFailedAttempts()I
    .locals 5

    .line 143
    const-string v0, "OplusFaceManager"

    const/4 v1, -0x1

    .line 145
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Landroid/hardware/face/OplusFaceManager;->getService()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/face/IOplusFaceManager;->getFailedAttempts()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 150
    :goto_0
    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFailedAttempts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 151
    :goto_1
    return v1
.end method

.method public whitelist getLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "userId"    # I

    .line 127
    const-string v0, "OplusFaceManager"

    const-wide/16 v1, -0x1

    .line 129
    .local v1, "result":J
    :try_start_0
    invoke-static {}, Landroid/hardware/face/OplusFaceManager;->getService()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/face/IOplusFaceManager;->getLockoutAttemptDeadline(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 134
    :goto_0
    goto :goto_1

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 131
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLockoutAttemptDeadline : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 135
    :goto_1
    return-wide v1
.end method

.method public whitelist regsiterFaceCmdCallback(Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;)I
    .locals 6
    .param p1, "callback"    # Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;

    .line 84
    const-string v0, "OplusFaceManager"

    const/4 v1, -0x1

    .line 85
    .local v1, "res":I
    new-instance v2, Landroid/hardware/face/OplusFaceManager$2;

    invoke-direct {v2, p0, p1}, Landroid/hardware/face/OplusFaceManager$2;-><init>(Landroid/hardware/face/OplusFaceManager;Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;)V

    .line 92
    .local v2, "mIFaceCommandCallback":Landroid/hardware/face/IFaceCommandCallback;
    :try_start_0
    invoke-static {}, Landroid/hardware/face/OplusFaceManager;->getService()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/face/IOplusFaceManager;->regsiterFaceCmdCallback(Landroid/hardware/face/IFaceCommandCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 97
    :goto_0
    goto :goto_1

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 94
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regsiterFaceCmdCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 98
    :goto_1
    return v1
.end method

.method public blacklist resetFaceDaemon()V
    .locals 4

    .line 179
    const-string v0, "OplusFaceManager"

    :try_start_0
    invoke-static {}, Landroid/hardware/face/OplusFaceManager;->getService()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/face/IOplusFaceManager;->resetFaceDaemon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetFaceDaemon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 185
    :goto_1
    return-void
.end method

.method public whitelist sendFaceCmd(II[B)I
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "cmdId"    # I
    .param p3, "inbuf"    # [B

    .line 161
    const-string v0, "OplusFaceManager"

    const/4 v1, -0x1

    .line 163
    .local v1, "res":I
    :try_start_0
    invoke-static {}, Landroid/hardware/face/OplusFaceManager;->getService()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/face/IOplusFaceManager;->sendFaceCmd(II[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 168
    :goto_0
    goto :goto_1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception in sendFaceCmd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 169
    :goto_1
    return v1
.end method

.method public whitelist unregsiterFaceCmdCallback(Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;)I
    .locals 6
    .param p1, "callback"    # Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;

    .line 105
    const-string v0, "OplusFaceManager"

    const/4 v1, -0x1

    .line 106
    .local v1, "res":I
    new-instance v2, Landroid/hardware/face/OplusFaceManager$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/face/OplusFaceManager$3;-><init>(Landroid/hardware/face/OplusFaceManager;Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;)V

    .line 113
    .local v2, "mIFaceCommandCallback":Landroid/hardware/face/IFaceCommandCallback;
    :try_start_0
    invoke-static {}, Landroid/hardware/face/OplusFaceManager;->getService()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/face/IOplusFaceManager;->unregsiterFaceCmdCallback(Landroid/hardware/face/IFaceCommandCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 118
    :goto_0
    goto :goto_1

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 115
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregsiterFaceCmdCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 119
    :goto_1
    return v1
.end method
