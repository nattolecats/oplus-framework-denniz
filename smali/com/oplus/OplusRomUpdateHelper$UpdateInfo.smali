.class public Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;
.super Ljava/lang/Object;
.source "OplusRomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/OplusRomUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateInfo"
.end annotation


# instance fields
.field protected blacklist mVersion:J

.field final synthetic blacklist this$0:Lcom/oplus/OplusRomUpdateHelper;


# direct methods
.method protected constructor blacklist <init>(Lcom/oplus/OplusRomUpdateHelper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oplus/OplusRomUpdateHelper;

    .line 60
    iput-object p1, p0, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->this$0:Lcom/oplus/OplusRomUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 0

    .line 76
    return-void
.end method

.method public blacklist clone(Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;)Z
    .locals 1
    .param p1, "other"    # Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump()V
    .locals 0

    .line 79
    return-void
.end method

.method public blacklist getVersion()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->mVersion:J

    return-wide v0
.end method

.method public blacklist insert(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist parseContentFromXML(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 65
    return-void
.end method

.method public blacklist updateToLowerVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newContent"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    return v0
.end method
