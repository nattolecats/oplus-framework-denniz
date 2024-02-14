.class Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager$Holder;
.super Ljava/lang/Object;
.source "OplusDarkModeThirdInvertManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final blacklist INSTANCE:Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;-><init>(Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager-IA;)V

    sput-object v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager$Holder;->INSTANCE:Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
