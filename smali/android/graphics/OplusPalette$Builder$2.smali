.class Landroid/graphics/OplusPalette$Builder$2;
.super Landroid/os/AsyncTask;
.source "OplusPalette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/OplusPalette$Builder;->generate(Landroid/graphics/OplusPalette$PaletteAsyncListener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/OplusPalette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/OplusPalette$Builder;

.field final synthetic blacklist val$listener:Landroid/graphics/OplusPalette$PaletteAsyncListener;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/OplusPalette$Builder;Landroid/graphics/OplusPalette$PaletteAsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/OplusPalette$Builder;

    .line 244
    iput-object p1, p0, Landroid/graphics/OplusPalette$Builder$2;->this$0:Landroid/graphics/OplusPalette$Builder;

    iput-object p2, p0, Landroid/graphics/OplusPalette$Builder$2;->val$listener:Landroid/graphics/OplusPalette$PaletteAsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/OplusPalette;
    .locals 3
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/graphics/OplusPalette$Builder$2;->this$0:Landroid/graphics/OplusPalette$Builder;

    invoke-virtual {v0}, Landroid/graphics/OplusPalette$Builder;->generate()Landroid/graphics/OplusPalette;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusPalette"

    const-string v2, "Exception thrown during async generate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/graphics/OplusPalette$Builder$2;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/OplusPalette;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Landroid/graphics/OplusPalette;)V
    .locals 1
    .param p1, "colorExtractor"    # Landroid/graphics/OplusPalette;

    .line 257
    iget-object v0, p0, Landroid/graphics/OplusPalette$Builder$2;->val$listener:Landroid/graphics/OplusPalette$PaletteAsyncListener;

    invoke-interface {v0, p1}, Landroid/graphics/OplusPalette$PaletteAsyncListener;->onGenerated(Landroid/graphics/OplusPalette;)V

    .line 258
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 244
    check-cast p1, Landroid/graphics/OplusPalette;

    invoke-virtual {p0, p1}, Landroid/graphics/OplusPalette$Builder$2;->onPostExecute(Landroid/graphics/OplusPalette;)V

    return-void
.end method
