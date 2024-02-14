.class public Lcom/oplus/util/RomUpdateHelper$UpdateInfo;
.super Ljava/lang/Object;
.source "RomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/RomUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateInfo"
.end annotation


# instance fields
.field protected whitelist mVersion:J

.field final synthetic blacklist this$0:Lcom/oplus/util/RomUpdateHelper;


# direct methods
.method protected constructor whitelist <init>(Lcom/oplus/util/RomUpdateHelper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oplus/util/RomUpdateHelper;

    .line 59
    iput-object p1, p0, Lcom/oplus/util/RomUpdateHelper$UpdateInfo;->this$0:Lcom/oplus/util/RomUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/util/RomUpdateHelper$UpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public whitelist clear()V
    .locals 0

    .line 75
    return-void
.end method

.method public whitelist clone(Lcom/oplus/util/RomUpdateHelper$UpdateInfo;)Z
    .locals 1
    .param p1, "other"    # Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump()V
    .locals 0

    .line 78
    return-void
.end method

.method public whitelist getVersion()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/oplus/util/RomUpdateHelper$UpdateInfo;->mVersion:J

    return-wide v0
.end method

.method public whitelist insert(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist parseContentFromXML(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 64
    return-void
.end method

.method public whitelist updateToLowerVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newContent"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    return v0
.end method
