.class public interface abstract Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;
.super Ljava/lang/Object;
.source "NotificationDeliveryStore.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract add(Ljava/lang/String;Landroid/content/Intent;)V
.end method

.method public abstract checkAndUpdateRetryList(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/manager/NotificationItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/manager/NotificationItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract remove(Ljava/lang/String;)J
.end method

.method public abstract setDeliveryRetryInterval(I)V
.end method
