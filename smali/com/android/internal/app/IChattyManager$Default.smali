.class public Lcom/android/internal/app/IChattyManager$Default;
.super Ljava/lang/Object;
.source "IChattyManager.java"

# interfaces
.implements Lcom/android/internal/app/IChattyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IChattyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
