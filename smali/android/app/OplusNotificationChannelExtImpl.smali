.class public Landroid/app/OplusNotificationChannelExtImpl;
.super Ljava/lang/Object;
.source "OplusNotificationChannelExtImpl.java"

# interfaces
.implements Landroid/app/INotificationChannelExt;


# static fields
.field private static final blacklist ATT_BADGE_OPTION:Ljava/lang/String; = "badge_option"

.field private static final blacklist ATT_CHANGEABLE_FOLD:Ljava/lang/String; = "changeable_fold"

.field private static final blacklist ATT_CHANGEABLE_SHOW_ICON:Ljava/lang/String; = "changeable_show_icon"

.field private static final blacklist ATT_FOLD:Ljava/lang/String; = "fold"

.field private static final blacklist ATT_MAX_MESSAGES:Ljava/lang/String; = "max_messages"

.field private static final blacklist ATT_OPUSH:Ljava/lang/String; = "opush"

.field private static final blacklist ATT_SHOW_BANNER:Ljava/lang/String; = "show_banner"

.field private static final blacklist ATT_SHOW_ICON:Ljava/lang/String; = "show_icon"

.field private static final blacklist ATT_SUPPORT_NUM_BADGE:Ljava/lang/String; = "support_num_badge"

.field private static final blacklist ATT_TEMP_SHOW_BADGE:Ljava/lang/String; = "temp_show_badge"

.field private static final blacklist ATT_UNIMPORTANT:Ljava/lang/String; = "unimportant"

.field private static final blacklist CONSTANT_HASH_CODE:I = 0x1f


# instance fields
.field private blacklist mBadgeOption:I

.field private blacklist mBase:Landroid/app/NotificationChannel;

.field private blacklist mChangeableFold:Z

.field private blacklist mChangeableShowIcon:Z

.field private blacklist mFold:Z

.field private blacklist mMaxMessages:I

.field private blacklist mOpush:Z

.field private blacklist mShowBanner:Z

.field private blacklist mShowIcon:Z

.field private blacklist mSupportNumBadge:Z

.field private blacklist mTempShowBadge:Z

.field private blacklist mUnimportant:Z


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    .line 46
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    .line 47
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    .line 48
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    .line 50
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    .line 51
    iput v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    .line 53
    iput-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    .line 54
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    .line 55
    iput-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    .line 46
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    .line 47
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    .line 48
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    .line 50
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    .line 51
    iput v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    .line 53
    iput-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    .line 54
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    .line 55
    iput-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/app/NotificationChannel;

    iput-object v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBase:Landroid/app/NotificationChannel;

    .line 61
    return-void
.end method

.method private blacklist isUnimportantChannel(I)Z
    .locals 2
    .param p1, "importance"    # I

    .line 415
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static blacklist safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 391
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    return p2

    .line 395
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static blacklist safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 399
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/app/OplusNotificationChannelExtImpl;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static blacklist tryParseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 404
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    return p1

    .line 408
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method


# virtual methods
.method public blacklist canShowBanner()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    return v0
.end method

.method public blacklist canShowIcon()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    return v0
.end method

.method public blacklist canTempShowBadge()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    return v0
.end method

.method public blacklist equals(Landroid/app/INotificationChannelExt;)Z
    .locals 3
    .param p1, "that"    # Landroid/app/INotificationChannelExt;

    .line 322
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->canShowBanner()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 323
    return v2

    .line 325
    :cond_0
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->isFold()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 326
    return v2

    .line 328
    :cond_1
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->isOpush()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 329
    return v2

    .line 331
    :cond_2
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->canShowIcon()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 332
    return v2

    .line 334
    :cond_3
    iget v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->getMaxMessages()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 335
    return v2

    .line 337
    :cond_4
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->isSupportNumBadge()Z

    move-result v1

    if-eq v0, v1, :cond_5

    .line 338
    return v2

    .line 340
    :cond_5
    iget v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->getBadgeOption()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 341
    return v2

    .line 343
    :cond_6
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->isChangeableFold()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 344
    return v2

    .line 346
    :cond_7
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->isChangeableShowIcon()Z

    move-result v1

    if-eq v0, v1, :cond_8

    .line 347
    return v2

    .line 349
    :cond_8
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->isUnimportant()Z

    move-result v1

    if-eq v0, v1, :cond_9

    .line 350
    return v2

    .line 352
    :cond_9
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    invoke-interface {p1}, Landroid/app/INotificationChannelExt;->canTempShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_a

    .line 353
    return v2

    .line 355
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getBadgeOption()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    return v0
.end method

.method public blacklist getMaxMessages()I
    .locals 1

    .line 170
    iget v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    return v0
.end method

.method public blacklist hashCode(I)I
    .locals 2
    .param p1, "result"    # I

    .line 360
    mul-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowBanner()Z

    move-result v1

    add-int/2addr v0, v1

    .line 361
    .end local p1    # "result":I
    .local v0, "result":I
    mul-int/lit8 p1, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isFold()Z

    move-result v1

    add-int/2addr p1, v1

    .line 362
    .end local v0    # "result":I
    .restart local p1    # "result":I
    mul-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isOpush()Z

    move-result v1

    add-int/2addr v0, v1

    .line 363
    .end local p1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 p1, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowIcon()Z

    move-result v1

    add-int/2addr p1, v1

    .line 364
    .end local v0    # "result":I
    .restart local p1    # "result":I
    mul-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getMaxMessages()I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    .end local p1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 p1, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isSupportNumBadge()Z

    move-result v1

    add-int/2addr p1, v1

    .line 366
    .end local v0    # "result":I
    .restart local p1    # "result":I
    mul-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getBadgeOption()I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    .end local p1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 p1, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableFold()Z

    move-result v1

    add-int/2addr p1, v1

    .line 368
    .end local v0    # "result":I
    .restart local p1    # "result":I
    mul-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableShowIcon()Z

    move-result v1

    add-int/2addr v0, v1

    .line 369
    .end local p1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 p1, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isUnimportant()Z

    move-result v1

    add-int/2addr p1, v1

    .line 370
    .end local v0    # "result":I
    .restart local p1    # "result":I
    mul-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canTempShowBadge()Z

    move-result v1

    add-int/2addr v0, v1

    .line 371
    .end local p1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist init(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I

    .line 64
    const/4 v0, 0x4

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    .line 65
    invoke-direct {p0, p3}, Landroid/app/OplusNotificationChannelExtImpl;->isUnimportantChannel(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    .line 66
    return-void
.end method

.method public blacklist isChangeableFold()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    return v0
.end method

.method public blacklist isChangeableShowIcon()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    return v0
.end method

.method public blacklist isFold()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    return v0
.end method

.method public blacklist isOpush()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    return v0
.end method

.method public blacklist isSupportNumBadge()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    return v0
.end method

.method public blacklist isUnimportant()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    return v0
.end method

.method public blacklist populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 255
    const-string v0, "show_banner"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setShowBanner(Z)V

    .line 256
    const-string v0, "fold"

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setFold(Z)V

    .line 257
    const-string v0, "opush"

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setOpush(Z)V

    .line 258
    const-string v0, "show_icon"

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setShowIcon(Z)V

    .line 259
    const-string v0, "max_messages"

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Landroid/app/OplusNotificationChannelExtImpl;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setMaxMessage(I)V

    .line 260
    const-string v0, "support_num_badge"

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setSupportNumBadge(Z)V

    .line 261
    const-string v0, "badge_option"

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setBadgeOption(I)V

    .line 262
    const-string v0, "changeable_fold"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setChangeableFold(Z)V

    .line 263
    const-string v0, "changeable_show_icon"

    invoke-static {p1, v0, v2}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setChangeableShowIcon(Z)V

    .line 264
    const-string v0, "unimportant"

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setUnimportant(Z)V

    .line 265
    const-string v0, "temp_show_badge"

    invoke-static {p1, v0, v1}, Landroid/app/OplusNotificationChannelExtImpl;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/OplusNotificationChannelExtImpl;->setTempShowBadge(Z)V

    .line 266
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    .line 86
    return-void
.end method

.method public blacklist setBadgeOption(I)V
    .locals 0
    .param p1, "badgeOption"    # I

    .line 210
    iput p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    .line 211
    return-void
.end method

.method public blacklist setChangeableFold(Z)V
    .locals 0
    .param p1, "changeable"    # Z

    .line 234
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    .line 235
    return-void
.end method

.method public blacklist setChangeableShowIcon(Z)V
    .locals 0
    .param p1, "changeable"    # Z

    .line 250
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    .line 251
    return-void
.end method

.method public blacklist setFold(Z)V
    .locals 0
    .param p1, "fold"    # Z

    .line 144
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    .line 145
    return-void
.end method

.method public blacklist setMaxMessage(I)V
    .locals 0
    .param p1, "max"    # I

    .line 162
    iput p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    .line 163
    return-void
.end method

.method public blacklist setOpush(Z)V
    .locals 0
    .param p1, "isOpush"    # Z

    .line 149
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    .line 150
    return-void
.end method

.method public blacklist setShowBanner(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 116
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    .line 117
    return-void
.end method

.method public blacklist setShowIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 178
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    .line 179
    return-void
.end method

.method public blacklist setSupportNumBadge(Z)V
    .locals 0
    .param p1, "supportNumBadge"    # Z

    .line 194
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    .line 195
    return-void
.end method

.method public blacklist setTempShowBadge(Z)V
    .locals 0
    .param p1, "tempShowBadge"    # Z

    .line 432
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    .line 433
    return-void
.end method

.method public blacklist setUnimportant(Z)V
    .locals 0
    .param p1, "isUnimportant"    # Z

    .line 128
    iput-boolean p1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    .line 129
    return-void
.end method

.method public blacklist toJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "record"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowBanner()Z

    move-result v0

    const-string v1, "show_banner"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 308
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isFold()Z

    move-result v0

    const-string v1, "fold"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 309
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isOpush()Z

    move-result v0

    const-string v1, "opush"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 310
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowIcon()Z

    move-result v0

    const-string v1, "show_icon"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getMaxMessages()I

    move-result v0

    const-string v1, "max_messages"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isSupportNumBadge()Z

    move-result v0

    const-string v1, "support_num_badge"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getBadgeOption()I

    move-result v0

    const-string v1, "badge_option"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableFold()Z

    move-result v0

    const-string v1, "changeable_fold"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableShowIcon()Z

    move-result v0

    const-string v1, "changeable_show_icon"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isUnimportant()Z

    move-result v0

    const-string v1, "unimportant"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 317
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canTempShowBadge()Z

    move-result v0

    const-string v1, "temp_show_badge"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 318
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mShowBanner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOpush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportNumBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBadgeOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChangeableFold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChangeableShowIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnimportant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTempShowBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowBanner:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mFold:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 92
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mOpush:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 93
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mShowIcon:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    iget v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mMaxMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mSupportNumBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    iget v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mBadgeOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableFold:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mChangeableShowIcon:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mUnimportant:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    iget-boolean v0, p0, Landroid/app/OplusNotificationChannelExtImpl;->mTempShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    return-void
.end method

.method public blacklist writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowBanner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowBanner()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "show_banner"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isFold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isFold()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fold"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isOpush()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isOpush()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "opush"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    :cond_2
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canShowIcon()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "show_icon"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    :cond_3
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getMaxMessages()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 283
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getMaxMessages()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "max_messages"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    :cond_4
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isSupportNumBadge()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isSupportNumBadge()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "support_num_badge"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    :cond_5
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getBadgeOption()I

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->getBadgeOption()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "badge_option"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    :cond_6
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableFold()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 292
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableFold()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "changeable_fold"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    :cond_7
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableShowIcon()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 295
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isChangeableShowIcon()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "changeable_show_icon"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :cond_8
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isUnimportant()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->isUnimportant()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unimportant"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    :cond_9
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canTempShowBadge()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    invoke-virtual {p0}, Landroid/app/OplusNotificationChannelExtImpl;->canTempShowBadge()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "temp_show_badge"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    :cond_a
    return-void
.end method
