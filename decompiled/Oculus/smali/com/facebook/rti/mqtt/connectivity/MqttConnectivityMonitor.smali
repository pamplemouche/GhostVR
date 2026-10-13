.class public interface abstract Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;
.super Ljava/lang/Object;
.source "MqttConnectivityMonitor.java"


# virtual methods
.method public abstract shouldBeConnected(Ljava/util/Map;)Z
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
