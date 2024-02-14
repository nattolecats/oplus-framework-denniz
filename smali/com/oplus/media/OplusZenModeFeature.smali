.class public Lcom/oplus/media/OplusZenModeFeature;
.super Ljava/lang/Object;
.source "OplusZenModeFeature.java"

# interfaces
.implements Lcom/oplus/media/IOplusZenModeFeature;


# static fields
.field private static final blacklist ATLAS_KEY_AUDIO_CHECK_LISTINFO_BYNAME:Ljava/lang/String; = "check_listinfo_byname"

.field private static final blacklist ATLAS_KEY_AUDIO_GET_LISTINFO_BYNAME:Ljava/lang/String; = "get_listinfo_byname"

.field public static final whitelist MUTE_FLAG:I = 0x1

.field private static final blacklist SYSTEM_NOTIFICATION_AUDIO_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusZenModeFeature"

.field public static final whitelist UNMUTE_FLAG:I


# instance fields
.field private blacklist mAtlasGetParameters:Ljava/lang/reflect/Method;

.field private blacklist mAtlasInstance:Ljava/lang/Object;

.field private blacklist mInterceptFlag:Z

.field private blacklist mNeedMute:Z

.field private blacklist mNotificationManager:Ljava/lang/Object;

.field private blacklist mRecoverFlag:Z

.field private blacklist mStreamType:I

.field private blacklist mshouldInterceptSound:Ljava/lang/reflect/Method;


# direct methods
.method public constructor whitelist <init>()V
    .locals 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/media/OplusZenModeFeature;->mNotificationManager:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/media/OplusZenModeFeature;->mNeedMute:Z

    .line 48
    iput-boolean v0, p0, Lcom/oplus/media/OplusZenModeFeature;->mInterceptFlag:Z

    .line 49
    iput-boolean v0, p0, Lcom/oplus/media/OplusZenModeFeature;->mRecoverFlag:Z

    .line 56
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oplus/media/OplusZenModeFeature;->mStreamType:I

    .line 60
    const-string v1, "OplusZenModeFeature"

    const-string v2, "new OplusZenModeFeature"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    const-string v1, "com.oplus.atlas.OplusAtlasManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, "atlasManager":Ljava/lang/Class;
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 64
    .local v2, "methodGetInstance":Ljava/lang/reflect/Method;
    const-string v4, "getParameters"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/media/OplusZenModeFeature;->mAtlasGetParameters:Ljava/lang/reflect/Method;

    .line 65
    const/4 v4, 0x0

    .line 66
    .local v4, "context":Landroid/content/Context;
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/media/OplusZenModeFeature;->mAtlasInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "atlasManager":Ljava/lang/Class;
    .end local v2    # "methodGetInstance":Ljava/lang/reflect/Method;
    .end local v4    # "context":Landroid/content/Context;
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist checkWechatMute()Landroid/os/Parcel;
    .locals 8

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 135
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_listinfo_byname=zenmode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "keys":Ljava/lang/String;
    const/4 v3, 0x0

    .line 143
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/oplus/media/OplusZenModeFeature;->mAtlasGetParameters:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/oplus/media/OplusZenModeFeature;->mAtlasInstance:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v3, :cond_2

    const-string v4, "wechat_mute"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The package name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wecha zenmode control !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusZenModeFeature"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v4, p0, Lcom/oplus/media/OplusZenModeFeature;->mStreamType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 150
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 151
    .local v1, "pMute":Landroid/os/Parcel;
    iget-boolean v4, p0, Lcom/oplus/media/OplusZenModeFeature;->mInterceptFlag:Z

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-object v1

    .line 157
    .end local v1    # "pMute":Landroid/os/Parcel;
    :cond_2
    return-object v1

    .line 136
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v1
.end method

.method public whitelist checkZenMode()Landroid/os/Parcel;
    .locals 11

    .line 78
    iget v0, p0, Lcom/oplus/media/OplusZenModeFeature;->mStreamType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 83
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_3

    .line 87
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check_listinfo_byname=zenmode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "keys":Ljava/lang/String;
    const/4 v3, 0x0

    .line 91
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/oplus/media/OplusZenModeFeature;->mAtlasGetParameters:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/oplus/media/OplusZenModeFeature;->mAtlasInstance:Ljava/lang/Object;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v6

    .line 93
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v3, :cond_4

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The package name is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "qq & wecha zenmode control !"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "OplusZenModeFeature"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 99
    .local v1, "uid":I
    iget-object v6, p0, Lcom/oplus/media/OplusZenModeFeature;->mNotificationManager:Ljava/lang/Object;

    const/4 v7, 0x2

    if-nez v6, :cond_2

    .line 101
    :try_start_1
    const-string v6, "android.app.OplusNotificationManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 102
    .local v6, "clazz":Ljava/lang/Class;
    const-string v8, "shouldInterceptSound"

    new-array v9, v7, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/oplus/media/OplusZenModeFeature;->mshouldInterceptSound:Ljava/lang/reflect/Method;

    .line 103
    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/oplus/media/OplusZenModeFeature;->mNotificationManager:Ljava/lang/Object;

    .line 104
    iget-object v8, p0, Lcom/oplus/media/OplusZenModeFeature;->mshouldInterceptSound:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .end local v6    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 105
    :catch_1
    move-exception v6

    .line 106
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/oplus/media/OplusZenModeFeature;->mNotificationManager:Ljava/lang/Object;

    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/oplus/media/OplusZenModeFeature;->mshouldInterceptSound:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_3

    .line 112
    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v8, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/oplus/media/OplusZenModeFeature;->mInterceptFlag:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    goto :goto_2

    .line 113
    :catch_2
    move-exception v4

    .line 114
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 120
    .local v4, "pMute":Landroid/os/Parcel;
    iget-boolean v5, p0, Lcom/oplus/media/OplusZenModeFeature;->mInterceptFlag:Z

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-object v4

    .line 125
    .end local v1    # "uid":I
    .end local v4    # "pMute":Landroid/os/Parcel;
    :cond_4
    return-object v1

    .line 85
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_5
    :goto_3
    return-object v1

    .line 79
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_4
    return-object v1
.end method

.method public whitelist resetZenModeFlag()V
    .locals 1

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/media/OplusZenModeFeature;->mInterceptFlag:Z

    .line 167
    return-void
.end method

.method public whitelist setAudioStreamType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 170
    iput p1, p0, Lcom/oplus/media/OplusZenModeFeature;->mStreamType:I

    .line 171
    return-void
.end method
