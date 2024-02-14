.class public abstract Lcom/oplus/eap/OplusEapDataCallback;
.super Lcom/oplus/eap/IOplusEapDataCallback$Stub;
.source "OplusEapDataCallback.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/oplus/eap/IOplusEapDataCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAppCrashed(Landroid/os/SharedMemory;)V
    .locals 0
    .param p1, "data"    # Landroid/os/SharedMemory;

    .line 30
    return-void
.end method

.method public whitelist onExitInfoRecordAdded(Landroid/app/ApplicationExitInfo;)V
    .locals 0
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;

    .line 39
    return-void
.end method
