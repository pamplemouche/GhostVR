.class public interface abstract Lcom/oculus/logging/OculusLoggingEvent;
.super Ljava/lang/Object;
.source "OculusLoggingEvent.java"


# virtual methods
.method public abstract addExtra(Ljava/lang/String;D)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract addExtra(Ljava/lang/String;I)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract addExtra(Ljava/lang/String;J)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract addExtra(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract isSampled()Z
.end method

.method public abstract logAndRelease()V
.end method

.method public abstract setTime(J)Lcom/oculus/logging/OculusLoggingEvent;
.end method

.method public abstract setXplatTagForInternalUse()V
.end method
