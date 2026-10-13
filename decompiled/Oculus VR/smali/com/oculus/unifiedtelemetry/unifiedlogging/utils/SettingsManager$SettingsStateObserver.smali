.class Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Lcom/oculus/os/SettingsObserverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;


# direct methods
.method private constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$1;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;-><init>(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;)V

    return-void
.end method


# virtual methods
.method public onSettingChange(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSettingChange called with incorrect settingName = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_1
    :goto_1
    return-void

    .line 67
    :sswitch_0
    const-string v0, "telemetry_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "managed_device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$100(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;)Lcom/oculus/os/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    .line 72
    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$100(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;)Lcom/oculus/os/SettingsManager;

    move-result-object v1

    const-string v2, "telemetry_state"

    .line 73
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$300()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/oculus/os/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->ON:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    .line 71
    invoke-static {v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;->fromString(Ljava/lang/String;Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$202(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$TelemetryState;

    goto :goto_1

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$100(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;)Lcom/oculus/os/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager$SettingsStateObserver;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    .line 80
    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$100(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;)Lcom/oculus/os/SettingsManager;

    move-result-object v1

    const-string v3, "managed_device"

    invoke-virtual {v1, v3, v2}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 79
    invoke-static {v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;->access$402(Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;I)I

    goto :goto_1

    .line 67
    :sswitch_data_0
    .sparse-switch
        -0xd91f50a -> :sswitch_1
        0x5d64dc8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
