.class public abstract Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;
.super Landroid/os/Binder;
.source "IOplusScreenshotManager.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScreenshotManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/IOplusScreenshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusScreenshotManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isLongshotDisabled:I = 0x7

.field static final blacklist TRANSACTION_isLongshotEnabled:I = 0xd

.field static final blacklist TRANSACTION_isLongshotMode:I = 0x6

.field static final blacklist TRANSACTION_isScreenshotEdit:I = 0x3

.field static final blacklist TRANSACTION_isScreenshotEnabled:I = 0xb

.field static final blacklist TRANSACTION_isScreenshotMode:I = 0x2

.field static final blacklist TRANSACTION_isScreenshotSupported:I = 0x9

.field static final blacklist TRANSACTION_notifyOverScroll:I = 0xe

.field static final blacklist TRANSACTION_reportLongshotDumpResult:I = 0x8

.field static final blacklist TRANSACTION_setLongshotEnabled:I = 0xc

.field static final blacklist TRANSACTION_setScreenshotEnabled:I = 0xa

.field static final blacklist TRANSACTION_stopLongshot:I = 0x5

.field static final blacklist TRANSACTION_takeLongshot:I = 0x4

.field static final blacklist TRANSACTION_takeScreenshot:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 134
    const-string v0, "com.oplus.screenshot.IOplusScreenshotManager"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScreenshotManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    const-string v0, "com.oplus.screenshot.IOplusScreenshotManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_1

    .line 147
    move-object v1, v0

    check-cast v1, Lcom/oplus/screenshot/IOplusScreenshotManager;

    return-object v1

    .line 149
    :cond_1
    new-instance v1, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 153
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const-string v0, "com.oplus.screenshot.IOplusScreenshotManager"

    .line 158
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 169
    packed-switch p1, :pswitch_data_1

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v1

    .line 270
    :pswitch_1
    sget-object v2, Lcom/oplus/screenshot/OplusLongshotEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/screenshot/OplusLongshotEvent;

    .line 271
    .local v2, "_arg0":Lcom/oplus/screenshot/OplusLongshotEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->notifyOverScroll(Lcom/oplus/screenshot/OplusLongshotEvent;)V

    .line 273
    goto/16 :goto_0

    .line 262
    .end local v2    # "_arg0":Lcom/oplus/screenshot/OplusLongshotEvent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->isLongshotEnabled()Z

    move-result v2

    .line 263
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 265
    goto/16 :goto_0

    .line 255
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 256
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->setLongshotEnabled(Z)V

    .line 258
    goto/16 :goto_0

    .line 247
    .end local v2    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->isScreenshotEnabled()Z

    move-result v2

    .line 248
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    goto/16 :goto_0

    .line 240
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 241
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->setScreenshotEnabled(Z)V

    .line 243
    goto :goto_0

    .line 232
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->isScreenshotSupported()Z

    move-result v2

    .line 233
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 235
    goto :goto_0

    .line 225
    .end local v2    # "_result":Z
    :pswitch_7
    sget-object v2, Lcom/oplus/screenshot/OplusLongshotDump;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/screenshot/OplusLongshotDump;

    .line 226
    .local v2, "_arg0":Lcom/oplus/screenshot/OplusLongshotDump;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->reportLongshotDumpResult(Lcom/oplus/screenshot/OplusLongshotDump;)V

    .line 228
    goto :goto_0

    .line 217
    .end local v2    # "_arg0":Lcom/oplus/screenshot/OplusLongshotDump;
    :pswitch_8
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->isLongshotDisabled()Z

    move-result v2

    .line 218
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    goto :goto_0

    .line 210
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->isLongshotMode()Z

    move-result v2

    .line 211
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    goto :goto_0

    .line 205
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->stopLongshot()V

    .line 206
    goto :goto_0

    .line 196
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 198
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 199
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->takeLongshot(ZZ)V

    .line 201
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_c
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->isScreenshotEdit()Z

    move-result v2

    .line 189
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    goto :goto_0

    .line 181
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->isScreenshotMode()Z

    move-result v2

    .line 182
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 184
    goto :goto_0

    .line 174
    .end local v2    # "_result":Z
    :pswitch_e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 175
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->takeScreenshot(Landroid/os/Bundle;)V

    .line 177
    nop

    .line 280
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
