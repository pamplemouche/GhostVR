.class public final Lcom/oculus/panelapp/anytimeui/logging/AUILogging;
.super Ljava/lang/Object;
.source "AUILogging.java"


# static fields
.field private static final EXTRA_NAME:Ljava/lang/String; = "name"

.field private static final NAME_INVALID_CALL_ORDER:Ljava/lang/String; = "invalid_call_order"

.field private static final ROOT_EVENT:Ljava/lang/String; = "oculus_aui_error"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final logInvalidCallOrder(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object p0

    const-string v0, "name"

    const-string v1, "invalid_call_order"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "oculus_aui_error"

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
