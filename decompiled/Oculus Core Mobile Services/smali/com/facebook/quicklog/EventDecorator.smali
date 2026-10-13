.class public interface abstract Lcom/facebook/quicklog/EventDecorator;
.super Ljava/lang/Object;
.source "EventDecorator.java"


# virtual methods
.method public abstract decoratorName()Ljava/lang/String;
.end method

.method public abstract isEnabled(Lcom/facebook/quicklog/MetadataGKs;)Z
.end method

.method public abstract metadataCategory()J
.end method

.method public abstract onPrepareToSendEvent(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
.end method
