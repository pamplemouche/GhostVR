.class public interface abstract Lcom/facebook/analytics2/logger/BatchPayload;
.super Ljava/lang/Object;
.source "BatchPayload.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract getEstimatedPayloadSize()I
.end method

.method public abstract isMultiBatch()Z
.end method

.method public abstract writeRawTo(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
