.class public Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;
.super Ljava/lang/Object;
.source "MqttPushServiceRuntimeParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$Builder;
    }
.end annotation


# instance fields
.field public caller:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public deliveryRetryInterval:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public expiredSessionId:J

.field public isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public isExplicitDeliveryAckEnabled:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->caller:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->expiredSessionId:J

    .line 37
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    .line 38
    iput-object p5, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isExplicitDeliveryAckEnabled:Ljava/lang/Boolean;

    .line 39
    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;-><init>(Ljava/lang/String;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_4

    .line 62
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->caller:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "caller"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->caller:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->expiredSessionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "EXPIRED_SESSION"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->expiredSessionId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "CONNECTION_RETRY_FGBG"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isExplicitDeliveryAckEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 72
    const-string v0, "EXPLICIT_DELIVERY_ACK"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isExplicitDeliveryAckEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 75
    const-string v0, "DELIVERY_RETRY_INTERVAL"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    :cond_4
    return-void
.end method

.method public overwriteWithIntent(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    if-eqz p1, :cond_3

    .line 83
    const-string v2, "caller"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "caller"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->caller:Ljava/lang/String;

    .line 86
    :cond_0
    const-string v2, "EXPIRED_SESSION"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "EXPIRED_SESSION"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->expiredSessionId:J

    .line 89
    :cond_1
    const-string v2, "CONNECTION_RETRY_FGBG"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    const-string v2, "CONNECTION_RETRY_FGBG"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 92
    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    move v0, v1

    .line 96
    :cond_2
    const-string v2, "DELIVERY_RETRY_INTERVAL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    const-string v2, "DELIVERY_RETRY_INTERVAL"

    const/16 v3, 0x12c

    .line 98
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 101
    iput-object v2, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    move v0, v1

    .line 106
    :cond_3
    return v0
.end method

.method public saveToSharedPreferences(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 43
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->RUNTIME_PARAMS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 44
    invoke-interface {p1, v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v2

    .line 45
    const/4 v0, 0x0

    .line 46
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 47
    const-string v0, "CONNECTION_RETRY_FGBG"

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->isConnectionRetryFgBgEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move v0, v1

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 51
    const-string v0, "DELIVERY_RETRY_INTERVAL"

    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceRuntimeParameters;->deliveryRetryInterval:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    .line 55
    :goto_0
    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 58
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method
