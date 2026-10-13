.class public final Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;
.super Ljava/lang/Object;
.source "MqttPushServiceRuntimeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private caller:Ljava/lang/String;

.field private deliveryRetryInterval:Ljava/lang/Integer;

.field private expiredSessionId:J

.field private isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

.field private isExplicitDeliveryAckEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;
    .locals 8

    .prologue
    .line 142
    new-instance v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->caller:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->expiredSessionId:J

    iget-object v4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->isExplicitDeliveryAckEnabled:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->deliveryRetryInterval:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;-><init>(Ljava/lang/String;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$1;)V

    return-object v0
.end method

.method public buildFromSharedPreferences(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;
    .locals 3

    .prologue
    .line 152
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->RUNTIME_PARAMS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 153
    invoke-interface {p1, v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 154
    const-string v1, "CONNECTION_RETRY_FGBG"

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "CONNECTION_RETRY_FGBG"

    const/4 v2, 0x0

    .line 156
    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 155
    invoke-virtual {p0, v1}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->setIsConnectionRetryFgBgEnabled(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;

    .line 158
    :cond_0
    const-string v1, "DELIVERY_RETRY_INTERVAL"

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    const-string v1, "DELIVERY_RETRY_INTERVAL"

    const/16 v2, 0x12c

    .line 160
    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->setDeliveryRetryInterval(I)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->build()Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;

    move-result-object v0

    return-object v0
.end method

.method public setDeliveryRetryInterval(I)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;
    .locals 1

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->deliveryRetryInterval:Ljava/lang/Integer;

    .line 138
    return-object p0
.end method

.method public setIsConnectionRetryFgBgEnabled(Z)Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    .line 128
    return-object p0
.end method
