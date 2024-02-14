.class public Lcom/oplus/permission/OplusPermissionCheckInjector;
.super Ljava/lang/Object;
.source "OplusPermissionCheckInjector.java"

# interfaces
.implements Lcom/oplus/permission/IOplusPermissionCheckInjector;


# static fields
.field private static final blacklist CONTENT_QUERY:Ljava/lang/String; = "query"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist ENABLE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "PermissionInjector"

.field private static volatile blacklist sInstance:Lcom/oplus/permission/OplusPermissionCheckInjector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/permission/OplusPermissionCheckInjector;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjector;

    .line 17
    const-string v0, "persist.sys.permission.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/permission/OplusPermissionCheckInjector;->ENABLE:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/permission/OplusPermissionCheckInjector;
    .locals 2

    .line 20
    sget-object v0, Lcom/oplus/permission/OplusPermissionCheckInjector;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjector;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/oplus/permission/OplusPermissionCheckInjector;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/oplus/permission/OplusPermissionCheckInjector;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjector;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/oplus/permission/OplusPermissionCheckInjector;

    invoke-direct {v1}, Lcom/oplus/permission/OplusPermissionCheckInjector;-><init>()V

    sput-object v1, Lcom/oplus/permission/OplusPermissionCheckInjector;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjector;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/permission/OplusPermissionCheckInjector;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjector;

    return-object v0
.end method


# virtual methods
.method public whitelist checkApplyBatchPermission(Ljava/util/ArrayList;IILjava/lang/String;)Z
    .locals 4
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;II",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 112
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-boolean v0, Lcom/oplus/permission/OplusPermissionCheckInjector;->ENABLE:Z

    if-eqz v0, :cond_0

    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 115
    .local v0, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v1

    .line 117
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 122
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyBatch in invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PermissionInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/oplus/permission/OplusPermissionCheckInjector;->checkUriPermission(Landroid/net/Uri;IILjava/lang/String;)Z

    move-result v2

    return v2

    .line 127
    .end local v0    # "operation":Landroid/content/ContentProviderOperation;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist checkPermission(Landroid/content/Intent;IILjava/lang/String;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/oplus/permission/OplusPermissionCheckInjector;->ENABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 46
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Landroid/content/pm/OplusPermissionManager;->getInstance()Landroid/content/pm/OplusPermissionManager;

    move-result-object v0

    .line 48
    .local v0, "opm":Landroid/content/pm/OplusPermissionManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 49
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "PermissionInjector"

    if-nez v2, :cond_0

    .line 50
    const-string v4, "intent uri is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v1

    .line 53
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "uriString":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    const-string v6, "android.permission.CALL_PHONE"

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v5, v6

    .line 55
    .local v5, "permission":Ljava/lang/String;
    invoke-virtual {v0, v5, p2, p3}, Landroid/content/pm/OplusPermissionManager;->checkOplusPermission(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission denied: uid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " or pid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " have no permission: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " to access: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    return v1

    .line 62
    .end local v0    # "opm":Landroid/content/pm/OplusPermissionManager;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "uriString":Ljava/lang/String;
    .end local v5    # "permission":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public whitelist checkPermission(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/oplus/permission/OplusPermissionCheckInjector;->ENABLE:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Landroid/content/pm/OplusPermissionManager;->getInstance()Landroid/content/pm/OplusPermissionManager;

    move-result-object v0

    .line 34
    .local v0, "opm":Landroid/content/pm/OplusPermissionManager;
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/OplusPermissionManager;->checkOplusPermission(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied: uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " have no permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PermissionInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v1, 0x0

    return v1

    .line 40
    .end local v0    # "opm":Landroid/content/pm/OplusPermissionManager;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;IILjava/lang/String;)Z
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 67
    const-string v0, "PermissionInjector"

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 68
    const-string v2, "uri is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v1

    .line 71
    :cond_0
    sget-boolean v2, Lcom/oplus/permission/OplusPermissionCheckInjector;->ENABLE:Z

    if-eqz v2, :cond_f

    .line 72
    invoke-static {}, Landroid/content/pm/OplusPermissionManager;->getInstance()Landroid/content/pm/OplusPermissionManager;

    move-result-object v2

    .line 73
    .local v2, "opm":Landroid/content/pm/OplusPermissionManager;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "uriString":Ljava/lang/String;
    const-string v4, "query"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 79
    .local v4, "readPermission":Z
    const-string v5, "content://call_log/calls"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    if-eqz v4, :cond_1

    const-string v5, "android.permission.READ_CALL_LOG"

    goto :goto_0

    :cond_1
    const-string v5, "android.permission.WRITE_CALL_LOG"

    .local v5, "permission":Ljava/lang/String;
    :goto_0
    goto/16 :goto_6

    .line 81
    .end local v5    # "permission":Ljava/lang/String;
    :cond_2
    const-string v5, "content://sms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "content://mms-sms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_5

    .line 83
    :cond_3
    const-string v5, "content://mms"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    if-eqz v4, :cond_4

    const-string v5, "android.permission.READ_MMS"

    goto :goto_1

    :cond_4
    const-string v5, "android.permission.WRITE_MMS"

    .restart local v5    # "permission":Ljava/lang/String;
    :goto_1
    goto :goto_6

    .line 85
    .end local v5    # "permission":Ljava/lang/String;
    :cond_5
    const-string v5, "content://com.android.contacts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 86
    if-eqz v4, :cond_6

    const-string v5, "android.permission.READ_CONTACTS"

    goto :goto_2

    :cond_6
    const-string v5, "android.permission.WRITE_CONTACTS"

    .restart local v5    # "permission":Ljava/lang/String;
    :goto_2
    goto :goto_6

    .line 87
    .end local v5    # "permission":Ljava/lang/String;
    :cond_7
    const-string v5, "content://com.android.calendar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 88
    if-eqz v4, :cond_8

    const-string v5, "android.permission.READ_CALENDAR"

    goto :goto_3

    :cond_8
    const-string v5, "android.permission.WRITE_CALENDAR"

    .restart local v5    # "permission":Ljava/lang/String;
    :goto_3
    goto :goto_6

    .line 89
    .end local v5    # "permission":Ljava/lang/String;
    :cond_9
    const-string v5, "content://com.android.voicemail/voicemail"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 90
    const-string v5, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .restart local v5    # "permission":Ljava/lang/String;
    goto :goto_6

    .line 91
    .end local v5    # "permission":Ljava/lang/String;
    :cond_a
    const-string v5, "content://com.android.browser"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 92
    const-string v5, "content://com.heytap.browser/bookmarks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 93
    const-string v5, "content://com.heytap.browser/history"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_4

    .line 99
    :cond_b
    return v1

    .line 94
    :cond_c
    :goto_4
    const-string v5, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    .restart local v5    # "permission":Ljava/lang/String;
    goto :goto_6

    .line 82
    .end local v5    # "permission":Ljava/lang/String;
    :cond_d
    :goto_5
    if-eqz v4, :cond_e

    const-string v5, "android.permission.READ_SMS"

    goto :goto_6

    :cond_e
    const-string v5, "android.permission.WRITE_SMS"

    .line 101
    .restart local v5    # "permission":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2, v5, p2, p3}, Landroid/content/pm/OplusPermissionManager;->checkOplusPermission(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_f

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission denied: uid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " or pid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " have no permission: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " to access: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " provider: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    return v0

    .line 107
    .end local v2    # "opm":Landroid/content/pm/OplusPermissionManager;
    .end local v3    # "uriString":Ljava/lang/String;
    .end local v4    # "readPermission":Z
    .end local v5    # "permission":Ljava/lang/String;
    :cond_f
    return v1
.end method
