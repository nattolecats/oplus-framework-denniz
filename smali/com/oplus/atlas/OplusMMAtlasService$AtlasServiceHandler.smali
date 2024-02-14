.class Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;
.super Landroid/os/Handler;
.source "OplusMMAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/atlas/OplusMMAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AtlasServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/atlas/OplusMMAtlasService;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/atlas/OplusMMAtlasService;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/atlas/OplusMMAtlasService;Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;-><init>(Lcom/oplus/atlas/OplusMMAtlasService;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0}, Lcom/oplus/atlas/OplusMMAtlasService;->atlasServiceinit()V

    .line 159
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
