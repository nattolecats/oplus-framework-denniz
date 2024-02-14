.class public Lcom/oplus/wrapper/provider/Settings$Secure;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final whitelist LOCATION_CHANGER:Ljava/lang/String;

.field public static final whitelist LOCATION_CHANGER_SYSTEM_SETTINGS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/oplus/wrapper/provider/Settings$Secure;->getLocationChangerSystemSettings()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/provider/Settings$Secure;->LOCATION_CHANGER_SYSTEM_SETTINGS:I

    .line 77
    invoke-static {}, Lcom/oplus/wrapper/provider/Settings$Secure;->getLocationChanger()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Settings$Secure;->LOCATION_CHANGER:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getLocationChanger()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "location_changer"

    return-object v0
.end method

.method private static blacklist getLocationChangerSystemSettings()I
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method
