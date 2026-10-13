.class public interface abstract Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;
.super Ljava/lang/Object;
.source "OculusAssistantAttentionListener.java"


# virtual methods
.method public abstract onAssistantResponse(Ljava/lang/String;)Z
.end method

.method public abstract onError(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;)Z
.end method

.method public abstract onInteractionCompleted(Z)Z
.end method

.method public abstract onInteractionPropertiesChanged(F)Z
.end method

.method public abstract onInteractionStateChanged(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;)Z
.end method

.method public abstract onTranscriptionChanged(Ljava/lang/String;Z)Z
.end method
