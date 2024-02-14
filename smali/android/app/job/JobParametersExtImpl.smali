.class public Landroid/app/job/JobParametersExtImpl;
.super Ljava/lang/Object;
.source "JobParametersExtImpl.java"

# interfaces
.implements Landroid/app/job/IJobParametersExt;


# instance fields
.field private blacklist cpuLevel:I

.field private blacklist oplusExtraStr:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist getIntValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 53
    move v0, p2

    .line 54
    .local v0, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "getCpuLevel"

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

    .line 56
    :pswitch_1
    iget v0, p0, Landroid/app/job/JobParametersExtImpl;->cpuLevel:I

    .line 59
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x6751cfce
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 63
    move-object v0, p2

    .line 64
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v1, "getOplusExtraStr"

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

    .line 66
    :pswitch_1
    iget-object v0, p0, Landroid/app/job/JobParametersExtImpl;->oplusExtraStr:Ljava/lang/String;

    .line 69
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2eb4bdf4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist init(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    return-void
.end method

.method public blacklist initJobParameters(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p1, Landroid/os/Parcel;

    if-nez v0, :cond_0

    .line 74
    const-string v0, "JobParametersExt"

    const-string v1, " init job parameters without parcel, error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Parcel;

    .line 80
    .local v0, "in":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParametersExtImpl;->cpuLevel:I

    .line 81
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParametersExtImpl;->oplusExtraStr:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public blacklist setIntValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "setCpuLevel"

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

    .line 39
    :pswitch_1
    iput p2, p0, Landroid/app/job/JobParametersExtImpl;->cpuLevel:I

    .line 42
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x6c996ec2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "setOplusExtraStr"

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

    .line 47
    :pswitch_1
    iput-object p2, p0, Landroid/app/job/JobParametersExtImpl;->oplusExtraStr:Ljava/lang/String;

    .line 50
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x3e74db98
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist writeToParcelJobParameters(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    instance-of v0, p1, Landroid/os/Parcel;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "JobParametersExt"

    const-string v1, " write job parameters without parcel, error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Parcel;

    .line 93
    .local v0, "dest":Landroid/os/Parcel;
    iget v1, p0, Landroid/app/job/JobParametersExtImpl;->cpuLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v1, p0, Landroid/app/job/JobParametersExtImpl;->oplusExtraStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return-void
.end method
