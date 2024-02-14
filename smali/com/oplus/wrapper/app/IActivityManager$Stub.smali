.class public abstract Lcom/oplus/wrapper/app/IActivityManager$Stub;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/IInterface;
.implements Lcom/oplus/wrapper/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wrapper/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# instance fields
.field private final blacklist mTarget:Landroid/app/IActivityManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/oplus/wrapper/app/IActivityManager$Stub$1;

    invoke-direct {v0, p0}, Lcom/oplus/wrapper/app/IActivityManager$Stub$1;-><init>(Lcom/oplus/wrapper/app/IActivityManager$Stub;)V

    iput-object v0, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub;->mTarget:Landroid/app/IActivityManager;

    .line 1217
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/wrapper/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1225
    new-instance v0, Lcom/oplus/wrapper/app/IActivityManager$Stub$Proxy;

    invoke-static {p0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/wrapper/app/IActivityManager$Stub$Proxy;-><init>(Landroid/app/IActivityManager;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/oplus/wrapper/app/IActivityManager$Stub;->mTarget:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
