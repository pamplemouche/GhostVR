.class public Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;,
        Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;
    }
.end annotation


# static fields
.field private static final DEFAULT_TELEMETRY_STATE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mManagedMode:I

.field private mSettingsManager:Lcom/oculus/os/SettingsManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mTelemetryState:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->TAG:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->ON:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->getState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->DEFAULT_TELEMETRY_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "TelemetryStateMonitor: will try to setup settings"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    .line 46
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;-><init>(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$1;)V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string/jumbo v3, "telemetry_state"

    invoke-virtual {v2, v3, v0, v1}, Lcom/oculus/os/SettingsManager;->registerSettingsObserver(Ljava/lang/String;Lcom/oculus/os/SettingsObserverCallback;Landroid/os/Handler;)Z

    .line 50
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v3, "managed_device"

    invoke-virtual {v2, v3, v0, v1}, Lcom/oculus/os/SettingsManager;->registerSettingsObserver(Ljava/lang/String;Lcom/oculus/os/SettingsObserverCallback;Landroid/os/Handler;)Z

    .line 52
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string/jumbo v1, "telemetry_state"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->DEFAULT_TELEMETRY_STATE:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/oculus/os/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->ON:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    .line 53
    invoke-static {v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->fromString(Ljava/lang/String;Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mTelemetryState:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    .line 57
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v1, "managed_device"

    const/4 v2, -0x1

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mManagedMode:I

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;)Lcom/oculus/os/SettingsManager;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mTelemetryState:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->DEFAULT_TELEMETRY_STATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mManagedMode:I

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getManagedMode()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mManagedMode:I

    return v0
.end method

.method public isTelemetryStateOff()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->mTelemetryState:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->OFF:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
