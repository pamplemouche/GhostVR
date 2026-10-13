.class public final enum Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;
.super Ljava/lang/Enum;
.source "ProcessAnrErrorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

.field public static final enum MONITORING_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

.field public static final enum MONITORING_NO_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

.field public static final enum NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    const-string v1, "NOT_MONITORING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 47
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    const-string v1, "MONITORING_NO_ERROR_DETECTED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->MONITORING_NO_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 48
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    const-string v1, "MONITORING_ERROR_DETECTED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->MONITORING_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->MONITORING_NO_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->MONITORING_ERROR_DETECTED:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->$VALUES:[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->$VALUES:[Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    invoke-virtual {v0}, [Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    return-object v0
.end method
