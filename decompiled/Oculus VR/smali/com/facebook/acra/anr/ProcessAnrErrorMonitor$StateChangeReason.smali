.class final enum Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;
.super Ljava/lang/Enum;
.source "ProcessAnrErrorMonitor.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StateChangeReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

.field public static final enum ERROR_CLEARED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

.field public static final enum ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

.field public static final enum ERROR_QUERYING_ACTIVITY_MANAGER:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

.field public static final enum MAX_NUMBER_AFTER_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

.field public static final enum MAX_NUMBER_BEFORE_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

.field public static final enum MONITOR_STARTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

.field public static final enum STOP_REQUESTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    const-string v1, "MONITOR_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MONITOR_STARTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    .line 61
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    const-string v1, "ERROR_CLEARED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_CLEARED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    .line 62
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    const-string v1, "ERROR_DETECTED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    .line 63
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    const-string v1, "MAX_NUMBER_BEFORE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_BEFORE_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    .line 64
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    const-string v1, "MAX_NUMBER_AFTER_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_AFTER_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    .line 65
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    const-string v1, "STOP_REQUESTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->STOP_REQUESTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    .line 66
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    const-string v1, "ERROR_QUERYING_ACTIVITY_MANAGER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_QUERYING_ACTIVITY_MANAGER:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MONITOR_STARTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_CLEARED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_BEFORE_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->MAX_NUMBER_AFTER_ERROR:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->STOP_REQUESTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->ERROR_QUERYING_ACTIVITY_MANAGER:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->$VALUES:[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    return-object v0
.end method

.method public static values()[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->$VALUES:[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    invoke-virtual {v0}, [Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$StateChangeReason;

    return-object v0
.end method
