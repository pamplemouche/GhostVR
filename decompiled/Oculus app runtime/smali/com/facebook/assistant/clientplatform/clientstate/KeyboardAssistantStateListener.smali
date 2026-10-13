.class public interface abstract Lcom/facebook/assistant/clientplatform/clientstate/KeyboardAssistantStateListener;
.super Ljava/lang/Object;
.source "KeyboardAssistantStateListener.java"


# virtual methods
.method public abstract onInteractionCompleted(Z)V
.end method

.method public abstract onInteractionStateChanged(Lcom/facebook/assistant/clientplatform/clientstate/AssistantInteractionState;)V
.end method

.method public abstract onTranscriptionChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onTypeAheadSuggestion(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
