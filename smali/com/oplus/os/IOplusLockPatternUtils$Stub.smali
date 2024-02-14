.class public abstract Lcom/oplus/os/IOplusLockPatternUtils$Stub;
.super Landroid/os/Binder;
.source "IOplusLockPatternUtils.java"

# interfaces
.implements Lcom/oplus/os/IOplusLockPatternUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/IOplusLockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/os/IOplusLockPatternUtils$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateDerivedPassword:I = 0x7

.field static final blacklist TRANSACTION_getDerivedPasswordInfo:I = 0x5

.field static final blacklist TRANSACTION_getPublicKey:I = 0x6

.field static final blacklist TRANSACTION_getVersionInfo:I = 0x1

.field static final blacklist TRANSACTION_notifySrpLockVerify:I = 0x2

.field static final blacklist TRANSACTION_registSrpCredential:I = 0x3

.field static final blacklist TRANSACTION_unRegistSrpCredential:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.oplus.os.IOplusLockPatternUtils"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusLockPatternUtils;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    const-string v0, "com.oplus.os.IOplusLockPatternUtils"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/os/IOplusLockPatternUtils;

    if-eqz v1, :cond_1

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/oplus/os/IOplusLockPatternUtils;

    return-object v1

    .line 62
    :cond_1
    new-instance v1, Lcom/oplus/os/IOplusLockPatternUtils$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/os/IOplusLockPatternUtils$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 66
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const-string v0, "com.oplus.os.IOplusLockPatternUtils"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 82
    packed-switch p1, :pswitch_data_1

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 132
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 134
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 136
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 137
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->generateDerivedPassword([B[B[B)[B

    move-result-object v5

    .line 139
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 141
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":[B
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->getPublicKey()[B

    move-result-object v2

    .line 125
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 127
    goto :goto_0

    .line 113
    .end local v2    # "_result":[B
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 115
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 116
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->getDerivedPasswordInfo([B[B)Ljava/util/Map;

    move-result-object v4

    .line 118
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 120
    goto :goto_0

    .line 107
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Ljava/util/Map;
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->unRegistSrpCredential()V

    .line 108
    goto :goto_0

    .line 102
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->registSrpCredential()V

    .line 103
    goto :goto_0

    .line 94
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 95
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->notifySrpLockVerify([B)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    goto :goto_0

    .line 86
    .end local v2    # "_arg0":[B
    :pswitch_7
    invoke-virtual {p0}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->getVersionInfo()[B

    move-result-object v2

    .line 87
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 89
    nop

    .line 148
    .end local v2    # "_result":[B
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
