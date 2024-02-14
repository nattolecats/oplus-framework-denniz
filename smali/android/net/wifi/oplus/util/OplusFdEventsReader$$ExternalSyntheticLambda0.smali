.class public final synthetic Landroid/net/wifi/oplus/util/OplusFdEventsReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/oplus/util/OplusFdEventsReader;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/oplus/util/OplusFdEventsReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/oplus/util/OplusFdEventsReader;

    return-void
.end method


# virtual methods
.method public final whitelist onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/oplus/util/OplusFdEventsReader;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->lambda$createAndRegisterFd$0$android-net-wifi-oplus-util-OplusFdEventsReader(Ljava/io/FileDescriptor;I)I

    move-result p1

    return p1
.end method
