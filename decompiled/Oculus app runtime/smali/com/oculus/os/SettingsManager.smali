.class public Lcom/oculus/os/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field public static final AUTOSLEEP_TIME:Ljava/lang/String; = "autosleep_time"

.field public static final AUTOWAKE:Ljava/lang/String; = "autowake"

.field public static final BUG_REPORT_ADD_VISION_LOGS:Ljava/lang/String; = "bug_report_add_vision_logs"

.field public static final CONTROLLER_LASER_BEAM_EFFECTS:Ljava/lang/String; = "controller_laser_beam_effects"

.field public static final CRASH_REPORTS_ENABLED:Ljava/lang/String; = "crash_reports_enabled"

.field public static final ELECTRIC_GRID_LINE_FREQUENCY:Ljava/lang/String; = "electric_grid_line_frequency"

.field public static final ENTERPRISE_AUTO_OTA:Ljava/lang/String; = "enterprise_auto_ota"

.field public static final MANAGED_DEVICE:Ljava/lang/String; = "managed_device"

.field public static final MARAUDER_DEVICE_ID:Ljava/lang/String; = "marauder_device_id"

.field public static final MIC_MUTED:Ljava/lang/String; = "mic_muted"

.field public static final MTP_DIALOG_ENABLED:Ljava/lang/String; = "mtp_dialog_enabled"

.field public static final MULTI_USER_ENABLED:Ljava/lang/String; = "multi_user_enabled"

.field public static final NUX_COMPLETE:Ljava/lang/String; = "nux_complete"

.field public static final OCULUS_BUTTON_MAPPING:Ljava/lang/String; = "oculus_button_mapping"

.field public static final PROX_SENSOR_DISABLED:Ljava/lang/String; = "prox_sensor_disabled"

.field public static final WAKEUP_DIALOG_ENABLED:Ljava/lang/String; = "wakeup_dialog_enabled"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized registerSettingsObserver(Ljava/lang/String;Lcom/oculus/os/SettingsObserverCallback;Landroid/os/Handler;)Z
    .locals 0

    monitor-enter p0

    .line 18
    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDouble(Ljava/lang/String;D)Z
    .locals 0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFloat(Ljava/lang/String;F)Z
    .locals 0

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInt(Ljava/lang/String;I)Z
    .locals 0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLong(Ljava/lang/String;J)Z
    .locals 0

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized unregisterSettingsObserver(Ljava/lang/String;Lcom/oculus/os/SettingsObserverCallback;)V
    .locals 0

    monitor-enter p0

    .line 19
    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
