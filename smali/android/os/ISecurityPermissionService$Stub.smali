.class public abstract Landroid/os/ISecurityPermissionService$Stub;
.super Landroid/os/Binder;
.source "ISecurityPermissionService.java"

# interfaces
.implements Landroid/os/ISecurityPermissionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISecurityPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISecurityPermissionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_basicTypes:I = 0x2

.field static final blacklist TRANSACTION_checkOplusPermission:I = 0x1

.field static final blacklist TRANSACTION_getLastUpdateTime:I = 0x8

.field static final blacklist TRANSACTION_queryPackagePermissionsAsUser:I = 0x4

.field static final blacklist TRANSACTION_queryPermissionAsUser:I = 0x3

.field static final blacklist TRANSACTION_readRecommendPermissions:I = 0x7

.field static final blacklist TRANSACTION_updateCachedPermission:I = 0x5

.field static final blacklist TRANSACTION_writeRecommendPermissions:I = 0x6


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "android.os.ISecurityPermissionService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISecurityPermissionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/os/ISecurityPermissionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    const-string v0, "android.os.ISecurityPermissionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISecurityPermissionService;

    if-eqz v1, :cond_1

    .line 100
    move-object v1, v0

    check-cast v1, Landroid/os/ISecurityPermissionService;

    return-object v1

    .line 102
    :cond_1
    new-instance v1, Landroid/os/ISecurityPermissionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISecurityPermissionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 106
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    const-string v12, "android.os.ISecurityPermissionService"

    .line 111
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 112
    move-object/from16 v14, p2

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    move-object/from16 v14, p2

    .line 114
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 122
    packed-switch v10, :pswitch_data_1

    .line 234
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 118
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v13

    .line 227
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ISecurityPermissionService$Stub;->getLastUpdateTime()J

    move-result-wide v0

    .line 228
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    goto/16 :goto_1

    .line 210
    .end local v0    # "_result":J
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v9, v0}, Landroid/os/ISecurityPermissionService$Stub;->readRecommendPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 213
    .local v1, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-nez v1, :cond_1

    .line 215
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 217
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    new-instance v2, Landroid/os/ISecurityPermissionService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v11}, Landroid/os/ISecurityPermissionService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 223
    goto/16 :goto_1

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 202
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v9, v0, v1}, Landroid/os/ISecurityPermissionService$Stub;->writeRecommendPermissions(Ljava/lang/String;Z)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto/16 :goto_1

    .line 186
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 191
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/ISecurityPermissionService$Stub;->updateCachedPermission(Ljava/lang/String;IZ)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto/16 :goto_1

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {v9, v0, v1}, Landroid/os/ISecurityPermissionService$Stub;->queryPackagePermissionsAsUser(Ljava/lang/String;I)Landroid/content/pm/PackagePermission;

    move-result-object v2

    .line 179
    .local v2, "_result":Landroid/content/pm/PackagePermission;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 181
    goto :goto_1

    .line 160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/PackagePermission;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/ISecurityPermissionService$Stub;->queryPermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 167
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_1

    .line 141
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 143
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 145
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 147
    .local v18, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 149
    .local v19, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 151
    .local v20, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 152
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    move-object/from16 v0, p0

    move v1, v15

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/os/ISecurityPermissionService$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_1

    .line 127
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":Z
    .end local v19    # "_arg3":F
    .end local v20    # "_arg4":D
    .end local v22    # "_arg5":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/ISecurityPermissionService$Stub;->checkOplusPermission(Ljava/lang/String;II)Z

    move-result v3

    .line 134
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    nop

    .line 237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :goto_1
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
