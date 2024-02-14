.class public Lcom/android/ims/ImsCallExtImpl;
.super Ljava/lang/Object;
.source "ImsCallExtImpl.java"

# interfaces
.implements Lcom/android/ims/IImsCallExt;


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist FORCE_DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mIsCEPPresent:Z

.field private static blacklist mLocalConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mRestoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mShowConfListWithoutCep:Z


# instance fields
.field private blacklist mLockObj:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/android/ims/ImsCallExtImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsCallExtImpl;->TAG:Ljava/lang/String;

    .line 27
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsCallExtImpl;->DBG:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCallExtImpl;->mRestoreMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    .line 38
    sput-boolean v0, Lcom/android/ims/ImsCallExtImpl;->mShowConfListWithoutCep:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallExtImpl;->mLockObj:Ljava/lang/Object;

    .line 44
    const-string v0, "Create ImsCallExtImpl...."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCallExtImpl;->logd(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallExtImpl;->mLockObj:Ljava/lang/Object;

    .line 48
    const-string v0, "Create ImsCallExtImpl"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCallExtImpl;->logd(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private blacklist addToConferenceParticipantList(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 11
    .param p1, "confCall"    # Lcom/android/ims/ImsCall;
    .param p2, "childCall"    # Lcom/android/ims/ImsCall;

    .line 109
    if-nez p2, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 113
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    if-nez v0, :cond_1

    .line 114
    const-string v1, "addToConferenceParticipantList: null profile for childcall"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCallExtImpl;->logd(Ljava/lang/String;)V

    .line 115
    return-void

    .line 118
    :cond_1
    const-string v1, "oi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "handle":Ljava/lang/String;
    const-string v2, "cna"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "name":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 121
    const-string v3, "addToConferenceParticipantList: Invalid number for childcall"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCallExtImpl;->logd(Ljava/lang/String;)V

    .line 122
    return-void

    .line 125
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 126
    .local v3, "userUri":Landroid/net/Uri;
    new-instance v10, Lcom/android/ims/internal/ConferenceParticipant;

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getState()I

    move-result v8

    const/4 v9, 0x4

    move-object v4, v10

    move-object v5, v3

    move-object v6, v2

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/ims/internal/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 128
    .local v4, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    iget-object v5, p0, Lcom/android/ims/ImsCallExtImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 129
    :try_start_0
    sget-boolean v6, Lcom/android/ims/ImsCallExtImpl;->DBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding participant: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 130
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToConferenceParticipantList:mIsCEPPresent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 132
    sget-object v6, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_4

    .line 135
    :try_start_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v6

    sget-object v7, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-virtual {v6, p1, v7}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v6

    .line 137
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    monitor-exit v5

    .line 141
    return-void

    .line 140
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/android/ims/ImsCallExtImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/android/ims/ImsCallExtImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method


# virtual methods
.method public blacklist clearLocalParticipants()V
    .locals 1

    .line 173
    sget-object v0, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    return-void
.end method

.method public blacklist clearRestorMap()V
    .locals 1

    .line 158
    sget-object v0, Lcom/android/ims/ImsCallExtImpl;->mRestoreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 159
    return-void
.end method

.method public blacklist getLocalParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRestorMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/android/ims/ImsCallExtImpl;->mRestoreMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist isCEPPresent()Z
    .locals 1

    .line 178
    sget-boolean v0, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    return v0
.end method

.method public blacklist putParticipants(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/android/ims/ImsCallExtImpl;->mRestoreMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public blacklist removeLocalParticipants(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 7
    .param p1, "mergeHost"    # Lcom/android/ims/ImsCall;
    .param p2, "mergePeer"    # Lcom/android/ims/ImsCall;

    .line 188
    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 192
    :cond_0
    sget-boolean v0, Lcom/android/ims/ImsCallExtImpl;->mShowConfListWithoutCep:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 196
    :cond_1
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 197
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    if-nez v0, :cond_2

    .line 198
    const-string v1, "removeLocalParticipants: null profile for mergePeer"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCallExtImpl;->logd(Ljava/lang/String;)V

    .line 199
    return-void

    .line 202
    :cond_2
    const/4 v1, 0x0

    const-string v2, "oi"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "handle":Ljava/lang/String;
    sget-object v2, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/ConferenceParticipant;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/ConferenceParticipant;

    .line 206
    .local v3, "c":Lcom/android/ims/internal/ConferenceParticipant;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check handle for c = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/ims/ImsCallExtImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 207
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove participant "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 210
    goto :goto_1

    .line 212
    .end local v3    # "c":Lcom/android/ims/internal/ConferenceParticipant;
    :cond_3
    goto :goto_0

    .line 214
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 216
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v3

    sget-object v4, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-virtual {v3, p1, v4}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    goto :goto_2

    .line 217
    :catchall_0
    move-exception v3

    .line 218
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    return-void

    .line 193
    .end local v0    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v1    # "handle":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/ConferenceParticipant;>;"
    :cond_6
    :goto_3
    return-void

    .line 189
    :cond_7
    :goto_4
    return-void
.end method

.method public blacklist removeParticipants(Lcom/android/ims/ImsCall;[Ljava/lang/String;)V
    .locals 9
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "participants"    # [Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getListener()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 54
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCEPPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 55
    sget-boolean v1, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    sget-object v1, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 56
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 57
    .local v3, "participant":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looping for participant "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/ims/ImsCallExtImpl;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 58
    sget-object v4, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 59
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/ConferenceParticipant;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/ConferenceParticipant;

    .line 61
    .local v5, "c":Lcom/android/ims/internal/ConferenceParticipant;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check handle for c = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/ims/ImsCallExtImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 62
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove participant "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 64
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 65
    goto :goto_2

    .line 67
    .end local v5    # "c":Lcom/android/ims/internal/ConferenceParticipant;
    :cond_0
    goto :goto_1

    .line 56
    .end local v3    # "participant":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/ConferenceParticipant;>;"
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 70
    :cond_2
    if-eqz v0, :cond_3

    .line 72
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsCallExtImpl;->mLocalConferenceParticipants:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_3

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist setCepPresent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCepPresent: b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCallExtImpl;->logd(Ljava/lang/String;)V

    .line 153
    sput-boolean p1, Lcom/android/ims/ImsCallExtImpl;->mIsCEPPresent:Z

    .line 154
    return-void
.end method

.method public blacklist setShowConfListWithoutCep(Z)V
    .locals 2
    .param p1, "showConfListWithoutCep"    # Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showConfListWithoutCep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCallExtImpl;->logd(Ljava/lang/String;)V

    .line 146
    sput-boolean p1, Lcom/android/ims/ImsCallExtImpl;->mShowConfListWithoutCep:Z

    .line 147
    return-void
.end method

.method public blacklist updateConferenceParticipantsList(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "curCall"    # Lcom/android/ims/ImsCall;
    .param p2, "bgCall"    # Lcom/android/ims/ImsCall;

    .line 87
    sget-boolean v0, Lcom/android/ims/ImsCallExtImpl;->mShowConfListWithoutCep:Z

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    return-void

    .line 93
    :cond_1
    move-object v0, p1

    .line 94
    .local v0, "confCall":Lcom/android/ims/ImsCall;
    move-object v1, p2

    .line 95
    .local v1, "childCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const-string v2, "updateConferenceParticipantsList: BG call is conference"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 98
    move-object v0, p2

    .line 99
    move-object v1, p1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    const-string v2, "updateConferenceParticipantsList: Make this call as conference and add child"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCallExtImpl;->logi(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v0, v0}, Lcom/android/ims/ImsCallExtImpl;->addToConferenceParticipantList(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V

    .line 105
    :cond_3
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCallExtImpl;->addToConferenceParticipantList(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V

    .line 106
    return-void
.end method
