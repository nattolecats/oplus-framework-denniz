.class public Landroid/view/inputmethod/OplusInputMethodManagerInternal;
.super Ljava/lang/Object;
.source "OplusInputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/OplusInputMethodManagerInternal$OplusInputMethodManagerHolder;
    }
.end annotation


# static fields
.field private static final blacklist I_OPLUS_INPUTMETHOD_MANAGER_SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/view/inputmethod/IOplusInputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusInputMethodManagerInternal"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/view/inputmethod/OplusInputMethodManagerInternal$1;

    invoke-direct {v0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->I_OPLUS_INPUTMETHOD_MANAGER_SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/OplusInputMethodManagerInternal-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;
    .locals 1

    .line 52
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal$OplusInputMethodManagerHolder;->-$$Nest$sfgetINSTANCE()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getService()Landroid/view/inputmethod/IOplusInputMethodManager;
    .locals 1

    .line 48
    sget-object v0, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->I_OPLUS_INPUTMETHOD_MANAGER_SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/IOplusInputMethodManager;

    return-object v0
.end method


# virtual methods
.method public blacklist clearDefaultInputMethodByCustomize()Z
    .locals 3

    .line 92
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/IOplusInputMethodManager;->clearDefaultInputMethodByCustomize()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusInputMethodManagerInternal"

    const-string v2, "clearDefaultInputMethodByCustomize failed.."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist commitTextByOtherSide()V
    .locals 3

    .line 149
    const-string v0, "OplusInputMethodManagerInternal"

    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/inputmethod/IOplusInputMethodManager;->commitTextByOtherSide()V

    .line 152
    const-string v1, "commitTextByOtherSide"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusInputMethodUtil;->logMethodCallers(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "commitTextByOtherSide failed.."

    invoke-static {v0, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getDefaultInputMethodByCustomize()Ljava/lang/String;
    .locals 4

    .line 80
    const-string v0, ""

    .line 81
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/inputmethod/IOplusInputMethodManager;->getDefaultInputMethodByCustomize()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusInputMethodManagerInternal"

    const-string v3, "getDefaultInputMethodByCustomize failed.."

    invoke-static {v2, v3}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public blacklist getInputMethodWindowVisibleHeight(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 161
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/IOplusInputMethodManager;->getInputMethodWindowVisibleHeight(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusInputMethodManagerInternal"

    const-string v2, "getInputMethodWindowVisibleHeight failed.."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideCurrentInputMethod()V
    .locals 3

    .line 56
    const-string v0, "OplusInputMethodManagerInternal"

    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/inputmethod/IOplusInputMethodManager;->hideCurrentInputMethod()V

    .line 59
    const-string v1, "hideCurrentInputMethod"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusInputMethodUtil;->logMethodCallers(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "hideCurrentInputMethod failed.."

    invoke-static {v0, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist invalidateInputToSynergy(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "sessionId"    # I

    .line 125
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/IOplusInputMethodManager;->invalidateInputToSynergy(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusInputMethodManagerInternal"

    const-string v2, "invalidateInputToSynergy failed.."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist registerInputMethodSynergyService(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "synergyName"    # Landroid/content/ComponentName;
    .param p2, "register"    # Z

    .line 136
    const-string v0, "OplusInputMethodManagerInternal"

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/IOplusInputMethodManager;->registerInputMethodSynergyService(Landroid/content/ComponentName;Z)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerInputMethodSynergyService name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " register = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Lcom/oplus/util/OplusInputMethodUtil;->logMethodCallers(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "registerInputMethodSynergyService failed.."

    invoke-static {v0, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setAlwaysLogOff()V
    .locals 3

    .line 182
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/IOplusInputMethodManager;->setAlwaysLogOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusInputMethodManagerInternal"

    const-string v2, "setAlwaysLogOff failed.."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setAlwaysLogOn(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;

    .line 172
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/IOplusInputMethodManager;->setAlwaysLogOn(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusInputMethodManagerInternal"

    const-string v2, "setAlwaysLogOn failed.."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setDefaultInputMethodByCustomize(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "result":Z
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/inputmethod/IOplusInputMethodManager;->setDefaultInputMethodByCustomize(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusInputMethodManagerInternal"

    const-string v3, "setDefaultInputMethodByCustomize failed.."

    invoke-static {v2, v3}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public blacklist updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 3
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 114
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/IOplusInputMethodManager;->updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusInputMethodManagerInternal"

    const-string v2, "updateCursorAnchorInfoToSynergy failed.."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist updateTouchDeviceId(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 103
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getService()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/IOplusInputMethodManager;->updateTouchDeviceId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusInputMethodManagerInternal"

    const-string v2, "updateTouchDeviceId failed.."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
