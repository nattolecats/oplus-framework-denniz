.class public Lcom/android/internal/policy/PhoneFallbackEventHandlerExtImpl;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandlerExtImpl.java"

# interfaces
.implements Lcom/android/internal/policy/IPhoneFallbackEventHandlerExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public blacklist inputLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p1, p2}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method
