.class public Lcom/oplus/util/OplusReflectData;
.super Ljava/lang/Object;
.source "OplusReflectData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusReflectData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOCAL_REFLECT_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mReflectAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReflectEnable:Z

.field private blacklist mReflectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/oplus/util/OplusReflectData$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusReflectData$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusReflectData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusReflectData;->LOCAL_REFLECT_LIST:Ljava/util/ArrayList;

    .line 54
    sget-object v1, Lcom/oplus/util/OplusReflectWidget;->DEFAULT_WIDGET:Lcom/oplus/util/OplusReflectWidget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/oplus/util/OplusReflectWidget;->DEFAULT_WIDGET_WECHAT_1420:Lcom/oplus/util/OplusReflectWidget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectEnable:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectAppList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectEnable:Z

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusReflectData;->mReflectAppList:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectEnable:Z

    .line 63
    sget-object v0, Lcom/oplus/util/OplusReflectWidget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method private blacklist findWidgetImpl(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/util/OplusReflectWidget;
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/util/OplusReflectWidget;"
        }
    .end annotation

    .line 112
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/util/OplusReflectWidget;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/util/OplusReflectWidget;

    .line 114
    .local v1, "widget":Lcom/oplus/util/OplusReflectWidget;
    invoke-virtual {v1}, Lcom/oplus/util/OplusReflectWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    return-object v1

    .line 112
    .end local v1    # "widget":Lcom/oplus/util/OplusReflectWidget;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist initAppWidgetImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 138
    .local p1, "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/util/OplusReflectWidget;>;"
    .local p2, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/util/OplusReflectWidget;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/util/OplusReflectWidget;

    .line 140
    .local v1, "widget":Lcom/oplus/util/OplusReflectWidget;
    invoke-virtual {v1}, Lcom/oplus/util/OplusReflectWidget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/oplus/util/OplusReflectWidget;->getVersionCode()I

    move-result v2

    if-lt p4, v2, :cond_0

    .line 141
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v1    # "widget":Lcom/oplus/util/OplusReflectWidget;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusReflectData;->setReflectEnable(Z)V

    .line 147
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist addReflectWidget(Lcom/oplus/util/OplusReflectWidget;)V
    .locals 1
    .param p1, "widget"    # Lcom/oplus/util/OplusReflectWidget;

    .line 100
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public blacklist clearList()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist findWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/util/OplusReflectWidget;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/util/OplusReflectData;->findWidgetImpl(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/util/OplusReflectWidget;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getReflectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist initList(Ljava/lang/String;I)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 129
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/util/OplusReflectData;->mReflectAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oplus/util/OplusReflectData;->initAppWidgetImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusReflectData;->LOCAL_REFLECT_LIST:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/util/OplusReflectData;->mReflectAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oplus/util/OplusReflectData;->initAppWidgetImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 135
    :goto_0
    return-void
.end method

.method public blacklist isReflectEnable()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectEnable:Z

    return v0
.end method

.method public blacklist setReflectEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/oplus/util/OplusReflectData;->mReflectEnable:Z

    .line 83
    return-void
.end method

.method public blacklist setReflectList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/util/OplusReflectWidget;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "reflectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/util/OplusReflectWidget;>;"
    iput-object p1, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusReflectData{mReflectEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/util/OplusReflectData;->mReflectEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReflectList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget-boolean v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectEnable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v0, p0, Lcom/oplus/util/OplusReflectData;->mReflectList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 75
    return-void
.end method
