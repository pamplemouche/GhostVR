.class public interface abstract Lcom/oculus/logging/EventFactory;
.super Ljava/lang/Object;
.source "EventFactory.java"


# virtual methods
.method public abstract newEvent(Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract newEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract newEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract newExposureEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;
.end method
