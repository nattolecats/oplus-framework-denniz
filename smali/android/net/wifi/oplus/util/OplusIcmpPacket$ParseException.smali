.class public Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException;
.super Ljava/lang/Exception;
.source "OplusIcmpPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/oplus/util/OplusIcmpPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# instance fields
.field public final whitelist errorCode:I


# direct methods
.method public varargs constructor whitelist <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 87
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 88
    iput p1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException;->errorCode:I

    .line 89
    return-void
.end method
