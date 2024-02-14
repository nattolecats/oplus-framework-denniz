.class Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "OplusResolverCircleProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverCircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;-><init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->sendAccessibilityEvent(I)V

    .line 345
    return-void
.end method
