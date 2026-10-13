.class public final Lcom/oculus/panelapp/anytimeui/logging/NUXLogging;
.super Ljava/lang/Object;
.source "NUXLogging.java"


# static fields
.field private static final ROOT_EVENT_ABORTED:Ljava/lang/String; = "oculus_vrshell_quest_nux_aborted"

.field private static final ROOT_EVENT_PAUSED:Ljava/lang/String; = "oculus_vrshell_quest_nux_paused"

.field private static final ROOT_EVENT_RESUMED:Ljava/lang/String; = "oculus_vrshell_quest_nux_resumed"

.field private static final SECTION:Ljava/lang/String; = "PauseScreen"

.field private static final SUB_SECTION:Ljava/lang/String; = "pause"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final logAborted(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 5

    .line 35
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object v0

    const-string v1, "pause"

    const-string v2, "PauseScreen"

    .line 38
    invoke-interface {v0, v2, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 39
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "oculus_vrshell_quest_nux_aborted"

    invoke-virtual {p0, v4, v3}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    invoke-interface {v0, v2, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final logPaused(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 5

    .line 17
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object v0

    const-string v1, "pause"

    const-string v2, "PauseScreen"

    .line 20
    invoke-interface {v0, v2, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 21
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "oculus_vrshell_quest_nux_paused"

    invoke-virtual {p0, v4, v3}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, v2, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final logResumed(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 5

    .line 26
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getTelemetryManager()Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    move-result-object v0

    const-string v1, "pause"

    const-string v2, "PauseScreen"

    .line 29
    invoke-interface {v0, v2, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 30
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "oculus_vrshell_quest_nux_resumed"

    invoke-virtual {p0, v4, v3}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    invoke-interface {v0, v2, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->subSectionExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
