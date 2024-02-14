.class public Landroid/hardware/fingerprint/FingerprintManagerExtImpl;
.super Ljava/lang/Object;
.source "FingerprintManagerExtImpl.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintManagerExt;


# static fields
.field public static final blacklist FINGERPRINT_ACQUIRED_ALREADY_ENROLLED:I = 0x3ea

.field public static final blacklist FINGERPRINT_ACQUIRED_TOO_SIMILAR:I = 0x3e9

.field public static final blacklist FINGERPRINT_ACQUIRED_TOUCH_UP:I = 0x515

.field private static final blacklist TAG:Ljava/lang/String; = "FingerprintManagerExtImpl"


# instance fields
.field public blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "FingerprintManagerExtImpl"

    const-string v1, "FingerprintManagerExtImpl is inited"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getAcquiredString(II)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 56
    :sswitch_0
    const-string v0, "fingerprint touch up"

    return-object v0

    .line 50
    :sswitch_1
    const-string v0, "already enrolled finger"

    return-object v0

    .line 53
    :sswitch_2
    const-string v0, "acquared too similar"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x515 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 64
    nop

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 66
    .local v0, "keyguardComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "com.android.systemui"

    .line 68
    .local v1, "keyguardPackage":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
