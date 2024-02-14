.class Landroid/service/wallpaper/EngineExtImpl$1;
.super Ljava/lang/Object;
.source "EngineExtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/wallpaper/EngineExtImpl;->reportFinishDrawing(Landroid/os/Handler;Landroid/view/IWindowSession;Lcom/android/internal/view/BaseIWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/wallpaper/EngineExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/service/wallpaper/EngineExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/wallpaper/EngineExtImpl;

    .line 88
    iput-object p1, p0, Landroid/service/wallpaper/EngineExtImpl$1;->this$0:Landroid/service/wallpaper/EngineExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/service/wallpaper/EngineExtImpl$1;->this$0:Landroid/service/wallpaper/EngineExtImpl;

    invoke-static {v0}, Landroid/service/wallpaper/EngineExtImpl;->-$$Nest$mfinishDrawingIfNeed(Landroid/service/wallpaper/EngineExtImpl;)V

    .line 92
    return-void
.end method
