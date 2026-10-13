.class public interface abstract Lcom/facebook/rti/common/fbtrace/FbTraceLogger;
.super Ljava/lang/Object;
.source "FbTraceLogger.java"


# virtual methods
.method public abstract logAcknowledgePublication(Ljava/lang/Object;ZLjava/lang/String;)V
.end method

.method public abstract logPublishReceive(Ljava/lang/String;[B)Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract logPublishSend(Ljava/lang/String;[B)Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract logResponseSend(Ljava/lang/Object;ZLjava/lang/String;)V
.end method
