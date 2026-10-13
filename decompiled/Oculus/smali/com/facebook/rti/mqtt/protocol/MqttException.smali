.class public Lcom/facebook/rti/mqtt/protocol/MqttException;
.super Ljava/lang/Exception;
.source "MqttException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;)V
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/MqttException$ErrorDetail;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
