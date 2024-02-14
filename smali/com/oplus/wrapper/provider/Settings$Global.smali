.class public Lcom/oplus/wrapper/provider/Settings$Global;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final whitelist ZEN_MODE_IMPORTANT_INTERRUPTIONS:I

.field public static final whitelist ZEN_MODE_OFF:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/oplus/wrapper/provider/Settings$Global;->getZenModeImportantInterruptions()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/provider/Settings$Global;->ZEN_MODE_IMPORTANT_INTERRUPTIONS:I

    .line 44
    invoke-static {}, Lcom/oplus/wrapper/provider/Settings$Global;->getZenModeOff()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/provider/Settings$Global;->ZEN_MODE_OFF:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getZenModeImportantInterruptions()I
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist getZenModeOff()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method
