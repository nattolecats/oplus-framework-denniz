.class public Lcom/oplus/direct/OplusDirectFindCmd;
.super Ljava/lang/Object;
.source "OplusDirectFindCmd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CMD_TYPE:Ljava/lang/String; = "cmd_type"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/direct/OplusDirectFindCmd;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CMD:Ljava/lang/String; = "direct_find_cmd"

.field public static final whitelist EXTRA_ID_NAMES:Ljava/lang/String; = "id_names"

.field private static final blacklist OPLUS_DIRECT_FIND_PARAM:Ljava/lang/String; = "mOplusDirectFindParam"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist RULE_PARAM:Ljava/lang/String; = "rule_param"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDirectFindCmd"


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

.field private blacklist mOplusDirectFindParam:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/oplus/direct/OplusDirectFindCmd$1;

    invoke-direct {v0}, Lcom/oplus/direct/OplusDirectFindCmd$1;-><init>()V

    sput-object v0, Lcom/oplus/direct/OplusDirectFindCmd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1}, Lcom/oplus/direct/OplusDirectFindCmd;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/direct/IOplusDirectFindCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 92
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/oplus/direct/OplusDirectFindCmd;-><init>(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;
    .param p2, "param"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    .line 104
    invoke-virtual {p0, p2}, Lcom/oplus/direct/OplusDirectFindCmd;->setOplusDirectFindParam(Ljava/lang/String;)V

    .line 105
    invoke-static {p2}, Lcom/oplus/direct/OplusDirectFindCmd;->getCmdTypeFromJSON(Ljava/lang/String;)Lcom/oplus/direct/OplusDirectFindCmds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/direct/OplusDirectFindCmds;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/direct/OplusDirectFindCmd;->putCommand(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/oplus/direct/OplusDirectFindCmd;->setCallback(Lcom/oplus/direct/IOplusDirectFindCallback;)V

    .line 107
    return-void
.end method

.method public static whitelist getCmdTypeFromJSON(Ljava/lang/String;)Lcom/oplus/direct/OplusDirectFindCmds;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/oplus/direct/OplusDirectFindCmds;->FIND_FAVORITE:Lcom/oplus/direct/OplusDirectFindCmds;

    return-object v0

    .line 233
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "paramObj":Lorg/json/JSONObject;
    const-string v1, "cmd_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Lcom/oplus/direct/OplusDirectFindCmds;->valueOf(Ljava/lang/String;)Lcom/oplus/direct/OplusDirectFindCmds;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 236
    .end local v0    # "paramObj":Lorg/json/JSONObject;
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 238
    sget-object v1, Lcom/oplus/direct/OplusDirectFindCmds;->UNKNOWN:Lcom/oplus/direct/OplusDirectFindCmds;

    return-object v1
.end method

.method public static whitelist getRuleParamFromJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .line 244
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "paramObj":Lorg/json/JSONObject;
    const-string v1, "rule_param"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 246
    .end local v0    # "paramObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 248
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCallback()Lcom/oplus/direct/IOplusDirectFindCallback;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    return-object v0
.end method

.method public whitelist getCommand()Lcom/oplus/direct/OplusDirectFindCmds;
    .locals 5

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "cmd":Lcom/oplus/direct/OplusDirectFindCmds;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    const-string v2, "direct_find_cmd"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/direct/OplusDirectFindCmds;->valueOf(Ljava/lang/String;)Lcom/oplus/direct/OplusDirectFindCmds;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 185
    if-nez v0, :cond_0

    .line 186
    :goto_0
    sget-object v0, Lcom/oplus/direct/OplusDirectFindCmds;->UNKNOWN:Lcom/oplus/direct/OplusDirectFindCmds;

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "OplusDirectFindCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCommand ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 186
    goto :goto_0

    .line 189
    :cond_0
    :goto_1
    return-object v0

    .line 185
    :goto_2
    if-nez v0, :cond_1

    .line 186
    sget-object v0, Lcom/oplus/direct/OplusDirectFindCmds;->UNKNOWN:Lcom/oplus/direct/OplusDirectFindCmds;

    .line 188
    :cond_1
    throw v1
.end method

.method public whitelist getOplusDirectFindParam()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 214
    return-object v1

    .line 218
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "paramObj":Lorg/json/JSONObject;
    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 220
    .end local v0    # "paramObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 222
    return-object v1
.end method

.method public whitelist putCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    const-string v1, "direct_find_cmd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/direct/IOplusDirectFindCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/direct/IOplusDirectFindCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    .line 168
    :cond_1
    return-void
.end method

.method public whitelist setCallback(Lcom/oplus/direct/IOplusDirectFindCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 193
    iput-object p1, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 194
    return-void
.end method

.method public whitelist setOplusDirectFindParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "findParam"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mCallback:Lcom/oplus/direct/IOplusDirectFindCallback;

    invoke-interface {v0}, Lcom/oplus/direct/IOplusDirectFindCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/oplus/direct/OplusDirectFindCmd;->mOplusDirectFindParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    :goto_1
    return-void
.end method
