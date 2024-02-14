.class public Landroid/app/job/JobInfoExtImpl;
.super Ljava/lang/Object;
.source "JobInfoExtImpl.java"

# interfaces
.implements Landroid/app/job/IJobInfoExt;


# instance fields
.field private blacklist hasCpuConstraint:Z

.field private blacklist hasProtectSceneConstraint:Z

.field private blacklist hasTemperatureConstraint:Z

.field private blacklist isNotSysApp:Z

.field private blacklist isOplusJob:Z

.field private blacklist mIsFastIdle:Z

.field private blacklist oplusExtraStr:Ljava/lang/String;

.field private blacklist protectForeType:I

.field private blacklist protectScene:I

.field private blacklist requireBattIdle:Z

.field private blacklist requireProtectFore:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->isNotSysApp:Z

    return-void
.end method


# virtual methods
.method public whitelist getBooleanConstraint(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 55
    move v0, p2

    .line 56
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "hasCpuConstraint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "hasTemperatureConstraint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "requireProtectFore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "isFastIdle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "requireBattIdle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "hasProtectSceneConstraint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_6
    const-string v1, "isOplusJob"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "isNotSysApp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 81
    :pswitch_0
    iget-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->mIsFastIdle:Z

    .line 82
    goto :goto_2

    .line 76
    :pswitch_1
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->isNotSysApp:Z

    xor-int/2addr v1, v2

    move v0, v1

    .line 77
    goto :goto_2

    .line 73
    :pswitch_2
    iget-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->requireBattIdle:Z

    .line 74
    goto :goto_2

    .line 70
    :pswitch_3
    iget-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->isOplusJob:Z

    .line 71
    goto :goto_2

    .line 67
    :pswitch_4
    iget-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->hasCpuConstraint:Z

    .line 68
    goto :goto_2

    .line 64
    :pswitch_5
    iget-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->requireProtectFore:Z

    .line 65
    goto :goto_2

    .line 61
    :pswitch_6
    iget-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->hasProtectSceneConstraint:Z

    .line 62
    goto :goto_2

    .line 58
    :pswitch_7
    iget-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->hasTemperatureConstraint:Z

    .line 59
    nop

    .line 87
    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6ce51d43 -> :sswitch_7
        -0x40fa6c42 -> :sswitch_6
        -0x333fbc0c -> :sswitch_5
        -0x1a80ac08 -> :sswitch_4
        0xa6ea59a -> :sswitch_3
        0x1c369d86 -> :sswitch_2
        0x4535b7f7 -> :sswitch_1
        0x6808a92b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getIntConstraint(Ljava/lang/String;I)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 103
    move v0, p2

    .line 104
    .local v0, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "protectForeType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "protectScene"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 109
    :pswitch_0
    iget v0, p0, Landroid/app/job/JobInfoExtImpl;->protectForeType:I

    .line 110
    goto :goto_2

    .line 106
    :pswitch_1
    iget v0, p0, Landroid/app/job/JobInfoExtImpl;->protectScene:I

    .line 107
    nop

    .line 114
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1fc3afd -> :sswitch_1
        0x515a4e05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getLongConstraint(Ljava/lang/String;J)J
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 118
    return-wide p2
.end method

.method public whitelist getStringConstraint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 91
    move-object v0, p2

    .line 92
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "oplusExtraStr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 94
    :pswitch_1
    iget-object v0, p0, Landroid/app/job/JobInfoExtImpl;->oplusExtraStr:Ljava/lang/String;

    .line 95
    nop

    .line 99
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x715501aa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist initJobInfo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 153
    instance-of v0, p1, Landroid/os/Parcel;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "JobInfoExt"

    const-string v1, " init jobinfo without parcel, error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 157
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Parcel;

    .line 160
    .local v0, "in":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->requireBattIdle:Z

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->isOplusJob:Z

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->requireProtectFore:Z

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->hasCpuConstraint:Z

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobInfoExtImpl;->oplusExtraStr:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfoExtImpl;->protectForeType:I

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->isNotSysApp:Z

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->hasTemperatureConstraint:Z

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_7

    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->hasProtectSceneConstraint:Z

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobInfoExtImpl;->protectScene:I

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_8

    move v2, v3

    :cond_8
    iput-boolean v2, p0, Landroid/app/job/JobInfoExtImpl;->mIsFastIdle:Z

    .line 186
    return-void
.end method

.method public whitelist initJobInfoPure(Landroid/app/job/IJobInfoExt$JobBuilderExt;)V
    .locals 1
    .param p1, "jobBuilderExt"    # Landroid/app/job/IJobInfoExt$JobBuilderExt;

    .line 189
    if-nez p1, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    iget-boolean v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresBattIdle:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->requireBattIdle:Z

    .line 195
    iget-boolean v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mIsOplusJob:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->isOplusJob:Z

    .line 196
    iget-boolean v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresProtectFore:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->requireProtectFore:Z

    .line 197
    iget-boolean v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasCpuConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->hasCpuConstraint:Z

    .line 198
    iget-object v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mOplusExtraStr:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/job/JobInfoExtImpl;->oplusExtraStr:Ljava/lang/String;

    .line 199
    iget v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mProtectForeType:I

    iput v0, p0, Landroid/app/job/JobInfoExtImpl;->protectForeType:I

    .line 204
    iget-boolean v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasTemperatureConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->hasTemperatureConstraint:Z

    .line 205
    iget-boolean v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasProtectSceneConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->hasProtectSceneConstraint:Z

    .line 206
    iget v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mProtectScene:I

    iput v0, p0, Landroid/app/job/JobInfoExtImpl;->protectScene:I

    .line 210
    iget-boolean v0, p1, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mIsFastIdle:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->mIsFastIdle:Z

    .line 212
    return-void
.end method

.method public whitelist setBooleanConstraint(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "setSysApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 125
    :pswitch_1
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfoExtImpl;->isNotSysApp:Z

    .line 126
    nop

    .line 130
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x23680b16
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setIntConstraint(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 136
    return-void
.end method

.method public whitelist setLongConstraint(Landroid/app/job/JobInfo;Ljava/lang/String;J)V
    .locals 1
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 139
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "setIntervalMillis"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "setMaxExecutionDelayMillis"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 144
    :pswitch_0
    iput-wide p3, p1, Landroid/app/job/JobInfo;->intervalMillis:J

    .line 145
    goto :goto_2

    .line 141
    :pswitch_1
    iput-wide p3, p1, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    .line 142
    nop

    .line 149
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f4863cd -> :sswitch_1
        0x689e386d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setStringConstraint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 133
    return-void
.end method

.method public whitelist writeToParcelJobInfo(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 215
    instance-of v0, p1, Landroid/os/Parcel;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "JobInfoExt"

    const-string v1, " write jobinfo without parcel, error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 219
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Parcel;

    .line 222
    .local v0, "out":Landroid/os/Parcel;
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->requireBattIdle:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->isOplusJob:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->requireProtectFore:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->hasCpuConstraint:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v1, p0, Landroid/app/job/JobInfoExtImpl;->oplusExtraStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget v1, p0, Landroid/app/job/JobInfoExtImpl;->protectForeType:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->isNotSysApp:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->hasTemperatureConstraint:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->hasProtectSceneConstraint:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v1, p0, Landroid/app/job/JobInfoExtImpl;->protectScene:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-boolean v1, p0, Landroid/app/job/JobInfoExtImpl;->mIsFastIdle:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method
