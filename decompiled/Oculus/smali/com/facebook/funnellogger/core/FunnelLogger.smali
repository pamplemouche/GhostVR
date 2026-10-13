.class public interface abstract Lcom/facebook/funnellogger/core/FunnelLogger;
.super Ljava/lang/Object;
.source "FunnelLogger.java"


# virtual methods
.method public abstract appendActionWithTagAndPayload(Lcom/facebook/funnellogger/core/FunnelDefinition;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;)V
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/funnellogger/core/PayloadBundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract appendActionWithTagAndPayload(Lcom/facebook/funnellogger/core/FunnelDefinition;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;)V
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/funnellogger/core/PayloadBundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract endFunnel(Lcom/facebook/funnellogger/core/FunnelDefinition;)V
.end method

.method public abstract endFunnel(Lcom/facebook/funnellogger/core/FunnelDefinition;J)V
.end method

.method public abstract startFunnel(Lcom/facebook/funnellogger/core/FunnelDefinition;)V
.end method

.method public abstract startFunnel(Lcom/facebook/funnellogger/core/FunnelDefinition;J)V
.end method
