.class public Loplus/net/wifi/HotspotClient;
.super Ljava/lang/Object;
.source "HotspotClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Loplus/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist conTime:Ljava/lang/String;

.field public whitelist deviceAddress:Ljava/lang/String;

.field public whitelist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Loplus/net/wifi/HotspotClient$1;

    invoke-direct {v0}, Loplus/net/wifi/HotspotClient$1;-><init>()V

    sput-object v0, Loplus/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Loplus/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Loplus/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Loplus/net/wifi/HotspotClient;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Loplus/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Loplus/net/wifi/HotspotClient;->name:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Loplus/net/wifi/HotspotClient;->conTime:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Loplus/net/wifi/HotspotClient;)V
    .locals 1
    .param p1, "source"    # Loplus/net/wifi/HotspotClient;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p1, Loplus/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Loplus/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Loplus/net/wifi/HotspotClient;->name:Ljava/lang/String;

    iput-object v0, p0, Loplus/net/wifi/HotspotClient;->name:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Loplus/net/wifi/HotspotClient;->conTime:Ljava/lang/String;

    iput-object v0, p0, Loplus/net/wifi/HotspotClient;->conTime:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Loplus/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Loplus/net/wifi/HotspotClient;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v2, " conTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Loplus/net/wifi/HotspotClient;->conTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Loplus/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Loplus/net/wifi/HotspotClient;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Loplus/net/wifi/HotspotClient;->conTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return-void
.end method
