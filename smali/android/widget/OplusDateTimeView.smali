.class public Landroid/widget/OplusDateTimeView;
.super Landroid/widget/DateTimeView;
.source "OplusDateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mLocalTime:Ljava/time/LocalDateTime;

.field private blacklist mTimeMillis:J


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OplusDateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method private static blacklist dayDistance(Ljava/util/TimeZone;JJ)I
    .locals 3
    .param p0, "timeZone"    # Ljava/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 126
    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 127
    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int/2addr v0, v1

    .line 126
    return v0
.end method

.method private static blacklist toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 2
    .param p0, "timeMillis"    # J
    .param p2, "zoneId"    # Ljava/time/ZoneId;

    .line 134
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 135
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {v0, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method private blacklist updateColorRelativeTime()V
    .locals 12

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    .local v0, "now":J
    iget-wide v2, p0, Landroid/widget/OplusDateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 86
    .local v2, "duration":J
    iget-wide v4, p0, Landroid/widget/OplusDateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 88
    .local v4, "past":Z
    :goto_0
    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    .line 89
    return-void

    .line 90
    :cond_1
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    if-gez v11, :cond_3

    .line 91
    div-long v7, v2, v7

    long-to-int v7, v7

    .line 92
    .local v7, "count":I
    invoke-virtual {p0}, Landroid/widget/OplusDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_2

    .line 93
    const v9, 0x1040352

    goto :goto_1

    .line 94
    :cond_2
    const v9, 0x1040353

    .line 92
    :goto_1
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 92
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "result":Ljava/lang/String;
    goto/16 :goto_5

    .line 97
    .end local v5    # "result":Ljava/lang/String;
    .end local v7    # "count":I
    :cond_3
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_5

    .line 98
    div-long v7, v2, v9

    long-to-int v7, v7

    .line 99
    .restart local v7    # "count":I
    invoke-virtual {p0}, Landroid/widget/OplusDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_4

    .line 100
    const v9, 0x104034e

    goto :goto_2

    .line 101
    :cond_4
    const v9, 0x104034f

    .line 99
    :goto_2
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 103
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 99
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_5

    .line 104
    .end local v5    # "result":Ljava/lang/String;
    .end local v7    # "count":I
    :cond_5
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_7

    .line 106
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 107
    .local v7, "timeZone":Ljava/util/TimeZone;
    iget-wide v8, p0, Landroid/widget/OplusDateTimeView;->mTimeMillis:J

    invoke-static {v7, v8, v9, v0, v1}, Landroid/widget/OplusDateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 108
    .local v8, "count":I
    invoke-virtual {p0}, Landroid/widget/OplusDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v4, :cond_6

    .line 109
    const v10, 0x104034a

    goto :goto_3

    .line 110
    :cond_6
    const v10, 0x104034b

    .line 108
    :goto_3
    invoke-virtual {v9, v10, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    .line 112
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    .line 108
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .end local v7    # "timeZone":Ljava/util/TimeZone;
    .restart local v5    # "result":Ljava/lang/String;
    move v7, v8

    goto :goto_5

    .line 114
    .end local v5    # "result":Ljava/lang/String;
    .end local v8    # "count":I
    :cond_7
    div-long v7, v2, v7

    long-to-int v7, v7

    .line 115
    .local v7, "count":I
    invoke-virtual {p0}, Landroid/widget/OplusDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_8

    .line 116
    const v9, 0x1040356

    goto :goto_4

    .line 117
    :cond_8
    const v9, 0x1040357

    .line 115
    :goto_4
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    .line 115
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .restart local v5    # "result":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v5}, Landroid/widget/OplusDateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method


# virtual methods
.method public greylist setTime(J)V
    .locals 2
    .param p1, "timeMillis"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 66
    iput-wide p1, p0, Landroid/widget/OplusDateTimeView;->mTimeMillis:J

    .line 67
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/widget/OplusDateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 68
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OplusDateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 70
    return-void
.end method

.method blacklist update()V
    .locals 2

    .line 73
    iget-object v0, p0, Landroid/widget/OplusDateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/OplusDateTimeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/widget/DateTimeView;->update()V

    .line 77
    invoke-virtual {p0}, Landroid/widget/OplusDateTimeView;->isShowRelativeTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Landroid/widget/OplusDateTimeView;->updateColorRelativeTime()V

    .line 80
    :cond_1
    return-void

    .line 74
    :cond_2
    :goto_0
    return-void
.end method
