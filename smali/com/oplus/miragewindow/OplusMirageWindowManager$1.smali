.class Lcom/oplus/miragewindow/OplusMirageWindowManager$1;
.super Lcom/oplus/miragewindow/IOplusMirageSessionCallback$Stub;
.source "OplusMirageWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/miragewindow/OplusMirageWindowManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/miragewindow/OplusMirageWindowManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/miragewindow/OplusMirageWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/miragewindow/OplusMirageWindowManager;

    .line 70
    iput-object p1, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager$1;->this$0:Lcom/oplus/miragewindow/OplusMirageWindowManager;

    invoke-direct {p0}, Lcom/oplus/miragewindow/IOplusMirageSessionCallback$Stub;-><init>()V

    return-void
.end method
