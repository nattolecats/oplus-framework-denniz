.class public Lcom/oplus/screenshot/OplusLongshotViewRoot;
.super Ljava/lang/Object;
.source "OplusLongshotViewRoot.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "LongshotDump"


# instance fields
.field private blacklist mIsConnected:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Lcom/oplus/screenshot/OplusLongshotDump;->DBG:Z

    sput-boolean v0, Lcom/oplus/screenshot/OplusLongshotViewRoot;->DBG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewRoot;->mIsConnected:Z

    return-void
.end method


# virtual methods
.method public whitelist isConnected()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusLongshotViewRoot;->mIsConnected:Z

    return v0
.end method

.method public whitelist setConnected(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 39
    sget-boolean v0, Lcom/oplus/screenshot/OplusLongshotViewRoot;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LongshotDump"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-boolean p1, p0, Lcom/oplus/screenshot/OplusLongshotViewRoot;->mIsConnected:Z

    .line 41
    return-void
.end method
