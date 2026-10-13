.class public interface abstract Lcom/facebook/assistant/clientplatform/clientstate/AssistantClientStateListener;
.super Ljava/lang/Object;
.source "AssistantClientStateListener.java"


# virtual methods
.method public abstract onAssistantResponse(Ljava/lang/String;)Z
.end method

.method public abstract onError(Lcom/facebook/assistant/clientplatform/clientstate/AssistantErrorType;)Z
.end method

.method public abstract onInteractionCompleted(Z)Z
.end method

.method public abstract onInteractionPropertiesChanged(F)Z
.end method

.method public abstract onInteractionStateChanged(Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;)Z
.end method

.method public abstract onTTSResponseReady()Z
.end method

.method public abstract onTranscriptionChanged(Ljava/lang/String;Z)Z
.end method
