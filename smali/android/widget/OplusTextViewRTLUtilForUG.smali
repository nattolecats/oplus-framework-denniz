.class public Landroid/widget/OplusTextViewRTLUtilForUG;
.super Ljava/lang/Object;
.source "OplusTextViewRTLUtilForUG.java"

# interfaces
.implements Landroid/widget/IOplusTextViewRTLUtilForUG;


# static fields
.field private static volatile blacklist sInstance:Landroid/widget/OplusTextViewRTLUtilForUG;


# instance fields
.field public whitelist hasInit:Z

.field public whitelist mForceAnyRtl:Z

.field public whitelist mForceViewStart:Z

.field private blacklist mLastUpdateLocale:Ljava/util/Locale;

.field public whitelist mSupportRtl:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/OplusTextViewRTLUtilForUG;->sInstance:Landroid/widget/OplusTextViewRTLUtilForUG;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mLastUpdateLocale:Ljava/util/Locale;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->hasInit:Z

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mSupportRtl:Z

    .line 62
    iput-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceAnyRtl:Z

    .line 64
    iput-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceViewStart:Z

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mLastUpdateLocale:Ljava/util/Locale;

    .line 56
    return-void
.end method

.method public static whitelist getInstance()Landroid/widget/OplusTextViewRTLUtilForUG;
    .locals 2

    .line 44
    sget-object v0, Landroid/widget/OplusTextViewRTLUtilForUG;->sInstance:Landroid/widget/OplusTextViewRTLUtilForUG;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Landroid/widget/OplusTextViewRTLUtilForUG;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Landroid/widget/OplusTextViewRTLUtilForUG;->sInstance:Landroid/widget/OplusTextViewRTLUtilForUG;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/widget/OplusTextViewRTLUtilForUG;

    invoke-direct {v1}, Landroid/widget/OplusTextViewRTLUtilForUG;-><init>()V

    sput-object v1, Landroid/widget/OplusTextViewRTLUtilForUG;->sInstance:Landroid/widget/OplusTextViewRTLUtilForUG;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Landroid/widget/OplusTextViewRTLUtilForUG;->sInstance:Landroid/widget/OplusTextViewRTLUtilForUG;

    return-object v0
.end method


# virtual methods
.method public whitelist getDirectionAnyRtl()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceAnyRtl:Z

    return v0
.end method

.method public whitelist getLayoutAlignmentForTextView(Landroid/text/Layout$Alignment;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Layout$Alignment;
    .locals 3
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Landroid/widget/OplusTextViewRTLUtilForUG;->getTextViewStart()Z

    move-result v0

    .line 111
    .local v0, "forceViewStart":Z
    invoke-virtual {p3}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 182
    if-eqz v0, :cond_5

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto/16 :goto_5

    .line 169
    :pswitch_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 170
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_0
    move-object p1, v1

    .line 171
    goto :goto_6

    .line 165
    :pswitch_1
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 166
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_1
    move-object p1, v1

    .line 167
    goto :goto_6

    .line 162
    :pswitch_2
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 163
    goto :goto_6

    .line 159
    :pswitch_3
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 160
    goto :goto_6

    .line 156
    :pswitch_4
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 157
    goto :goto_6

    .line 113
    :pswitch_5
    invoke-virtual {p3}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 150
    if-eqz v0, :cond_4

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_4

    .line 131
    :sswitch_0
    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2
    move-object p1, v1

    .line 133
    goto :goto_6

    .line 121
    :sswitch_1
    if-eqz v0, :cond_3

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_3
    move-object p1, v1

    .line 123
    goto :goto_6

    .line 138
    :sswitch_2
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 139
    goto :goto_6

    .line 135
    :sswitch_3
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 136
    goto :goto_6

    .line 141
    :sswitch_4
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 142
    goto :goto_6

    .line 150
    :cond_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_4
    move-object p1, v1

    .line 152
    goto :goto_6

    .line 182
    :cond_5
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_5
    move-object p1, v1

    .line 186
    :goto_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x800003 -> :sswitch_1
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getOplusSupportRtl()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mSupportRtl:Z

    return v0
.end method

.method public whitelist getTextDirectionHeuristicForTextView(Z)Landroid/text/TextDirectionHeuristic;
    .locals 1
    .param p1, "defaultIsRtl"    # Z

    .line 191
    invoke-virtual {p0}, Landroid/widget/OplusTextViewRTLUtilForUG;->getDirectionAnyRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 191
    :goto_0
    return-object v0
.end method

.method public whitelist getTextViewStart()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceViewStart:Z

    return v0
.end method

.method public whitelist hasRtlSupportForView(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    invoke-virtual {p0}, Landroid/widget/OplusTextViewRTLUtilForUG;->getOplusSupportRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist initRtlParameter(Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 68
    iget-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->hasInit:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_3

    .line 69
    const-string v0, "persist.sys.locale"

    const-string v1, "zh_CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "sysLocale":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "appLocale":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v3, "ug-CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    iput-boolean v2, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceAnyRtl:Z

    .line 73
    if-eqz v1, :cond_2

    const-string v4, "ug_CN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "locales":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 76
    array-length v5, v4

    const/4 v6, 0x0

    if-lez v5, :cond_1

    .line 77
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, "localeArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iput-boolean v2, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceViewStart:Z

    goto :goto_0

    .line 81
    :cond_0
    iput-boolean v6, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mSupportRtl:Z

    .line 83
    .end local v5    # "localeArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 84
    :cond_1
    iput-boolean v6, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mSupportRtl:Z

    .line 89
    .end local v4    # "locales":[Ljava/lang/String;
    :cond_2
    :goto_1
    iput-boolean v2, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->hasInit:Z

    .line 91
    .end local v0    # "sysLocale":Ljava/lang/String;
    .end local v1    # "appLocale":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public whitelist updateRtlParameterForUG(Landroid/content/res/Resources;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/OplusTextViewRTLUtilForUG;->updateRtlParameterForUG([Ljava/lang/String;Landroid/content/res/Configuration;)V

    .line 205
    :cond_0
    return-void
.end method

.method public whitelist updateRtlParameterForUG([Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "availableLocales"    # [Ljava/lang/String;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 209
    iget-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->hasInit:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mLastUpdateLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceAnyRtl:Z

    .line 211
    iput-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceViewStart:Z

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mSupportRtl:Z

    .line 213
    iget-object v2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "newLocale":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "ug-CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    iput-boolean v1, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceAnyRtl:Z

    .line 216
    move-object v4, p1

    .line 217
    .local v4, "locales":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 218
    array-length v5, v4

    if-lez v5, :cond_1

    .line 219
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 220
    .local v5, "localeArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iput-boolean v1, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mForceViewStart:Z

    goto :goto_0

    .line 223
    :cond_0
    iput-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mSupportRtl:Z

    .line 225
    .end local v5    # "localeArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 226
    :cond_1
    iput-boolean v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mSupportRtl:Z

    .line 231
    .end local v4    # "locales":[Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->mLastUpdateLocale:Ljava/util/Locale;

    .line 232
    iput-boolean v1, p0, Landroid/widget/OplusTextViewRTLUtilForUG;->hasInit:Z

    .line 234
    .end local v2    # "newLocale":Ljava/lang/String;
    :cond_3
    return-void
.end method
