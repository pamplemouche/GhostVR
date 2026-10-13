.class public final enum Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;
.super Ljava/lang/Enum;
.source "MqttHealthStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

.field public static final enum ServiceCreatedTimestamp:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    const-string v1, "ServiceCreatedTimestamp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;->ServiceCreatedTimestamp:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;->ServiceCreatedTimestamp:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;->$VALUES:[Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;->$VALUES:[Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    return-object v0
.end method
