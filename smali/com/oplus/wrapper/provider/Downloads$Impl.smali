.class public final Lcom/oplus/wrapper/provider/Downloads$Impl;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/provider/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# static fields
.field public static final whitelist ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

.field public static final whitelist COLUMN_APP_DATA:Ljava/lang/String;

.field public static final whitelist COLUMN_DESCRIPTION:Ljava/lang/String;

.field public static final whitelist COLUMN_DESTINATION:Ljava/lang/String;

.field public static final whitelist COLUMN_FILE_NAME_HINT:Ljava/lang/String;

.field public static final whitelist COLUMN_MIME_TYPE:Ljava/lang/String;

.field public static final whitelist COLUMN_NOTIFICATION_CLASS:Ljava/lang/String;

.field public static final whitelist COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String;

.field public static final whitelist COLUMN_REFERER:Ljava/lang/String;

.field public static final whitelist COLUMN_TITLE:Ljava/lang/String;

.field public static final whitelist COLUMN_URI:Ljava/lang/String;

.field public static final whitelist COLUMN_VISIBILITY:Ljava/lang/String;

.field public static final whitelist DESTINATION_FILE_URI:I

.field public static final whitelist VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I

.field public static final whitelist _DATA:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getActionDownloadCompleted()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnUri()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_URI:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnAppData()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_APP_DATA:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnFileNameHint()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_FILE_NAME_HINT:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getData()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->_DATA:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnMimeType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_MIME_TYPE:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnDestination()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_DESTINATION:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnVisibility()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_VISIBILITY:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnNotificationPackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnNotificationClass()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_NOTIFICATION_CLASS:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnReferer()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_REFERER:Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnTitle()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_TITLE:Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getColumnDescription()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->COLUMN_DESCRIPTION:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getDestinationFileUri()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->DESTINATION_FILE_URI:I

    .line 191
    invoke-static {}, Lcom/oplus/wrapper/provider/Downloads$Impl;->getVisibilityVisibleNotifyCompleted()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/provider/Downloads$Impl;->VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getActionDownloadCompleted()Ljava/lang/String;
    .locals 1

    .line 194
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETED"

    return-object v0
.end method

.method private static blacklist getColumnAppData()Ljava/lang/String;
    .locals 1

    .line 202
    const-string v0, "entity"

    return-object v0
.end method

.method private static blacklist getColumnDescription()Ljava/lang/String;
    .locals 1

    .line 242
    const-string v0, "description"

    return-object v0
.end method

.method private static blacklist getColumnDestination()Ljava/lang/String;
    .locals 1

    .line 218
    const-string v0, "destination"

    return-object v0
.end method

.method private static blacklist getColumnFileNameHint()Ljava/lang/String;
    .locals 1

    .line 206
    const-string v0, "hint"

    return-object v0
.end method

.method private static blacklist getColumnMimeType()Ljava/lang/String;
    .locals 1

    .line 214
    const-string v0, "mimetype"

    return-object v0
.end method

.method private static blacklist getColumnNotificationClass()Ljava/lang/String;
    .locals 1

    .line 230
    const-string v0, "notificationclass"

    return-object v0
.end method

.method private static blacklist getColumnNotificationPackage()Ljava/lang/String;
    .locals 1

    .line 226
    const-string v0, "notificationpackage"

    return-object v0
.end method

.method private static blacklist getColumnReferer()Ljava/lang/String;
    .locals 1

    .line 234
    const-string v0, "referer"

    return-object v0
.end method

.method private static blacklist getColumnTitle()Ljava/lang/String;
    .locals 1

    .line 238
    const-string v0, "title"

    return-object v0
.end method

.method private static blacklist getColumnUri()Ljava/lang/String;
    .locals 1

    .line 198
    const-string v0, "uri"

    return-object v0
.end method

.method private static blacklist getColumnVisibility()Ljava/lang/String;
    .locals 1

    .line 222
    const-string v0, "visibility"

    return-object v0
.end method

.method private static blacklist getData()Ljava/lang/String;
    .locals 1

    .line 210
    const-string v0, "_data"

    return-object v0
.end method

.method private static blacklist getDestinationFileUri()I
    .locals 1

    .line 246
    const/4 v0, 0x4

    return v0
.end method

.method private static blacklist getVisibilityVisibleNotifyCompleted()I
    .locals 1

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isStatusCompleted(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 269
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isStatusSuccess(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 259
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    return v0
.end method
