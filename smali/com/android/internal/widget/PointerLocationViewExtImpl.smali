.class public Lcom/android/internal/widget/PointerLocationViewExtImpl;
.super Ljava/lang/Object;
.source "PointerLocationViewExtImpl.java"

# interfaces
.implements Lcom/android/internal/widget/IPointerLocationViewExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public blacklist enableInputLogV()Z
    .locals 1

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist inputLogd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/oplus/debug/InputLog;->getCurrentLogSwitchValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 20
    invoke-static {p1, p2}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return v1

    .line 23
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
