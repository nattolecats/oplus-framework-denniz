.class public Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;
.super Ljava/lang/Object;
.source "OplusRomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OplusRomUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateInfo"
.end annotation


# instance fields
.field protected whitelist mVersion:J

.field final synthetic blacklist this$0:Landroid/net/wifi/OplusRomUpdateHelper;


# direct methods
.method protected constructor whitelist <init>(Landroid/net/wifi/OplusRomUpdateHelper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/wifi/OplusRomUpdateHelper;

    .line 72
    iput-object p1, p0, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->this$0:Landroid/net/wifi/OplusRomUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public whitelist clear()V
    .locals 0

    .line 88
    return-void
.end method

.method public whitelist clone(Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;)Z
    .locals 1
    .param p1, "other"    # Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump()V
    .locals 0

    .line 91
    return-void
.end method

.method public whitelist getVersion()J
    .locals 2

    .line 94
    iget-wide v0, p0, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->mVersion:J

    return-wide v0
.end method

.method public whitelist insert(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist parseContentFromXML(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 77
    return-void
.end method

.method public whitelist updateToLowerVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newContent"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    return v0
.end method
