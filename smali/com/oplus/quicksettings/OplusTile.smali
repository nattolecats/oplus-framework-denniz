.class public Lcom/oplus/quicksettings/OplusTile;
.super Ljava/lang/Object;
.source "OplusTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/quicksettings/OplusTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mClickAction:Landroid/app/PendingIntent;

.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mLongClickIntent:Landroid/content/Intent;

.field private blacklist mState:I

.field private blacklist mStateDescription:Ljava/lang/CharSequence;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/oplus/quicksettings/OplusTile$1;

    invoke-direct {v0}, Lcom/oplus/quicksettings/OplusTile$1;-><init>()V

    sput-object v0, Lcom/oplus/quicksettings/OplusTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/quicksettings/OplusTile;->mState:I

    .line 57
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/quicksettings/OplusTile;->mState:I

    .line 60
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mIcon:Landroid/graphics/drawable/Icon;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mLabel:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mSubtitle:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mContentDescription:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mStateDescription:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/quicksettings/OplusTile;->mState:I

    .line 66
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mClickAction:Landroid/app/PendingIntent;

    .line 67
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mLongClickIntent:Landroid/content/Intent;

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClickAction()Landroid/app/PendingIntent;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mClickAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mLongClickIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/oplus/quicksettings/OplusTile;->mState:I

    return v0
.end method

.method public whitelist getStateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist setClickAction(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "clickAction"    # Landroid/app/PendingIntent;

    .line 238
    iput-object p1, p0, Lcom/oplus/quicksettings/OplusTile;->mClickAction:Landroid/app/PendingIntent;

    .line 239
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 172
    iput-object p1, p0, Lcom/oplus/quicksettings/OplusTile;->mContentDescription:Ljava/lang/CharSequence;

    .line 173
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 106
    iput-object p1, p0, Lcom/oplus/quicksettings/OplusTile;->mIcon:Landroid/graphics/drawable/Icon;

    .line 107
    return-void
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 128
    iput-object p1, p0, Lcom/oplus/quicksettings/OplusTile;->mLabel:Ljava/lang/CharSequence;

    .line 129
    return-void
.end method

.method public whitelist setLongClickIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "longClickIntent"    # Landroid/content/Intent;

    .line 260
    iput-object p1, p0, Lcom/oplus/quicksettings/OplusTile;->mLongClickIntent:Landroid/content/Intent;

    .line 261
    return-void
.end method

.method public whitelist setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 216
    iput p1, p0, Lcom/oplus/quicksettings/OplusTile;->mState:I

    .line 217
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 194
    iput-object p1, p0, Lcom/oplus/quicksettings/OplusTile;->mStateDescription:Ljava/lang/CharSequence;

    .line 195
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 150
    iput-object p1, p0, Lcom/oplus/quicksettings/OplusTile;->mSubtitle:Ljava/lang/CharSequence;

    .line 151
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 77
    iget v0, p0, Lcom/oplus/quicksettings/OplusTile;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mClickAction:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Lcom/oplus/quicksettings/OplusTile;->mLongClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    return-void
.end method
