.class public interface abstract Lcom/facebook/analytics2/logger/UploaderCallback;
.super Ljava/lang/Object;
.source "UploaderCallback.java"


# virtual methods
.method public abstract onFailure(Ljava/io/IOException;)V
.end method

.method public abstract onSuccess(ILjava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
