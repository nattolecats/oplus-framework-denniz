.class public Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;
.super Ljava/lang/Object;
.source "OplusZoomControlViewInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist cvActionFlag:I

.field public whitelist cvRectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist extension:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo$1;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    .line 64
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist clear()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    .line 99
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 101
    return-void
.end method

.method public whitelist copyFrom(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    .line 92
    iget v0, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    .line 93
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "OplusZoomControlViewInfo = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cvActionFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cvRectMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " extension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvActionFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->cvRectMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 77
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method
