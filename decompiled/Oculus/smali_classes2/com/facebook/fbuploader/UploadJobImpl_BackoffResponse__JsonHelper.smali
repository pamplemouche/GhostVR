.class public final Lcom/facebook/fbuploader/UploadJobImpl_BackoffResponse__JsonHelper;
.super Ljava/lang/Object;
.source "UploadJobImpl_BackoffResponse__JsonHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromJson(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;

    invoke-direct {v0}, Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 29
    const/4 v0, 0x0

    .line 39
    :cond_0
    return-object v0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 35
    invoke-static {v0, v1, p0}, Lcom/facebook/fbuploader/UploadJobImpl_BackoffResponse__JsonHelper;->processSingleField(Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    .line 36
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/instagram/common/json/JsonFactoryHolder;->APP_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 55
    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl_BackoffResponse__JsonHelper;->parseFromJson(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;

    move-result-object v0

    return-object v0
.end method

.method public static processSingleField(Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "backoff"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;->backoff:J

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
