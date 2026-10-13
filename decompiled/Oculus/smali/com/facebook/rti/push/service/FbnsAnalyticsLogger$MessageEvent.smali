.class public final enum Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;
.super Ljava/lang/Enum;
.source "FbnsAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum ACKNOWLEDGED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum DELIVERYHELPER_FAILED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum DISCARDED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum DUPLICATED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum FAIL_INVALID_RECEIVER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum FAIL_NULL_NOTIF_ID:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum FAIL_SECURE_BROADCAST:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum FAIL_UNTRUSTED_APP:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum NOTIFICATION_RECEIVED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

.field public static final enum REDELIVER_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "NOTIFICATION_RECEIVED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->NOTIFICATION_RECEIVED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 44
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "DUPLICATED_NOTIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DUPLICATED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 45
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "DELIVERYHELPER_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DELIVERYHELPER_FAILED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 46
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "DISCARDED_NOTIFICATION"

    invoke-direct {v0, v1, v6}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DISCARDED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 47
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "ACKNOWLEDGED_NOTIFICATION"

    invoke-direct {v0, v1, v7}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->ACKNOWLEDGED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 48
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "FAIL_NULL_NOTIF_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_NULL_NOTIF_ID:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 49
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "FAIL_INVALID_RECEIVER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_INVALID_RECEIVER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 50
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "FAIL_UNTRUSTED_APP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_UNTRUSTED_APP:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 51
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "FAIL_SECURE_BROADCAST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_SECURE_BROADCAST:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 52
    new-instance v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    const-string v1, "REDELIVER_NOTIFICATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->REDELIVER_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->NOTIFICATION_RECEIVED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DUPLICATED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DELIVERYHELPER_FAILED:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->DISCARDED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->ACKNOWLEDGED_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_NULL_NOTIF_ID:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_INVALID_RECEIVER:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_UNTRUSTED_APP:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->FAIL_SECURE_BROADCAST:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->REDELIVER_NOTIFICATION:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->$VALUES:[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->$VALUES:[Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    invoke-virtual {v0}, [Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$MessageEvent;

    return-object v0
.end method
