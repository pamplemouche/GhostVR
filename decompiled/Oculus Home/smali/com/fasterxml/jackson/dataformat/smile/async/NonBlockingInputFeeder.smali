.class public interface abstract Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingInputFeeder;
.super Ljava/lang/Object;
.source "NonBlockingInputFeeder.java"


# virtual methods
.method public abstract endOfInput()V
.end method

.method public abstract feedInput([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract needMoreInput()Z
.end method
