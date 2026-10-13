.class final enum Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;
.super Ljava/lang/Enum;
.source "GearVRLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

.field public static final enum FETCH_GATEKEEPERS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

.field public static final enum REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

.field public static final enum REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

.field public static final enum REPORT_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

.field public static final enum REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

.field public static final enum REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

.field public static final enum REPORT_LOW_LATENCY_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    const-string v1, "FETCH_GATEKEEPERS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->FETCH_GATEKEEPERS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 59
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    const-string v1, "REPORT_LOW_LATENCY_EVENTS"

    invoke-direct {v0, v1, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 60
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    const-string v1, "REPORT_EVENTS"

    invoke-direct {v0, v1, v5}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 61
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    const-string v1, "REPORT_LOW_LATENCY_EXPOSURE"

    invoke-direct {v0, v1, v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 62
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    const-string v1, "REPORT_EXPOSURE"

    invoke-direct {v0, v1, v7}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 63
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    const-string v1, "REGISTER_FUNNEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 64
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    const-string v1, "REPORT_FUNNEL_DATA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->FETCH_GATEKEEPERS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-virtual {v0}, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    return-object v0
.end method
