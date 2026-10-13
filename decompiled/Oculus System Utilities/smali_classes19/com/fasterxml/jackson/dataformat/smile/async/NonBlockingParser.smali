.class public interface abstract Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParser;
.super Ljava/lang/Object;
.source "NonBlockingParser.java"

# interfaces
.implements Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingInputFeeder;


# virtual methods
.method public abstract peekNextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation
.end method
