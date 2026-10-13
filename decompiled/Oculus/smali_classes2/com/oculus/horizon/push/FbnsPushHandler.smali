.class public interface abstract Lcom/oculus/horizon/push/FbnsPushHandler;
.super Ljava/lang/Object;
.source "FbnsPushHandler.java"


# virtual methods
.method public abstract getHandledNotificationTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNotification(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method
