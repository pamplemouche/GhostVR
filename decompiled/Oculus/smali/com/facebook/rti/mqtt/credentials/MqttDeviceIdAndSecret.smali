.class public Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;
.super Landroid/util/Pair;
.source "MqttDeviceIdAndSecret.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final EMPTY:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;


# instance fields
.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 14
    new-instance v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    const-string v1, ""

    const-string v2, ""

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->EMPTY:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 18
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iput-wide p3, p0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->mTimestamp:J

    .line 20
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->mTimestamp:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->EMPTY:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0, p0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttDeviceIdAndSecret{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
