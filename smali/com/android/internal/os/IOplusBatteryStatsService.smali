.class public interface abstract Lcom/android/internal/os/IOplusBatteryStatsService;
.super Ljava/lang/Object;
.source "IOplusBatteryStatsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IOplusBatteryStatsService$Stub;,
        Lcom/android/internal/os/IOplusBatteryStatsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.os.IOplusBatteryStatsService"


# virtual methods
.method public abstract blacklist getUidSipper([IJIZZ)[Lcom/android/internal/os/UidSipper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
