.class public interface abstract Lcom/oculus/localmedia/crypto/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"


# virtual methods
.method public abstract decrypt([BI)[B
.end method

.method public abstract encrypt([BI)[B
.end method

.method public abstract getChunkSize()I
.end method

.method public abstract getChunkSizeEncryptionOverhead()I
.end method

.method public abstract getDecryptedLength(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEncryptedLength(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
