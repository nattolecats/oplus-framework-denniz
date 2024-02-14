.class public Lcom/oplus/wrapper/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# static fields
.field public static final whitelist ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/oplus/wrapper/app/KeyguardManager;->getActionConfirmDeviceCredential()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/app/KeyguardManager;->ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getActionConfirmDeviceCredential()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    return-object v0
.end method
