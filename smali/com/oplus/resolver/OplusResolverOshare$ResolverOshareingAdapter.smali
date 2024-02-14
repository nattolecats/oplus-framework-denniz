.class Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverOshare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverOshareingAdapter"
.end annotation


# static fields
.field private static final blacklist MI:I = 0x1e

.field private static final blacklist OPPO:I = 0xa

.field private static final blacklist REALME:I = 0xb

.field private static final blacklist VIVO:I = 0x14


# instance fields
.field blacklist BUSUY_STR:Ljava/lang/String;

.field blacklist CANCEL_STR:Ljava/lang/String;

.field blacklist CANCEL_WAIT_STR:Ljava/lang/String;

.field private final blacklist ICON_COVER_COLOR:I

.field blacklist READY_STR:Ljava/lang/String;

.field blacklist TRANSITING_STR:Ljava/lang/String;

.field blacklist TRANSIT_FAILED_STR:Ljava/lang/String;

.field blacklist TRANSIT_REJECT_STR:Ljava/lang/String;

.field blacklist TRANSIT_SUCCESS_STR:Ljava/lang/String;

.field blacklist TRANSIT_TIMEOUT_STR:Ljava/lang/String;

.field blacklist TRANSIT_WAIT_STR:Ljava/lang/String;

.field private blacklist mAction:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStateTextColorCancel:I

.field blacklist mStateTextColorNomarl:I

.field blacklist mStateTextColorSucces:I

.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverOshare;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceList(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 828
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 705
    const-string p1, "#7F000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->ICON_COVER_COLOR:I

    .line 708
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    .line 722
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mAction:I

    .line 829
    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mContext:Landroid/content/Context;

    .line 830
    const p1, 0xc060039

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mStateTextColorNomarl:I

    .line 831
    const p1, 0xc06004d

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mStateTextColorSucces:I

    .line 832
    const p1, 0xc06004e

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mStateTextColorCancel:I

    .line 833
    const p1, 0xc04007e

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->READY_STR:Ljava/lang/String;

    .line 834
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_WAIT_STR:Ljava/lang/String;

    .line 835
    const p1, 0xc04008e

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSITING_STR:Ljava/lang/String;

    .line 836
    const p1, 0xc04007f

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_FAILED_STR:Ljava/lang/String;

    .line 837
    const p1, 0xc04008a

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_REJECT_STR:Ljava/lang/String;

    .line 838
    const p1, 0xc04008b

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_SUCCESS_STR:Ljava/lang/String;

    .line 839
    const p1, 0xc04008c

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->BUSUY_STR:Ljava/lang/String;

    .line 840
    const p1, 0xc04008d

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->CANCEL_STR:Ljava/lang/String;

    .line 841
    const p1, 0xc04009d

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->CANCEL_WAIT_STR:Ljava/lang/String;

    .line 842
    const p1, 0xc04009a

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_TIMEOUT_STR:Ljava/lang/String;

    .line 843
    return-void
.end method

.method private blacklist bindCompanyIcon(Landroid/widget/ImageView;Lcom/oplus/oshare/OplusOshareDevice;)V
    .locals 1
    .param p1, "userPic"    # Landroid/widget/ImageView;
    .param p2, "vendorDevice"    # Lcom/oplus/oshare/OplusOshareDevice;

    .line 1004
    invoke-virtual {p2}, Lcom/oplus/oshare/OplusOshareDevice;->getHeadIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    invoke-virtual {p2}, Lcom/oplus/oshare/OplusOshareDevice;->getHeadIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 1008
    :cond_0
    invoke-virtual {p2}, Lcom/oplus/oshare/OplusOshareDevice;->getVender()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1022
    const v0, 0xc080050

    .local v0, "userPicResource":I
    goto :goto_0

    .line 1016
    .end local v0    # "userPicResource":I
    :sswitch_0
    const v0, 0xc080053

    .line 1017
    .restart local v0    # "userPicResource":I
    goto :goto_0

    .line 1013
    .end local v0    # "userPicResource":I
    :sswitch_1
    const v0, 0xc080052

    .line 1014
    .restart local v0    # "userPicResource":I
    goto :goto_0

    .line 1019
    .end local v0    # "userPicResource":I
    :sswitch_2
    const v0, 0xc080054

    .line 1020
    .restart local v0    # "userPicResource":I
    goto :goto_0

    .line 1010
    .end local v0    # "userPicResource":I
    :sswitch_3
    const v0, 0xc080051

    .line 1011
    .restart local v0    # "userPicResource":I
    nop

    .line 1025
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1027
    .end local v0    # "userPicResource":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1028
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0x14 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist fadeBackTouchEvent(Landroid/view/MotionEvent;Lcom/oplus/oshare/OplusOshareDevice;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "receiver"    # Lcom/oplus/oshare/OplusOshareDevice;

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mAction:I

    .line 1064
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->isUpOrCancelAction()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v2, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;Lcom/oplus/oshare/OplusOshareDevice;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1077
    :cond_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mAction:I

    if-ne v0, v1, :cond_1

    .line 1078
    invoke-direct {p0, p2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->oShareClick(Lcom/oplus/oshare/OplusOshareDevice;)V

    .line 1081
    :cond_1
    :goto_0
    return v1
.end method

.method private blacklist getStateColor(Lcom/oplus/oshare/OplusOshareState;)I
    .locals 3
    .param p1, "state"    # Lcom/oplus/oshare/OplusOshareState;

    .line 1031
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mStateTextColorNomarl:I

    .line 1032
    .local v0, "color":I
    sget-object v1, Lcom/oplus/resolver/OplusResolverOshare$12;->$SwitchMap$com$oplus$oshare$OplusOshareState:[I

    invoke-virtual {p1}, Lcom/oplus/oshare/OplusOshareState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1034
    :sswitch_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mStateTextColorCancel:I

    .line 1035
    goto :goto_0

    .line 1037
    :sswitch_1
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mStateTextColorSucces:I

    .line 1038
    nop

    .line 1042
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getStateString(Lcom/oplus/oshare/OplusOshareState;)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Lcom/oplus/oshare/OplusOshareState;

    .line 965
    const-string v0, ""

    .line 966
    .local v0, "stringId":Ljava/lang/String;
    sget-object v1, Lcom/oplus/resolver/OplusResolverOshare$12;->$SwitchMap$com$oplus$oshare$OplusOshareState:[I

    invoke-virtual {p1}, Lcom/oplus/oshare/OplusOshareState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 995
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_TIMEOUT_STR:Ljava/lang/String;

    .line 996
    goto :goto_0

    .line 992
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->CANCEL_WAIT_STR:Ljava/lang/String;

    .line 993
    goto :goto_0

    .line 989
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->CANCEL_STR:Ljava/lang/String;

    .line 990
    goto :goto_0

    .line 986
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->BUSUY_STR:Ljava/lang/String;

    .line 987
    goto :goto_0

    .line 983
    :pswitch_4
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_SUCCESS_STR:Ljava/lang/String;

    .line 984
    goto :goto_0

    .line 980
    :pswitch_5
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_REJECT_STR:Ljava/lang/String;

    .line 981
    goto :goto_0

    .line 977
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_FAILED_STR:Ljava/lang/String;

    .line 978
    goto :goto_0

    .line 974
    :pswitch_7
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSITING_STR:Ljava/lang/String;

    .line 975
    goto :goto_0

    .line 971
    :pswitch_8
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->TRANSIT_WAIT_STR:Ljava/lang/String;

    .line 972
    goto :goto_0

    .line 968
    :pswitch_9
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->READY_STR:Ljava/lang/String;

    .line 969
    nop

    .line 1000
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

.method private blacklist oShareClick(Lcom/oplus/oshare/OplusOshareDevice;)V
    .locals 7
    .param p1, "receiver"    # Lcom/oplus/oshare/OplusOshareDevice;

    .line 1046
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceInited(Lcom/oplus/resolver/OplusResolverOshare;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOriginIntent(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1048
    .local v0, "grantIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mContext:Landroid/content/Context;

    const v3, 0xc0400e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mContext:Landroid/content/Context;

    const v4, 0xc0400e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1050
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1051
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1052
    .local v2, "options":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1054
    :try_start_0
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, -0x2710

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v3

    .line 1056
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1058
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v3}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v4}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOriginIntent(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/oplus/oshare/OplusOshareServiceUtil;->sendData(Landroid/content/Intent;Lcom/oplus/oshare/OplusOshareDevice;)V

    .line 1060
    .end local v0    # "grantIntent":Landroid/content/Intent;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "options":Landroid/app/ActivityOptions;
    :cond_0
    return-void
.end method

.method private blacklist showUserWaitingStatusAnimation(Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;Lcom/oplus/oshare/OplusOshareState;)V
    .locals 9
    .param p1, "holder"    # Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;
    .param p2, "status"    # Lcom/oplus/oshare/OplusOshareState;

    .line 906
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v3, "init status animator"

    invoke-static {v0, v3}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 908
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    .line 909
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 910
    .local v0, "frontAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x29b

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 911
    invoke-static {}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$sfgetTRANSFER_STATUS_VIEW_FRONT_ANIMATOR_PATHINTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 912
    iget-object v4, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 913
    .local v4, "behindAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 914
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 915
    invoke-static {}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$sfgetTRANSFER_STATUS_VIEW_BEHIND_ANIMATOR_PATHINTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 916
    iget-object v5, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    aput-object v4, v3, v2

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 917
    iget-object v3, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;-><init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 928
    .end local v0    # "frontAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "behindAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v0, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_WAIT:Lcom/oplus/oshare/OplusOshareState;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/oplus/oshare/OplusOshareState;->READY:Lcom/oplus/oshare/OplusOshareState;

    if-eq p2, v0, :cond_2

    .line 929
    iput-boolean v1, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->canRestartAnimator:Z

    .line 930
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "cancel status animator"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 932
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 934
    :cond_1
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 935
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->getStateString(Lcom/oplus/oshare/OplusOshareState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 936
    :cond_2
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 937
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "start status animator"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 938
    iput-boolean v2, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->canRestartAnimator:Z

    .line 939
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->getStateString(Lcom/oplus/oshare/OplusOshareState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 942
    :cond_3
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "keep status animator"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 943
    iput-boolean v2, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->canRestartAnimator:Z

    .line 944
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->getStateString(Lcom/oplus/oshare/OplusOshareState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e3851ec    # 0.18f
    .end array-data

    :array_1
    .array-data 4
        0x3e3851ec    # 0.18f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public blacklist getItemCount()I
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 959
    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 950
    if-nez p1, :cond_0

    .line 951
    const/4 v0, -0x1

    return v0

    .line 953
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method blacklist isDefaultAction()Z
    .locals 2

    .line 1089
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mAction:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isUpOrCancelAction()Z
    .locals 3

    .line 1085
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mAction:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method synthetic blacklist lambda$fadeBackTouchEvent$1$com-oplus-resolver-OplusResolverOshare$ResolverOshareingAdapter()V
    .locals 0

    .line 1071
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic blacklist lambda$fadeBackTouchEvent$2$com-oplus-resolver-OplusResolverOshare$ResolverOshareingAdapter(Lcom/oplus/oshare/OplusOshareDevice;)V
    .locals 2
    .param p1, "receiver"    # Lcom/oplus/oshare/OplusOshareDevice;

    .line 1068
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v1, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1073
    :goto_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1074
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->oShareClick(Lcom/oplus/oshare/OplusOshareDevice;)V

    .line 1076
    :cond_1
    return-void
.end method

.method synthetic blacklist lambda$onBindViewHolder$0$com-oplus-resolver-OplusResolverOshare$ResolverOshareingAdapter(Lcom/oplus/oshare/OplusOshareDevice;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "receiver"    # Lcom/oplus/oshare/OplusOshareDevice;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 896
    invoke-direct {p0, p3, p1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->fadeBackTouchEvent(Landroid/view/MotionEvent;Lcom/oplus/oshare/OplusOshareDevice;)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyDeviceListChange(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;)V"
        }
    .end annotation

    .line 725
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/oshare/OplusOshareDevice;>;"
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 736
    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 737
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "deviceList is arrayList"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmIsUpdateDeviceList(Lcom/oplus/resolver/OplusResolverOshare;Z)V

    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "addDelay":I
    const/4 v2, 0x0

    .line 741
    .local v2, "removeDelay":I
    const/4 v3, 0x0

    .line 742
    .local v3, "moveDelay":I
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, ","

    if-eqz v4, :cond_2

    .line 743
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    mul-int/lit16 v4, v4, 0xaa

    add-int/lit16 v4, v4, 0x12c

    .line 744
    .end local v0    # "addDelay":I
    .local v4, "addDelay":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty add i:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 747
    .local v1, "message":Landroid/os/Message;
    const/16 v6, 0x68

    iput v6, v1, Landroid/os/Message;->what:I

    .line 748
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 749
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v6}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmHandler(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/os/Handler;

    move-result-object v6

    mul-int/lit16 v7, v0, 0xaa

    int-to-long v7, v7

    invoke-virtual {v6, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 744
    .end local v1    # "message":Landroid/os/Message;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto/16 :goto_6

    .line 753
    .end local v4    # "addDelay":I
    .local v0, "addDelay":I
    :cond_2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 754
    .local v4, "removeEntry":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/oplus/oshare/OplusOshareDevice;>;"
    const/4 v6, -0x1

    .line 755
    .local v6, "firstRemoveIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 756
    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/oshare/OplusOshareDevice;

    .line 757
    .local v8, "entry":Lcom/oplus/oshare/OplusOshareDevice;
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDeviceList i:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 758
    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, -0x1

    if-nez v9, :cond_3

    .line 759
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove i:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 760
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    if-ne v6, v10, :cond_4

    .line 762
    move v6, v7

    goto :goto_2

    .line 765
    :cond_3
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update i:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 766
    invoke-interface {p1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/oshare/OplusOshareDevice;

    invoke-virtual {v8, v9}, Lcom/oplus/oshare/OplusOshareDevice;->copyFrom(Lcom/oplus/oshare/OplusOshareDevice;)V

    .line 767
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyItemChanged(I)V

    .line 768
    if-eq v6, v10, :cond_4

    if-le v7, v6, :cond_4

    .line 769
    const/16 v3, 0x15e

    .line 755
    .end local v8    # "entry":Lcom/oplus/oshare/OplusOshareDevice;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 774
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 775
    const/16 v2, 0xc8

    .line 776
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v8, "execute remove"

    invoke-static {v7, v8}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 777
    const/4 v7, 0x0

    .line 778
    .local v7, "j":I
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 779
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/oplus/oshare/OplusOshareDevice;>;"
    iget-object v10, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 780
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v1

    sub-int/2addr v10, v7

    invoke-virtual {p0, v10}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyItemRemoved(I)V

    .line 781
    nop

    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/oplus/oshare/OplusOshareDevice;>;"
    add-int/lit8 v7, v7, 0x1

    .line 782
    goto :goto_3

    .line 786
    .end local v7    # "j":I
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v1, "addEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/oshare/OplusOshareDevice;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 788
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/oshare/OplusOshareDevice;

    .line 789
    .restart local v8    # "entry":Lcom/oplus/oshare/OplusOshareDevice;
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceList i:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 790
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 791
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add i:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .end local v8    # "entry":Lcom/oplus/oshare/OplusOshareDevice;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 796
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 797
    const/16 v0, 0x12c

    .line 798
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 799
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v7, "execute add"

    invoke-static {v5, v7}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0, v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyItemAdd(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 802
    :cond_9
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v7, "delay execute add animator"

    invoke-static {v5, v7}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 803
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 804
    .local v5, "message":Landroid/os/Message;
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    const/16 v7, 0x67

    iput v7, v5, Landroid/os/Message;->what:I

    .line 806
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v7}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmHandler(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/os/Handler;

    move-result-object v7

    add-int v8, v2, v3

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 809
    .end local v5    # "message":Landroid/os/Message;
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mDeviceList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    move v4, v0

    .line 811
    .end local v0    # "addDelay":I
    .end local v1    # "addEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/oshare/OplusOshareDevice;>;"
    .end local v6    # "firstRemoveIndex":I
    .local v4, "addDelay":I
    :goto_6
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDelay="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",removeDelay="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",moveDelay="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmHandler(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    add-int v5, v4, v2

    add-int/2addr v5, v3

    int-to-long v5, v5

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 814
    .end local v2    # "removeDelay":I
    .end local v3    # "moveDelay":I
    .end local v4    # "addDelay":I
    :cond_b
    return-void

    .line 726
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "deviceList is null"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 728
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_8
    if-lez v0, :cond_d

    .line 729
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove add i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 731
    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyItemRemoved(I)V

    .line 728
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 734
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public blacklist notifyItemAdd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;)V"
        }
    .end annotation

    .line 817
    .local p1, "addEntry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/oshare/OplusOshareDevice;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/oshare/OplusOshareDevice;

    .line 818
    .local v1, "entry":Lcom/oplus/oshare/OplusOshareDevice;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyItemInserted(I)V

    .line 820
    .end local v1    # "entry":Lcom/oplus/oshare/OplusOshareDevice;
    goto :goto_0

    .line 821
    :cond_0
    return-void
.end method

.method public blacklist notifySingleItemAdd(Lcom/oplus/oshare/OplusOshareDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/oplus/oshare/OplusOshareDevice;

    .line 824
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyItemInserted(I)V

    .line 826
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 860
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_5

    instance-of v0, p1, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 864
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    .line 865
    .local v0, "holder":Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->mDeviceList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/oshare/OplusOshareDevice;

    .line 866
    .local v1, "receiver":Lcom/oplus/oshare/OplusOshareDevice;
    if-eqz v1, :cond_4

    .line 867
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userPic:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->bindCompanyIcon(Landroid/widget/ImageView;Lcom/oplus/oshare/OplusOshareDevice;)V

    .line 869
    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getState()Lcom/oplus/oshare/OplusOshareState;

    move-result-object v2

    sget-object v3, Lcom/oplus/oshare/OplusOshareState;->TRANSITING:Lcom/oplus/oshare/OplusOshareState;

    if-ne v2, v3, :cond_1

    .line 870
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setVisibility(I)V

    .line 871
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setProgress(I)V

    goto :goto_0

    .line 872
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getState()Lcom/oplus/oshare/OplusOshareState;

    move-result-object v2

    sget-object v3, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_SUCCESS:Lcom/oplus/oshare/OplusOshareState;

    if-ne v2, v3, :cond_2

    .line 873
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-virtual {v2}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->getProgress()I

    move-result v2

    iget-object v3, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-virtual {v3}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->getMax()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 874
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    iget-object v3, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-virtual {v3}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setProgress(I)V

    goto :goto_0

    .line 877
    :cond_2
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-virtual {v2}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->release()V

    .line 878
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setVisibility(I)V

    .line 880
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    new-instance v3, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$1;-><init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 892
    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getState()Lcom/oplus/oshare/OplusOshareState;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->showUserWaitingStatusAnimation(Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;Lcom/oplus/oshare/OplusOshareState;)V

    .line 893
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getState()Lcom/oplus/oshare/OplusOshareState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->getStateColor(Lcom/oplus/oshare/OplusOshareState;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 894
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v2, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userPic:Landroid/widget/ImageView;

    new-instance v3, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;Lcom/oplus/oshare/OplusOshareDevice;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 898
    :cond_4
    return-void

    .line 862
    .end local v0    # "holder":Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;
    .end local v1    # "receiver":Lcom/oplus/oshare/OplusOshareDevice;
    :cond_5
    :goto_1
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 847
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 848
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 849
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 850
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 849
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    new-instance v1, Lcom/oplus/resolver/OplusResolverOshare$EmptyViewHolder;

    invoke-direct {v1, v0}, Lcom/oplus/resolver/OplusResolverOshare$EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 853
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    new-instance v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0xc09040d

    const/4 v4, 0x0

    .line 854
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;-><init>(Lcom/oplus/resolver/OplusResolverOshare;Landroid/view/View;)V

    .line 855
    .local v0, "myViewHolder":Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;
    return-object v0
.end method

.method public blacklist onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 902
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 903
    return-void
.end method
