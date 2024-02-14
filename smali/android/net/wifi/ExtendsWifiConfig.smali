.class public Landroid/net/wifi/ExtendsWifiConfig;
.super Ljava/lang/Object;
.source "ExtendsWifiConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/ExtendsWifiConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroid/net/wifi/ExtendsWifiConfig;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/net/wifi/ExtendsWifiConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/ExtendsWifiConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ExtendsWifiConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/ExtendsWifiConfig;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 27
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/ExtendsWifiConfig;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 33
    return-void
.end method

.method private static blacklist getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 44
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 46
    .local v0, "object":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 47
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 51
    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 52
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWifiConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/net/wifi/ExtendsWifiConfig;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public whitelist setWifiConfig(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 36
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Landroid/net/wifi/ExtendsWifiConfig;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 37
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Landroid/net/wifi/ExtendsWifiConfig;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    return-void
.end method
