.class Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;
.super Ljava/lang/Object;
.source "OplusMultiUserStatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateUserEvent"
.end annotation


# instance fields
.field blacklist createNewUserEx:Ljava/lang/String;

.field blacklist createUserKeyEx:Ljava/lang/String;

.field blacklist mCreateUser_EnterTime:J

.field blacklist mCreateUser_ExitTime:J

.field blacklist mFlags:I

.field blacklist mUserId:I

.field blacklist mUserType:Ljava/lang/String;

.field blacklist onNewUserCreatedEx:Ljava/lang/String;

.field blacklist prepareUserDataEx:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;JILjava/lang/String;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
    .param p2, "functionStartTime"    # J
    .param p4, "userId"    # I
    .param p5, "userType"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 506
    iput-object p1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->this$0:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mCreateUser_EnterTime:J

    .line 497
    iput-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mCreateUser_ExitTime:J

    .line 498
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mUserId:I

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mUserType:Ljava/lang/String;

    .line 500
    iput v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mFlags:I

    .line 501
    iput-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->createUserKeyEx:Ljava/lang/String;

    .line 502
    iput-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->prepareUserDataEx:Ljava/lang/String;

    .line 503
    iput-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->createNewUserEx:Ljava/lang/String;

    .line 504
    iput-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->onNewUserCreatedEx:Ljava/lang/String;

    .line 507
    iput-wide p2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mCreateUser_EnterTime:J

    .line 508
    iput p4, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mUserId:I

    .line 509
    iput-object p5, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mUserType:Ljava/lang/String;

    .line 510
    iput p6, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mFlags:I

    .line 511
    return-void
.end method


# virtual methods
.method public blacklist isMatched(JILjava/lang/String;I)Z
    .locals 4
    .param p1, "functionStartTime"    # J
    .param p3, "userId"    # I
    .param p4, "userType"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 514
    iget-wide v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mCreateUser_EnterTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mUserType:Ljava/lang/String;

    .line 515
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mUserId:I

    if-lez v0, :cond_0

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$CreateUserEvent;->mFlags:I

    if-ne v0, p5, :cond_0

    .line 517
    const/4 v0, 0x1

    return v0

    .line 518
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
