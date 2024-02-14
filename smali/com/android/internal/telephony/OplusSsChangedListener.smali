.class public abstract Lcom/android/internal/telephony/OplusSsChangedListener;
.super Ljava/lang/Object;
.source "OplusSsChangedListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IOplusSsChangedListener;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onServiceStateChanged(ILandroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
.end method
