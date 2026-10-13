.class public Lcom/facebook/rti/mqtt/protocol/messages/MqttPublishCompression;
.super Ljava/lang/Object;
.source "MqttPublishCompression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPublishFormat(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, "jz"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 21
    :cond_0
    :goto_0
    return v0

    .line 18
    :cond_1
    const-string v1, "jzo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const/4 v0, 0x2

    goto :goto_0
.end method
