.class public Lcom/oplus/content/OplusIntent;
.super Landroid/content/Intent;
.source "OplusIntent.java"


# static fields
.field public static final whitelist ACTION_CAMERA_MODE_CHANGE:Ljava/lang/String; = "android.intent.action.CAMERA_MODE_CHANGE"

.field public static final whitelist ACTION_CLOSE_NOTIFICATION_DIALOG:Ljava/lang/String; = "android.intent.action.CLOSE_NOTIFICATION_DIALOG"

.field public static final whitelist ACTION_DATA_COLLECT_CLEAR:Ljava/lang/String; = "oplus.intent.action.DATA_COLLECT_CLEAR"

.field public static final whitelist ACTION_DATA_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.DATA_DEFAULT_SIM"

.field public static final whitelist ACTION_DUAL_SIM_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.DUAL_SIM_MODE"

.field public static final whitelist ACTION_FILE_ENCRYPT_DECRYPT:Ljava/lang/String; = "oplus.intent.action.decrypt"

.field public static final whitelist ACTION_FILE_ENCRYPT_ENCRYPT:Ljava/lang/String; = "oplus.intent.action.encrypt"

.field public static final whitelist ACTION_FILE_ENCRYPT_STATE_CHANGED:Ljava/lang/String; = "oplus.intent.action.encrypt.stateChanged"

.field public static final whitelist ACTION_HOME_MODE_CHANGE:Ljava/lang/String; = "android.intent.action.HOME_MODE_CHANGE"

.field public static final whitelist ACTION_LID_STATE_CHANGED:Ljava/lang/String; = "com.oplus.intent.action.LID_STATE_CHANGED"

.field public static final whitelist ACTION_MEDIA_SCANNER_SCAN_ALL:Ljava/lang/String; = "oplus.intent.action.MEDIA_SCAN_ALL"

.field public static final whitelist ACTION_MEDIA_SCANNER_SCAN_DIRECTORY:Ljava/lang/String; = "oplus.intent.action.MEDIA_SCAN_DIRECTORY"

.field public static final whitelist ACTION_OPLUS_OTA_UPDATE_FAILED:Ljava/lang/String; = "oplus.intent.action.OPLUS_OTA_UPDATE_FAILED"

.field public static final whitelist ACTION_OPLUS_OTA_UPDATE_SUCCESSED:Ljava/lang/String; = "oplus.intent.action.OPLUS_OTA_UPDATE_SUCCESSED"

.field public static final whitelist ACTION_OPLUS_PACKAGE_ADDED:Ljava/lang/String; = "oplus.intent.action.OPLUS_PACKAGE_ADDED"

.field public static final whitelist ACTION_OPLUS_RECOVER_UPDATE_FAILED:Ljava/lang/String; = "oplus.intent.action.OPLUS_RECOVER_UPDATE_FAILED"

.field public static final whitelist ACTION_OPLUS_RECOVER_UPDATE_SUCCESSED:Ljava/lang/String; = "oplus.intent.action.OPLUS_RECOVER_UPDATE_SUCCESSED"

.field public static final whitelist ACTION_PRE_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_PRE_SHARED"

.field public static final whitelist ACTION_SAU_UPDATE_FAILED:Ljava/lang/String; = "oplus.intent.action.OPLUS_SAU_UPDATE_FAILED"

.field public static final whitelist ACTION_SAU_UPDATE_SUCCESSED:Ljava/lang/String; = "oplus.intent.action.OPLUS_SAU_UPDATE_SUCCESSED"

.field public static final whitelist ACTION_SCREEN_SHOT:Ljava/lang/String; = "oplus.intent.action.SCREEN_SHOT"

.field public static final whitelist ACTION_SKIN_CHANGED:Ljava/lang/String; = "oplus.intent.action.SKIN_CHANGED"

.field public static final whitelist ACTION_TRIGGER_PACKAGE:Ljava/lang/String; = "android.intent.action.TRIGGER_PACKAGE"

.field public static final whitelist EXTRA_DATA_BRIGHTNESS:Ljava/lang/String; = "LightBreightness"

.field public static final whitelist EXTRA_DATA_ID:Ljava/lang/String; = "LightID"

.field public static final whitelist EXTRA_DUAL_SIM_MODE:Ljava/lang/String; = "mode"

.field public static final whitelist EXTRA_LID_STATE:Ljava/lang/String; = "lid_state"

.field public static final whitelist INTENT_CAMERA_OPEN_LIGHT:Ljava/lang/String; = "com.oplus.camera.OpenLight"

.field public static final blacklist OPLUS_FALG_APP_DETAILS_SKIP:I = 0x1000

.field public static final whitelist OPLUS_FLAG_ACTIVITY_SECURE_POLICY:I = -0x80000000

.field public static final blacklist OPLUS_FLAG_GP_INTERCEPT_SKIP:I = 0x100

.field public static final whitelist OPLUS_FLAG_MUTIL_APP:I = 0x400

.field public static final whitelist OPLUS_FLAG_MUTIL_CHOOSER:I = 0x200


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-void
.end method
