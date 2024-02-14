.class public final Lcom/oplus/compactwindow/OplusCompactWindowInfo;
.super Ljava/lang/Object;
.source "OplusCompactWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/compactwindow/OplusCompactWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist compactPkg:Ljava/lang/String;

.field public whitelist compactWindowPosition:I

.field public whitelist extension:Landroid/os/Bundle;

.field public whitelist popUpWizard:Z

.field public whitelist showButton:Z

.field public whitelist windowType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/oplus/compactwindow/OplusCompactWindowInfo$1;

    invoke-direct {v0}, Lcom/oplus/compactwindow/OplusCompactWindowInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    .line 50
    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    .line 75
    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    .line 50
    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    .line 75
    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .locals 1
    .param p1, "in"    # Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    .line 50
    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    .line 75
    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    .line 92
    iget-boolean v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    .line 93
    iget-boolean v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    iput-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    .line 94
    iget-object v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    .line 95
    iget v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    .line 96
    iget v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "OplusCompactWindowInfo = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " pName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, " popUpWizard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, " showButton = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, " extension = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " windowType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " compactWindowPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->popUpWizard:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-boolean v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 111
    iget v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->windowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method
