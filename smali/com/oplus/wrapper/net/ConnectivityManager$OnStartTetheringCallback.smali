.class public abstract Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field private blacklist mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback$1;

    invoke-direct {v0, p0}, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback$1;-><init>(Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;)V

    iput-object v0, p0, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 120
    return-void
.end method


# virtual methods
.method blacklist getCallBack()Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    return-object v0
.end method

.method public whitelist onTetheringFailed()V
    .locals 0

    .line 145
    return-void
.end method

.method public whitelist onTetheringStarted()V
    .locals 0

    .line 136
    return-void
.end method
