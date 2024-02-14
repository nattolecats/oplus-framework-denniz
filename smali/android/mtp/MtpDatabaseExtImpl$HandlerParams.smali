.class public Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;
.super Ljava/lang/Object;
.source "MtpDatabaseExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabaseExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerParams"
.end annotation


# instance fields
.field blacklist path:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/mtp/MtpDatabaseExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDatabaseExtImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/mtp/MtpDatabaseExtImpl;
    .param p2, "path"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;->this$0:Landroid/mtp/MtpDatabaseExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;->path:Ljava/lang/String;

    .line 78
    return-void
.end method
