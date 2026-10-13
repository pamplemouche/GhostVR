.class public final enum Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;
.super Ljava/lang/Enum;
.source "RTStatsLifeCycle.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Metric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;",
        ">;",
        "Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum BackgroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum FbnsLiteNotificationDeliveryRetried:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum FbnsLiteNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum FbnsNotificationDeliveryRetried:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum FbnsNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum ForegroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum MessageSendAttempt:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum MessageSendSuccess:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum MqttDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum MqttTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum NetworkDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum NetworkTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum PublishReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

.field public static final enum ServiceDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;


# instance fields
.field private final mJsonKey:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "MqttDurationMs"

    const-string v2, "m"

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MqttDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 21
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "MqttTotalDurationMs"

    const-string v2, "mt"

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MqttTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 23
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "NetworkDurationMs"

    const-string v2, "n"

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->NetworkDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 25
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "NetworkTotalDurationMs"

    const-string v2, "nt"

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->NetworkTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 27
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "ServiceDurationMs"

    const-string/jumbo v2, "s"

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->ServiceDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 29
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "MessageSendAttempt"

    const/4 v2, 0x5

    const-string/jumbo v3, "sa"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MessageSendAttempt:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 31
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "MessageSendSuccess"

    const/4 v2, 0x6

    const-string/jumbo v3, "ss"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MessageSendSuccess:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 33
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "ForegroundPing"

    const/4 v2, 0x7

    const-string v3, "fp"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->ForegroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 35
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "BackgroundPing"

    const/16 v2, 0x8

    const-string v3, "bp"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->BackgroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 37
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "PublishReceived"

    const/16 v2, 0x9

    const-string v3, "pr"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->PublishReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 39
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "FbnsNotificationReceived"

    const/16 v2, 0xa

    const-string v3, "fnr"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 41
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "FbnsLiteNotificationReceived"

    const/16 v2, 0xb

    const-string v3, "flnr"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsLiteNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 43
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "FbnsNotificationDeliveryRetried"

    const/16 v2, 0xc

    const-string v3, "fdr"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsNotificationDeliveryRetried:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 45
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    const-string v1, "FbnsLiteNotificationDeliveryRetried"

    const/16 v2, 0xd

    const-string v3, "fldr"

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsLiteNotificationDeliveryRetried:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    .line 17
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MqttDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MqttTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->NetworkDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->NetworkTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->ServiceDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MessageSendAttempt:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MessageSendSuccess:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->ForegroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->BackgroundPing:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->PublishReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsLiteNotificationReceived:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsNotificationDeliveryRetried:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->FbnsLiteNotificationDeliveryRetried:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->$VALUES:[Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->mJsonKey:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->mType:Ljava/lang/Class;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->$VALUES:[Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->mJsonKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->mType:Ljava/lang/Class;

    return-object v0
.end method
