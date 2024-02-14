.class public Lcom/oplus/deepthinker/userprofile/UserProfileConstants;
.super Ljava/lang/Object;
.source "UserProfileConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/deepthinker/userprofile/UserProfileConstants$LabelId;
    }
.end annotation


# static fields
.field public static final whitelist COLUMN_CONFIDENCE:Ljava/lang/String; = "confidence"

.field public static final whitelist COLUMN_DATA_CYCLE:Ljava/lang/String; = "data_cycle"

.field public static final whitelist COLUMN_DETAIL:Ljava/lang/String; = "detail"

.field public static final whitelist COLUMN_EXPIRATION_TIME:Ljava/lang/String; = "expiration_time"

.field public static final whitelist COLUMN_LABEL_ID:Ljava/lang/String; = "label_id"

.field public static final whitelist COLUMN_LABEL_RESULT:Ljava/lang/String; = "label_result"

.field public static final whitelist COLUMN_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field public static final whitelist DEFAULT_LONG_TERM_DATA_CYCLE:I = 0x1e

.field public static final whitelist DEFAULT_SHORT_TERM_DATA_CYCLE:I = 0x1

.field public static final whitelist FEATURE_ABILITY_USERPROFILE:Ljava/lang/String; = "ability_userprofile"

.field public static final whitelist FEATURE_APP_IMPORTANCE:Ljava/lang/String; = "ability_app_importance"

.field public static final whitelist FEATURE_APP_IMPORTANCE_GET_RESULT:Ljava/lang/String; = "ability_app_importance_1"

.field public static final whitelist FEATURE_APP_IMPORTANCE_GET_RESULT_LOCKED:Ljava/lang/String; = "ability_app_importance_2"

.field public static final whitelist FEATURE_APP_IMPORTANCE_PARAM_SERIALIZABLE_MAP:Ljava/lang/String; = "ability_app_importance_param_0"

.field public static final whitelist FEATURE_PROVIDER:Landroid/net/Uri;

.field public static final whitelist KEY_DATA_CYCLE:Ljava/lang/String; = "data_cycle"

.field public static final whitelist KEY_LABEL_ID:Ljava/lang/String; = "label_id"

.field public static final whitelist KEY_LABEL_TYPE:Ljava/lang/String; = "label_type"

.field public static final whitelist TYPE_APP_LABEL:I = 0x1

.field public static final whitelist TYPE_USER_LABEL:I = 0x0

.field public static final whitelist USERPROFILE_QUERY:Ljava/lang/String; = "query_user_profile"

.field public static final whitelist USERPROFILE_QUERY_RESULT:Ljava/lang/String; = "query_result_user_profile"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    const-string v0, "content://com.oplus.deepthinker.provider.feature"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/deepthinker/userprofile/UserProfileConstants;->FEATURE_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
