.class public Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OplusHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/OplusHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeXmlParseHandler"
.end annotation


# instance fields
.field private blacklist mDateString:Ljava/lang/String;

.field private blacklist mIsDateFlag:Z

.field private blacklist mIsTimeFlag:Z

.field private blacklist mIsTimeZoneFlag:Z

.field private blacklist mTimeString:Ljava/lang/String;

.field private blacklist mTimeZoneString:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/OplusHttpClient;


# direct methods
.method public constructor blacklist <init>(Landroid/net/OplusHttpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/OplusHttpClient;

    .line 304
    iput-object p1, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->this$0:Landroid/net/OplusHttpClient;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 306
    iput-boolean v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    .line 307
    iput-boolean v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 308
    const-string v0, ""

    iput-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 315
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 316
    iget-boolean v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_0
    iget-boolean v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_1
    iget-boolean v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    if-eqz v0, :cond_2

    .line 321
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    .line 323
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist test-api endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 327
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 328
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 333
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 335
    iput-boolean v1, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    goto :goto_0

    .line 336
    :cond_0
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iput-boolean v1, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 338
    :cond_1
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iput-boolean v1, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 341
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist getDate()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTime()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimeZone()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 345
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 346
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 352
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 353
    iput-boolean v1, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    goto :goto_0

    .line 355
    :cond_0
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iput-boolean v1, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 358
    :cond_1
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iput-boolean v1, p0, Landroid/net/OplusHttpClient$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 361
    :cond_2
    :goto_0
    return-void
.end method
