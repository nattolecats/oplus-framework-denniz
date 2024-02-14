.class public Lcom/oplus/settings/OplusSettings;
.super Lcom/oplus/settings/OplusBaseSettings;
.source "OplusSettings.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusSettings"

.field public static final whitelist TYPE_OPLUS:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oplus/settings/OplusBaseSettings;-><init>()V

    return-void
.end method

.method public static whitelist readConfig(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, -0x2

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/settings/OplusSettings;->readConfigAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist readConfigString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, -0x2

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/settings/OplusSettings;->readConfigStringAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist registerChangeListener(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/settings/OplusSettingsChangeListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "listener"    # Lcom/oplus/settings/OplusSettingsChangeListener;

    .line 79
    const/4 v0, -0x2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oplus/settings/OplusSettings;->registerChangeListenerAsUser(Landroid/content/Context;Ljava/lang/String;IILcom/oplus/settings/OplusSettingsChangeListener;)V

    .line 80
    return-void
.end method

.method public static whitelist unRegisterChangeListener(Landroid/content/Context;Lcom/oplus/settings/OplusSettingsChangeListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/oplus/settings/OplusSettingsChangeListener;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method public static whitelist writeConfig(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const/4 v0, -0x2

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/settings/OplusSettings;->writeConfigAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist writeConfigString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, -0x2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oplus/settings/OplusSettings;->writeConfigStringAsUser(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method
