.class public Landroid/app/MessagingStyleExtImpl;
.super Ljava/lang/Object;
.source "MessagingStyleExtImpl.java"

# interfaces
.implements Landroid/app/IMessagingStyleExt;


# static fields
.field private static final blacklist OPLUS_CONVERSATION_TYPE_LEGACY:I


# instance fields
.field private blacklist mBase:Landroid/app/Notification$MessagingStyle;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/app/Notification$MessagingStyle;

    iput-object v0, p0, Landroid/app/MessagingStyleExtImpl;->mBase:Landroid/app/Notification$MessagingStyle;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist getConversationType(I)I
    .locals 1
    .param p1, "type"    # I

    .line 34
    const/4 v0, 0x0

    return v0
.end method
