.class public interface abstract Lcom/facebook/fbuploader/Listener;
.super Ljava/lang/Object;
.source "Listener.java"


# virtual methods
.method public abstract onCancellation()V
.end method

.method public abstract onCompletion(Lcom/facebook/fbuploader/UploadResult;)V
.end method

.method public abstract onFailure(Lcom/facebook/fbuploader/UploadFailureException;)V
.end method

.method public abstract onProgress(F)V
.end method

.method public abstract onStart()V
.end method
