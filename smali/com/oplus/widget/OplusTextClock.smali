.class public Lcom/oplus/widget/OplusTextClock;
.super Landroid/widget/TextView;
.source "OplusTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mDescFormat:Ljava/lang/CharSequence;

.field private blacklist mDescFormat12:Ljava/lang/CharSequence;

.field private blacklist mDescFormat24:Ljava/lang/CharSequence;

.field private blacklist mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private blacklist mFormat12:Ljava/lang/CharSequence;

.field private blacklist mFormat24:Ljava/lang/CharSequence;

.field private blacklist mFormatChangeObserver:Landroid/database/ContentObserver;

.field private blacklist mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRegistered:Z

.field private blacklist mShouldRunTicker:Z

.field private blacklist mShowCurrentUserTime:Z

.field private blacklist mStopTicking:Z

.field private final blacklist mTicker:Ljava/lang/Runnable;

.field private blacklist mTime:Ljava/util/Calendar;

.field private blacklist mTimeZone:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStopTicking(Lcom/oplus/widget/OplusTextClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/widget/OplusTextClock;->mStopTicking:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTicker(Lcom/oplus/widget/OplusTextClock;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oplus/widget/OplusTextClock;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeZone(Lcom/oplus/widget/OplusTextClock;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/widget/OplusTextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mchooseFormat(Lcom/oplus/widget/OplusTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->chooseFormat()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateTime(Lcom/oplus/widget/OplusTextClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Lcom/oplus/widget/OplusTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 111
    const-string v0, "h:mm a"

    sput-object v0, Lcom/oplus/widget/OplusTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 126
    const-string v0, "H:mm"

    sput-object v0, Lcom/oplus/widget/OplusTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v0, Lcom/oplus/widget/OplusTextClock$1;

    invoke-direct {v0, p0}, Lcom/oplus/widget/OplusTextClock$1;-><init>(Lcom/oplus/widget/OplusTextClock;)V

    iput-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance v0, Lcom/oplus/widget/OplusTextClock$2;

    invoke-direct {v0, p0}, Lcom/oplus/widget/OplusTextClock$2;-><init>(Lcom/oplus/widget/OplusTextClock;)V

    iput-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTicker:Ljava/lang/Runnable;

    .line 208
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->init()V

    .line 209
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/widget/OplusTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/widget/OplusTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 240
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 243
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 171
    new-instance v0, Lcom/oplus/widget/OplusTextClock$1;

    invoke-direct {v0, p0}, Lcom/oplus/widget/OplusTextClock$1;-><init>(Lcom/oplus/widget/OplusTextClock;)V

    iput-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance v0, Lcom/oplus/widget/OplusTextClock$2;

    invoke-direct {v0, p0}, Lcom/oplus/widget/OplusTextClock$2;-><init>(Lcom/oplus/widget/OplusTextClock;)V

    iput-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTicker:Ljava/lang/Runnable;

    .line 245
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 248
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 249
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 250
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    nop

    .line 255
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->init()V

    .line 256
    return-void

    .line 252
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    throw v1
.end method

.method private static blacklist abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .line 526
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private blacklist chooseFormat()V
    .locals 5

    .line 501
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 503
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 505
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_0

    .line 506
    iget-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oplus/widget/OplusTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 507
    iget-object v3, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Lcom/oplus/widget/OplusTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oplus/widget/OplusTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 510
    iget-object v3, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Lcom/oplus/widget/OplusTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 513
    :goto_0
    iget-boolean v2, p0, Lcom/oplus/widget/OplusTextClock;->mHasSeconds:Z

    .line 514
    .local v2, "hadSeconds":Z
    iget-object v3, p0, Lcom/oplus/widget/OplusTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oplus/widget/OplusTextClock;->mHasSeconds:Z

    .line 516
    iget-boolean v4, p0, Lcom/oplus/widget/OplusTextClock;->mShouldRunTicker:Z

    if-eqz v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 517
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/widget/OplusTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 518
    :cond_1
    iget-object v3, p0, Lcom/oplus/widget/OplusTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 520
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTime:Ljava/util/Calendar;

    .line 279
    :goto_0
    return-void
.end method

.method private blacklist init()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 261
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 262
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 265
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 269
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/widget/OplusTextClock;->createTime(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->chooseFormat()V

    .line 271
    return-void
.end method

.method private blacklist onTimeChanged()V
    .locals 7

    .line 632
    iget-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mShouldRunTicker:Z

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 635
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 636
    .local v0, "tempTime":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 637
    .local v1, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 638
    .local v2, "temps":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 639
    aget-char v4, v2, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x22

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 638
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 644
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oplus/widget/OplusTextClock;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v3, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oplus/widget/OplusTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oplus/widget/OplusTextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 648
    .end local v0    # "tempTime":Ljava/lang/String;
    .end local v1    # "style":Landroid/text/SpannableStringBuilder;
    .end local v2    # "temps":[C
    :cond_2
    return-void
.end method

.method private blacklist registerObserver()V
    .locals 5

    .line 600
    iget-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;

    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/widget/OplusTextClock$FormatChangeObserver;-><init>(Lcom/oplus/widget/OplusTextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 606
    .local v1, "uri":Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/oplus/widget/OplusTextClock;->mShowCurrentUserTime:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 614
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist registerReceiver()V
    .locals 7

    .line 582
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 596
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 595
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 597
    return-void
.end method

.method private blacklist unregisterObserver()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 625
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private blacklist unregisterReceiver()V
    .locals 2

    .line 617
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 618
    return-void
.end method


# virtual methods
.method public blacklist disableClockTick()V
    .locals 1

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mStopTicking:Z

    .line 579
    return-void
.end method

.method protected whitelist encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 653
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 655
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 656
    .local v0, "s":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "format12Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 659
    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "format24Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/oplus/widget/OplusTextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "format"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-boolean v1, p0, Lcom/oplus/widget/OplusTextClock;->mHasSeconds:Z

    const-string v2, "hasSeconds"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 662
    return-void
.end method

.method public blacklist getFormat()Ljava/lang/CharSequence;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist is24HourModeEnabled()Z
    .locals 2

    .line 442
    iget-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 531
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 533
    iget-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mRegistered:Z

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mRegistered:Z

    .line 536
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->registerReceiver()V

    .line 537
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->registerObserver()V

    .line 539
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/widget/OplusTextClock;->createTime(Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 562
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 564
    iget-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->unregisterReceiver()V

    .line 566
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->unregisterObserver()V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mRegistered:Z

    .line 570
    :cond_0
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 545
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 547
    iget-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mShouldRunTicker:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mShouldRunTicker:Z

    .line 549
    iget-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mHasSeconds:Z

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    goto :goto_0

    .line 554
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/widget/OplusTextClock;->mShouldRunTicker:Z

    .line 556
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/widget/OplusTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist refresh()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    .line 420
    invoke-virtual {p0}, Lcom/oplus/widget/OplusTextClock;->invalidate()V

    .line 421
    return-void
.end method

.method public blacklist setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 334
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 336
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->chooseFormat()V

    .line 337
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    .line 338
    return-void
.end method

.method public blacklist setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 392
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 394
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->chooseFormat()V

    .line 395
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    .line 396
    return-void
.end method

.method public whitelist setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 325
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->chooseFormat()V

    .line 326
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    .line 327
    return-void
.end method

.method public whitelist setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 383
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->chooseFormat()V

    .line 384
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    .line 385
    return-void
.end method

.method public blacklist setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .line 406
    iput-boolean p1, p0, Lcom/oplus/widget/OplusTextClock;->mShowCurrentUserTime:Z

    .line 408
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->chooseFormat()V

    .line 409
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    .line 410
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->unregisterObserver()V

    .line 411
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->registerObserver()V

    .line 412
    return-void
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 480
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock;->mTimeZone:Ljava/lang/String;

    .line 482
    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusTextClock;->createTime(Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Lcom/oplus/widget/OplusTextClock;->onTimeChanged()V

    .line 484
    return-void
.end method
