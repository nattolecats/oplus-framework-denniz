.class Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;
.super Ljava/lang/Object;
.source "OplusMultiUserStatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortUserInfo"
.end annotation


# instance fields
.field blacklist mFlags:I

.field blacklist mId:I

.field blacklist mUserType:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;IILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "userType"    # Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->this$0:Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mId:I

    .line 611
    iput v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mFlags:I

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mUserType:Ljava/lang/String;

    .line 615
    iput p2, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mId:I

    .line 616
    iput p3, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mFlags:I

    .line 617
    iput-object p4, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mUserType:Ljava/lang/String;

    .line 618
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager$ShortUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "res":Ljava/lang/String;
    return-object v0
.end method
