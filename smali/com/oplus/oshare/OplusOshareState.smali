.class public final enum Lcom/oplus/oshare/OplusOshareState;
.super Ljava/lang/Enum;
.source "OplusOshareState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/oshare/OplusOshareState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist BUSUY:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist BUSY:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist CANCEL:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist CANCEL_WAIT:Lcom/oplus/oshare/OplusOshareState;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/oshare/OplusOshareState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum whitelist IDLE:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist READY:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist SPACE_NOT_ENOUGH:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist TRANSITING:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist TRANSIT_FAILED:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist TRANSIT_REJECT:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist TRANSIT_SUCCESS:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist TRANSIT_TIMEOUT:Lcom/oplus/oshare/OplusOshareState;

.field public static final enum whitelist TRANSIT_WAIT:Lcom/oplus/oshare/OplusOshareState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/oplus/oshare/OplusOshareState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/oshare/OplusOshareState;->IDLE:Lcom/oplus/oshare/OplusOshareState;

    .line 27
    new-instance v1, Lcom/oplus/oshare/OplusOshareState;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/oshare/OplusOshareState;->READY:Lcom/oplus/oshare/OplusOshareState;

    .line 32
    new-instance v3, Lcom/oplus/oshare/OplusOshareState;

    const-string v5, "TRANSIT_WAIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_WAIT:Lcom/oplus/oshare/OplusOshareState;

    .line 37
    new-instance v5, Lcom/oplus/oshare/OplusOshareState;

    const-string v7, "TRANSITING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/oshare/OplusOshareState;->TRANSITING:Lcom/oplus/oshare/OplusOshareState;

    .line 42
    new-instance v7, Lcom/oplus/oshare/OplusOshareState;

    const-string v9, "CANCEL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oplus/oshare/OplusOshareState;->CANCEL:Lcom/oplus/oshare/OplusOshareState;

    .line 47
    new-instance v9, Lcom/oplus/oshare/OplusOshareState;

    const-string v11, "TRANSIT_SUCCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_SUCCESS:Lcom/oplus/oshare/OplusOshareState;

    .line 52
    new-instance v11, Lcom/oplus/oshare/OplusOshareState;

    const-string v13, "TRANSIT_FAILED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_FAILED:Lcom/oplus/oshare/OplusOshareState;

    .line 57
    new-instance v13, Lcom/oplus/oshare/OplusOshareState;

    const-string v15, "TRANSIT_REJECT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_REJECT:Lcom/oplus/oshare/OplusOshareState;

    .line 62
    new-instance v15, Lcom/oplus/oshare/OplusOshareState;

    const-string v14, "TRANSIT_TIMEOUT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/oplus/oshare/OplusOshareState;->TRANSIT_TIMEOUT:Lcom/oplus/oshare/OplusOshareState;

    .line 67
    new-instance v14, Lcom/oplus/oshare/OplusOshareState;

    const-string v12, "BUSUY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/oplus/oshare/OplusOshareState;->BUSUY:Lcom/oplus/oshare/OplusOshareState;

    .line 72
    new-instance v12, Lcom/oplus/oshare/OplusOshareState;

    const-string v10, "BUSY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/oplus/oshare/OplusOshareState;->BUSY:Lcom/oplus/oshare/OplusOshareState;

    .line 76
    new-instance v10, Lcom/oplus/oshare/OplusOshareState;

    const-string v8, "CANCEL_WAIT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/oplus/oshare/OplusOshareState;->CANCEL_WAIT:Lcom/oplus/oshare/OplusOshareState;

    .line 80
    new-instance v8, Lcom/oplus/oshare/OplusOshareState;

    const-string v6, "SPACE_NOT_ENOUGH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/oplus/oshare/OplusOshareState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/oplus/oshare/OplusOshareState;->SPACE_NOT_ENOUGH:Lcom/oplus/oshare/OplusOshareState;

    .line 18
    const/16 v6, 0xd

    new-array v6, v6, [Lcom/oplus/oshare/OplusOshareState;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/oplus/oshare/OplusOshareState;->$VALUES:[Lcom/oplus/oshare/OplusOshareState;

    .line 92
    new-instance v0, Lcom/oplus/oshare/OplusOshareState$1;

    invoke-direct {v0}, Lcom/oplus/oshare/OplusOshareState$1;-><init>()V

    sput-object v0, Lcom/oplus/oshare/OplusOshareState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/oplus/oshare/OplusOshareState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/oplus/oshare/OplusOshareState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/oshare/OplusOshareState;

    return-object v0
.end method

.method public static whitelist values()[Lcom/oplus/oshare/OplusOshareState;
    .locals 1

    .line 18
    sget-object v0, Lcom/oplus/oshare/OplusOshareState;->$VALUES:[Lcom/oplus/oshare/OplusOshareState;

    invoke-virtual {v0}, [Lcom/oplus/oshare/OplusOshareState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/oshare/OplusOshareState;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 90
    return-void
.end method
