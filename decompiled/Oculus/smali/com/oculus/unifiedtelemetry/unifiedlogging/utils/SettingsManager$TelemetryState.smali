.class final enum Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;
.super Ljava/lang/Enum;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TelemetryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

.field public static final enum OFF:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

.field public static final enum ON:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;


# instance fields
.field private final mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    const-string v1, "OFF"

    const-string v2, "off"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->OFF:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    .line 21
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    const-string v1, "ON"

    const-string v2, "on"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->ON:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->OFF:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->ON:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->mState:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static fromString(Ljava/lang/String;Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->values()[Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 35
    iget-object v4, v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->mState:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, v0

    .line 39
    :cond_0
    return-object p1

    .line 34
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->$VALUES:[Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    invoke-virtual {v0}, [Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    return-object v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->mState:Ljava/lang/String;

    return-object v0
.end method
