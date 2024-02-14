.class public Lcom/oplus/network/OlkStreamParam;
.super Ljava/lang/Object;
.source "OlkStreamParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/OlkStreamParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_PORT_ID:I = 0xffff

.field public static final blacklist MAX_PROTOCOL_ID:I = 0xff

.field public static final blacklist PROTOCOL_ID_TCP:I = 0x6

.field public static final blacklist PROTOCOL_ID_UDP:I = 0x11

.field private static final blacklist TAG:Ljava/lang/String; = "OlkStreamParam"


# instance fields
.field public blacklist mDstIp:Ljava/lang/String;

.field public blacklist mDstPort:I

.field public blacklist mPriority:I

.field public blacklist mProtocol:I

.field public blacklist mSrcIp:Ljava/lang/String;

.field public blacklist mSrcPort:I

.field public blacklist mTag:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/oplus/network/OlkStreamParam$1;

    invoke-direct {v0}, Lcom/oplus/network/OlkStreamParam$1;-><init>()V

    sput-object v0, Lcom/oplus/network/OlkStreamParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 0
    .param p1, "mSrcIp"    # Ljava/lang/String;
    .param p2, "mDstIp"    # Ljava/lang/String;
    .param p3, "mSrcPort"    # I
    .param p4, "mDstPort"    # I
    .param p5, "mProtocol"    # I
    .param p6, "mTag"    # I
    .param p7, "mPriority"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oplus/network/OlkStreamParam;->mSrcIp:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/oplus/network/OlkStreamParam;->mDstIp:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/oplus/network/OlkStreamParam;->mSrcPort:I

    .line 30
    iput p4, p0, Lcom/oplus/network/OlkStreamParam;->mDstPort:I

    .line 31
    iput p5, p0, Lcom/oplus/network/OlkStreamParam;->mProtocol:I

    .line 32
    iput p6, p0, Lcom/oplus/network/OlkStreamParam;->mTag:I

    .line 33
    iput p7, p0, Lcom/oplus/network/OlkStreamParam;->mPriority:I

    .line 34
    return-void
.end method

.method public static blacklist checkIpStrValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "ipstr"    # Ljava/lang/String;

    .line 84
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "ip":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 86
    return v3

    .line 88
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 90
    :try_start_0
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v4, "v":I
    if-ltz v4, :cond_2

    const/16 v5, 0xff

    if-le v4, v5, :cond_1

    goto :goto_1

    .line 97
    .end local v4    # "v":I
    :cond_1
    nop

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .restart local v4    # "v":I
    :cond_2
    :goto_1
    return v3

    .line 94
    .end local v4    # "v":I
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse ip failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OlkStreamParam"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v3

    .line 99
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public blacklist checkParamValid()Z
    .locals 9

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "srcIpValid":Z
    const/4 v1, 0x1

    .line 105
    .local v1, "dstIpValid":Z
    const/4 v2, 0x1

    .line 106
    .local v2, "srcPortValid":Z
    const/4 v3, 0x1

    .line 107
    .local v3, "dstPortValid":Z
    const/4 v4, 0x1

    .line 109
    .local v4, "protocolValid":Z
    iget-object v5, p0, Lcom/oplus/network/OlkStreamParam;->mSrcIp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "OlkStreamParam"

    if-eqz v5, :cond_0

    .line 110
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/oplus/network/OlkStreamParam;->mSrcIp:Ljava/lang/String;

    invoke-static {v5}, Lcom/oplus/network/OlkStreamParam;->checkIpStrValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    const-string v5, "srcIp invalid!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v6

    .line 116
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/oplus/network/OlkStreamParam;->mDstIp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    const/4 v1, 0x0

    goto :goto_1

    .line 118
    :cond_2
    iget-object v5, p0, Lcom/oplus/network/OlkStreamParam;->mDstIp:Ljava/lang/String;

    invoke-static {v5}, Lcom/oplus/network/OlkStreamParam;->checkIpStrValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 119
    const-string v5, "dstIp invalid!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v6

    .line 123
    :cond_3
    :goto_1
    iget v5, p0, Lcom/oplus/network/OlkStreamParam;->mSrcPort:I

    const v8, 0xffff

    if-nez v5, :cond_4

    .line 124
    const/4 v2, 0x0

    goto :goto_2

    .line 125
    :cond_4
    if-ltz v5, :cond_c

    if-le v5, v8, :cond_5

    goto :goto_6

    .line 130
    :cond_5
    :goto_2
    iget v5, p0, Lcom/oplus/network/OlkStreamParam;->mDstPort:I

    if-nez v5, :cond_6

    .line 131
    const/4 v3, 0x0

    goto :goto_3

    .line 132
    :cond_6
    if-ltz v5, :cond_b

    if-le v5, v8, :cond_7

    goto :goto_5

    .line 137
    :cond_7
    :goto_3
    iget v5, p0, Lcom/oplus/network/OlkStreamParam;->mProtocol:I

    if-nez v5, :cond_8

    .line 138
    const/4 v4, 0x0

    goto :goto_4

    .line 139
    :cond_8
    const/4 v8, 0x6

    if-eq v5, v8, :cond_9

    const/16 v8, 0x11

    if-eq v5, v8, :cond_9

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProtocol invalid!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/oplus/network/OlkStreamParam;->mProtocol:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v6

    .line 144
    :cond_9
    :goto_4
    if-nez v0, :cond_a

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-nez v3, :cond_a

    if-nez v4, :cond_a

    .line 145
    const-string v5, "all param is invalid! at list one param valid!"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v6

    .line 148
    :cond_a
    const/4 v5, 0x1

    return v5

    .line 133
    :cond_b
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDstPort invalid!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/oplus/network/OlkStreamParam;->mDstPort:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v6

    .line 126
    :cond_c
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "srcPort invalid!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/oplus/network/OlkStreamParam;->mSrcPort:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v6
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keyEquals(Lcom/oplus/network/OlkStreamParam;)Z
    .locals 3
    .param p1, "param"    # Lcom/oplus/network/OlkStreamParam;

    .line 152
    iget-object v0, p0, Lcom/oplus/network/OlkStreamParam;->mSrcIp:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/network/OlkStreamParam;->mSrcIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/OlkStreamParam;->mDstIp:Ljava/lang/String;

    iget-object v2, p1, Lcom/oplus/network/OlkStreamParam;->mDstIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    return v1

    .line 158
    :cond_1
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mSrcPort:I

    iget v2, p1, Lcom/oplus/network/OlkStreamParam;->mSrcPort:I

    if-eq v0, v2, :cond_2

    .line 159
    return v1

    .line 161
    :cond_2
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mDstPort:I

    iget v2, p1, Lcom/oplus/network/OlkStreamParam;->mDstPort:I

    if-eq v0, v2, :cond_3

    .line 162
    return v1

    .line 164
    :cond_3
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mProtocol:I

    iget v2, p1, Lcom/oplus/network/OlkStreamParam;->mProtocol:I

    if-eq v0, v2, :cond_4

    .line 165
    return v1

    .line 167
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OlkStreamParam{mSrcIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/network/OlkStreamParam;->mSrcIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDstIp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/network/OlkStreamParam;->mDstIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSrcPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/OlkStreamParam;->mSrcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDstPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/OlkStreamParam;->mDstPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/OlkStreamParam;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/OlkStreamParam;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/OlkStreamParam;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 43
    iget-object v0, p0, Lcom/oplus/network/OlkStreamParam;->mSrcIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/oplus/network/OlkStreamParam;->mDstIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mSrcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mDstPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/oplus/network/OlkStreamParam;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
