.class public Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;
.super Ljava/lang/Object;
.source "OplusHeifConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/media/OplusHeifConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeifDecodedFrame"
.end annotation


# instance fields
.field public whitelist m_ColorSpace:Landroid/graphics/ColorSpace;

.field public whitelist m_buffer_id:J

.field public whitelist m_buffer_id_sub:J

.field public whitelist m_frame_height:I

.field public whitelist m_frame_width:I

.field public whitelist m_recycled:Z

.field public whitelist m_yuvdata:[B


# direct methods
.method public constructor whitelist <init>([BIIJ)V
    .locals 0
    .param p1, "yuv"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "id"    # J

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_yuvdata:[B

    .line 107
    iput p2, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_width:I

    .line 108
    iput p3, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_height:I

    .line 109
    iput-wide p4, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_buffer_id:J

    .line 110
    return-void
.end method


# virtual methods
.method public final whitelist isRecycled()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z

    return v0
.end method

.method public whitelist recycle()V
    .locals 4

    .line 79
    iget-boolean v0, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-wide v0, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_buffer_id:J

    iget-wide v2, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_buffer_id_sub:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/media/OplusHeifConverter;->-$$Nest$smnativeRecycle(JJ)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_yuvdata:[B

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z

    .line 85
    return-void
.end method

.method public whitelist render(Landroid/view/Surface;Z)Z
    .locals 9
    .param p1, "sur"    # Landroid/view/Surface;
    .param p2, "isDirectBuffer"    # Z

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_recycled:Z

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    return v1

    .line 93
    :cond_0
    if-eqz p2, :cond_1

    .line 94
    :try_start_0
    iget-wide v2, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_buffer_id:J

    iget-wide v4, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_buffer_id_sub:J

    iget v6, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_width:I

    iget v7, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_height:I

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oplus/media/OplusHeifConverter;->-$$Nest$smnativeRenderDirectBuffer(JJIILandroid/view/Surface;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_yuvdata:[B

    iget v2, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_width:I

    iget v3, p0, Lcom/oplus/media/OplusHeifConverter$HeifDecodedFrame;->m_frame_height:I

    invoke-static {v1, v2, v3, p1}, Lcom/oplus/media/OplusHeifConverter;->-$$Nest$smnativeRender([BIILandroid/view/Surface;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 101
    :goto_0
    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to native10BitSetSurfaceYUVdata stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusHeifConverter_Java"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method
