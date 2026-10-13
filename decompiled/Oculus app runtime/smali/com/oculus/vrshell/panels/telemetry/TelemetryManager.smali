.class public Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;
.super Ljava/lang/Object;
.source "TelemetryManager.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugPrinting:Z

.field private final mLogger:Lcom/oculus/vrshell/panels/telemetry/Logger;

.field private final mSectionTracker:Lcom/oculus/vrshell/panels/telemetry/SectionTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/panels/telemetry/Logger;Lcom/oculus/vrshell/panels/telemetry/SectionTracker;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mDebugPrinting:Z

    .line 14
    iput-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mLogger:Lcom/oculus/vrshell/panels/telemetry/Logger;

    .line 15
    iput-object p2, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mSectionTracker:Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    return-void
.end method


# virtual methods
.method public getSectionTracker()Lcom/oculus/vrshell/panels/telemetry/SectionTracker;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mSectionTracker:Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    return-object v0
.end method

.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mSectionTracker:Lcom/oculus/vrshell/panels/telemetry/SectionTracker;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2}, Lcom/oculus/vrshell/panels/telemetry/SectionTracker;->addSectionData(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mDebugPrinting:Z

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") extras"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mLogger:Lcom/oculus/vrshell/panels/telemetry/Logger;

    invoke-interface {v0, p1, p2}, Lcom/oculus/vrshell/panels/telemetry/Logger;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public logJsonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 20
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mDebugPrinting:Z

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") extras"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mLogger:Lcom/oculus/vrshell/panels/telemetry/Logger;

    invoke-interface {v0, p1, p2}, Lcom/oculus/vrshell/panels/telemetry/Logger;->rawLogJsonEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSectionEntryCallback()V
    .locals 2

    .line 52
    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->section_entry:Lcom/oculus/vrshell/panels/telemetry/Event;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/Event;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onSectionExitCallback()V
    .locals 2

    .line 57
    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->section_exit:Lcom/oculus/vrshell/panels/telemetry/Event;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/Event;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setDebugPrintingEnabled(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oculus/vrshell/panels/telemetry/TelemetryManager;->mDebugPrinting:Z

    return-void
.end method
