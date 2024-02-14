.class Landroid/os/OplusTheiaUIMonitor$OplusTheiaUIMonitorHolder;
.super Ljava/lang/Object;
.source "OplusTheiaUIMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusTheiaUIMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OplusTheiaUIMonitorHolder"
.end annotation


# static fields
.field private static final blacklist SINSTANCE:Landroid/os/OplusTheiaUIMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSINSTANCE()Landroid/os/OplusTheiaUIMonitor;
    .locals 1

    sget-object v0, Landroid/os/OplusTheiaUIMonitor$OplusTheiaUIMonitorHolder;->SINSTANCE:Landroid/os/OplusTheiaUIMonitor;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 134
    new-instance v0, Landroid/os/OplusTheiaUIMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/OplusTheiaUIMonitor;-><init>(Landroid/os/OplusTheiaUIMonitor-IA;)V

    sput-object v0, Landroid/os/OplusTheiaUIMonitor$OplusTheiaUIMonitorHolder;->SINSTANCE:Landroid/os/OplusTheiaUIMonitor;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
