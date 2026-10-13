.class public abstract Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "AnytimeUIAndroidPanelAppBase.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;


# static fields
.field private static final BUG_REPORTER_ACTION_ADD_REPORT:Ljava/lang/String; = "com.oculus.horizon.vrbugreporter.action.REQUEST"

.field private static final BUG_REPORTER_SERVICE_NAME:Ljava/lang/String; = "com.oculus.horizon.vrbugreporter.BugReporterService"

.field protected static final DIALOG_LAYER:Ljava/lang/String; = "dialog"

.field private static final HORIZON_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field protected static final LEFT_HAND_LAYER:Ljava/lang/String; = "hand2"

.field protected static final RIGHT_HAND_LAYER:Ljava/lang/String; = "hand1"

.field private static final TAG:Ljava/lang/String;

.field protected static final TOOLTIP_LAYER:Ljava/lang/String; = "tooltip"

.field protected static mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;


# instance fields
.field public final config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

.field private mCurrentPartyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

.field protected final mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

.field private mIPDAdjustSkipToState:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field private mIPDAdjustState:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field protected mIsScreenLayerDialog:Z

.field private mLocalUserInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

.field protected mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

.field protected mScreenLayerDialogHeight:I

.field protected mScreenLayerDialogWidth:I

.field private mSessionsInVr:I

.field private mVoiceSetting:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 1091
    sget-object p3, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->START:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mIPDAdjustState:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 p3, 0x0

    .line 1092
    iput-boolean p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mIsScreenLayerDialog:Z

    const/16 p4, 0xb40

    .line 1093
    iput p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mScreenLayerDialogWidth:I

    const/16 p4, 0x640

    .line 1094
    iput p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mScreenLayerDialogHeight:I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->initializeCrashReporting(Landroid/app/Application;Landroid/content/Context;)V

    .line 78
    invoke-static {p2}, Lcom/oculus/os/enterprise/EnterpriseServer;->isInEnterpriseMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    new-instance p1, Lcom/oculus/panelapp/anytimeui/config/EnterpriseConfiguration;

    iget-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mEnvironmentArgs:Ljava/util/Map;

    const-string p4, "_oc_shell_enterprise_configuration_mode_index"

    const-string p5, "0"

    .line 83
    invoke-interface {p3, p4, p5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/config/EnterpriseConfiguration;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    goto :goto_3

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object p1

    sget-object p2, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    const/4 p4, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 88
    :goto_0
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;->builder()Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    move-result-object p2

    .line 89
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->setStandaloneDevice(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    move-result-object p2

    sget-object p5, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_SOCIAL_ICONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 90
    invoke-virtual {p0, p5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->setAuiSocialIconsEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    move-result-object p2

    sget-object p5, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_MESSAGES_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 91
    invoke-virtual {p0, p5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->setAuiMessagesIconEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    move-result-object p2

    if-eqz p1, :cond_2

    sget-object p5, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_SETTINGS_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 93
    invoke-virtual {p0, p5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p5, 0x1

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    .line 92
    :goto_1
    invoke-virtual {p2, p5}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->setGuardianButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    move-result-object p2

    if-eqz p1, :cond_3

    sget-object p5, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_BUTTONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 94
    invoke-virtual {p0, p5}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, 0x1

    goto :goto_2

    :cond_3
    const/4 p5, 0x0

    :goto_2
    invoke-virtual {p2, p5}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->setGuardianPillButtonsEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    move-result-object p2

    if-eqz p1, :cond_4

    sget-object p1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PASSTHROUGH_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 95
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    :cond_4
    invoke-virtual {p2, p3}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->setPassthroughButtonEnabled(Z)Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration$Builder;->build()Lcom/oculus/panelapp/anytimeui/config/ConsumerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    .line 98
    :goto_3
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;-><init>(Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 99
    invoke-virtual {p0, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->addPanelFrameCallback(Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->unhideLayer(Ljava/lang/String;)V

    return-void
.end method

.method public static getCurrentDialog()Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
    .locals 1

    .line 110
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    return-object v0
.end method

.method private initializeCrashReporting(Landroid/app/Application;Landroid/content/Context;)V
    .locals 2

    .line 1056
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->systemCrashLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    invoke-static {}, Lcom/facebook/breakpadmanager/BreakpadManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "Enabling Breakpad for Native crashes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {p2}, Lcom/facebook/breakpadmanager/BreakpadManager;->start(Landroid/content/Context;)V

    .line 1066
    :cond_0
    sget-object p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v0, "ACRA/OculusCrashReporter for Java crashes enabled"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance p2, Lcom/oculus/crashreporter/OculusCrashReporter;

    invoke-direct {p2, p1}, Lcom/oculus/crashreporter/OculusCrashReporter;-><init>(Landroid/app/Application;)V

    const-string p1, "1428395623868491"

    .line 1070
    invoke-static {p1}, Lcom/oculus/crashreporter/OculusCrashReporter;->getErrorUploadURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1068
    invoke-static {p2, v0, v1}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/reporter/ReportsCrashes;Ljava/lang/String;Z)Lcom/facebook/acra/ErrorReporter;

    move-result-object p2

    const-string v0, "app"

    const-string v1, "VrShell"

    .line 1072
    invoke-virtual {p2, v0, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "fb_app_id"

    .line 1073
    invoke-virtual {p2, v0, p1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1075
    :cond_1
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string p2, "Crash reporting disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private native nativeDialogResult(JLjava/lang/String;)V
.end method

.method private native nativeGetPermissions(J)V
.end method

.method private native nativeGuardianCollapseToggle(JZ)V
.end method

.method private native nativePauseVideo(J)V
.end method

.method private native nativePlayVideo(JLjava/lang/String;)V
.end method

.method private native nativeQuitAndHide(J)V
.end method

.method private native nativeReorient(J)V
.end method

.method private native nativeResumeVideo(J)V
.end method

.method private native nativeSetBackground(JLjava/lang/String;)V
.end method

.method private native nativeSetBrightness(JI)V
.end method

.method private native nativeSetControllerVisibility(JZ)V
.end method

.method private native nativeSetCursorVisibility(JZ)V
.end method

.method private native nativeSetPendingNavigation(JLjava/lang/String;Ljava/lang/String;J)V
.end method

.method private native nativeSetPendingStoreAppLaunch(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetRoute(JLjava/lang/String;)V
.end method

.method private native nativeSetVolumeLayerEnabled(JZ)V
.end method

.method private native nativeStopVideoCapture(J)V
.end method

.method private native nativeTimestamp()J
.end method

.method private setIsScreenLayerDialog(Z)V
    .locals 2

    .line 1023
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mIsScreenLayerDialog:Z

    .line 1024
    sget p1, Lcom/oculus/panelapp/anytimeui/R$layout;->ipd_adjust_dialog:I

    const-string v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->ensurePanelLayer(Ljava/lang/String;ILcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    return-void
.end method

.method private systemCrashLoggingEnabled()Z
    .locals 3

    .line 1034
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 1036
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    const-string v2, "crash_reports_enabled"

    .line 1037
    invoke-virtual {v0, v2, v1}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public actionDialogResult(Ljava/lang/String;)V
    .locals 3

    .line 451
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionHideDialog - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeDialogResult(JLjava/lang/String;)V

    return-void
.end method

.method public actionGetPermissions()V
    .locals 2

    .line 457
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "actionGetPermissions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeGetPermissions(J)V

    return-void
.end method

.method public actionGuardianCollapseToggle(Z)V
    .locals 2

    .line 298
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeGuardianCollapseToggle(JZ)V

    return-void
.end method

.method public actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V
    .locals 0

    .line 240
    invoke-virtual {p1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public actionNavigate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 251
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionNavigate - App:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Uri:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long v9, v0, v2

    .line 253
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v5

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetPendingNavigation(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public actionPauseVideo()V
    .locals 2

    .line 473
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "actionPauseVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativePauseVideo(J)V

    return-void
.end method

.method public actionPlayVideo(Ljava/lang/String;)V
    .locals 3

    .line 467
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionPlayVideo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativePlayVideo(JLjava/lang/String;)V

    return-void
.end method

.method public actionQuitAndHide()V
    .locals 2

    .line 440
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "actionQuitAndHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeQuitAndHide(J)V

    return-void
.end method

.method public actionReorient()V
    .locals 2

    .line 278
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "actionReorient BedMode "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeReorient(J)V

    return-void
.end method

.method public actionResumeVideo()V
    .locals 2

    .line 479
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "actionResumeVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeResumeVideo(J)V

    return-void
.end method

.method public actionSetBackground(Ljava/lang/String;)V
    .locals 3

    .line 485
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSetBackground - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetBackground(JLjava/lang/String;)V

    return-void
.end method

.method public actionSetBrightness(I)V
    .locals 3

    .line 288
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSetBrightness - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetBrightness(JI)V

    return-void
.end method

.method public actionSetControllerVisibility(Z)V
    .locals 3

    .line 317
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSetControllerVisibility - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetControllerVisibility(JZ)V

    return-void
.end method

.method public actionSetCursorVisibility(Z)V
    .locals 3

    .line 327
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSetCursorVisibility - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetCursorVisibility(JZ)V

    return-void
.end method

.method public actionSetRoute(Lcom/oculus/vrshell/SystemUXRoute;)V
    .locals 3

    .line 229
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSetRoute - Route:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetRoute(JLjava/lang/String;)V

    return-void
.end method

.method public actionSetVolumeLayerEnabled(Z)V
    .locals 3

    .line 307
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSetVolumeLayerEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetVolumeLayerEnabled(JZ)V

    return-void
.end method

.method public actionStopVideoCapture()V
    .locals 2

    .line 333
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "actionStopVideoCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeStopVideoCapture(J)V

    return-void
.end method

.method public actionStoreAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 265
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionStoreAppLaunch - Package Name:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "App ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Deeplink:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeSetPendingStoreAppLaunch(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public configureDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 763
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureDialog:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {p1}, Lcom/oculus/vrshell/SystemUXRoute;->fromPath(Ljava/lang/String;)Lcom/oculus/vrshell/SystemUXRoute;

    move-result-object p1

    .line 766
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetRoute(Lcom/oculus/vrshell/SystemUXRoute;)V

    .line 769
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    const-string v1, "com.oculus.MontereySetup"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->setNUXMode(Z)V

    .line 771
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->NONE:Lcom/oculus/vrshell/SystemUXRoute;

    const-string v1, "dialog"

    if-ne p1, v0, :cond_0

    .line 772
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->hideLayer(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 773
    sput-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetViewIdForRoute(Lcom/oculus/vrshell/SystemUXRoute;)I

    move-result v0

    .line 778
    new-instance v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0, v1, v0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->ensurePanelLayer(Ljava/lang/String;ILcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    .line 810
    iget-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    .line 811
    invoke-virtual {p3, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetResizeBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    move-result-object p3

    .line 810
    invoke-virtual {p0, p1, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->attachResizeLayoutListener(Lcom/oculus/vrshell/panels/AndroidPanelLayer;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;)V

    .line 813
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    sput-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    .line 816
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    instance-of p1, p1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    if-eqz p1, :cond_1

    .line 817
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;

    invoke-direct {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;-><init>()V

    .line 818
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.oculus.updater.STATE_NOTIFICATION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->requestOTAStatusUpdate(Landroid/content/Context;)V

    .line 826
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    if-eqz p1, :cond_2

    .line 827
    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateDialogComponent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public configureHandLayer(Ljava/lang/String;)V
    .locals 5

    .line 678
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureHandLayer: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "hand2"

    const-string v2, "hand1"

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 682
    invoke-virtual {p0, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->hideLayer(Ljava/lang/String;)V

    .line 684
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 685
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->hideLayer(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_1
    invoke-static {p1}, Lcom/oculus/vrshell/SystemUXRoute;->fromPath(Ljava/lang/String;)Lcom/oculus/vrshell/SystemUXRoute;

    move-result-object v0

    .line 689
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    invoke-virtual {v3, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetViewIdForRoute(Lcom/oculus/vrshell/SystemUXRoute;)I

    move-result v3

    .line 690
    sget-object v4, Lcom/oculus/vrshell/SystemUXRoute;->GUARDIAN_RIGHT_HAND_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    if-ne v0, v4, :cond_2

    move-object v1, v2

    .line 695
    :cond_2
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0, v1, v3, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->ensurePanelLayer(Ljava/lang/String;ILcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    :cond_3
    :goto_0
    return-void
.end method

.method protected createNativeInstance()J
    .locals 2

    const-wide/16 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public destroy()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->destroy()V

    .line 106
    invoke-super {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->destroy()V

    return-void
.end method

.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public getCurrentPartyInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentPartyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    return-object v0
.end method

.method public getDialogConstants()Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mDialogConstants:Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    return-object v0
.end method

.method public getIPDAdjustSkipToState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mIPDAdjustSkipToState:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    return-object v0
.end method

.method public getIPDAdjustState()Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mIPDAdjustState:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    return-object v0
.end method

.method public getLocalUserInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mLocalUserInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    return-object v0
.end method

.method protected abstract getMainLayerSpec()Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
.end method

.method public getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    return-object v0
.end method

.method protected getRequiresActivityToken()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getReturnComponent()Ljava/lang/String;
.end method

.method public abstract getRouteName()Ljava/lang/String;
.end method

.method public getVoiceSetting()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mVoiceSetting:Ljava/lang/String;

    return-object v0
.end method

.method public hideTooltip()V
    .locals 2

    .line 867
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v1, "hideTooltip (configuring Android tooltip view)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tooltip"

    .line 868
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->hideLayer(Ljava/lang/String;)V

    return-void
.end method

.method public isSocialIconsEnabled()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->hasAuiSocialIcons:Z

    return v0
.end method

.method public launchNotifIntent()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->launchNotifIntent()V

    return-void
.end method

.method public logButtonClick(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 948
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 958
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 959
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 962
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "button_id"

    aput-object v4, p1, v0

    const/4 v0, 0x1

    aput-object v1, p1, v0

    const-string v0, "oculus_vrshell_aui_button_press"

    .line 961
    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeTelemetry(JLjava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public logNotificationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "none"

    if-eqz p1, :cond_0

    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 927
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object p2, v0

    :cond_3
    if-eqz p3, :cond_5

    .line 928
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 931
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide v1

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "action"

    aput-object v4, p3, v3

    const/4 v3, 0x1

    aput-object p1, p3, v3

    const/4 p1, 0x2

    const-string v3, "package"

    aput-object v3, p3, p1

    const/4 p1, 0x3

    aput-object p2, p3, p1

    const/4 p1, 0x4

    const-string p2, "tag"

    aput-object p2, p3, p1

    const/4 p1, 0x5

    aput-object v0, p3, p1

    const-string p1, "oculus_vrshell_aui_notif_action"

    .line 930
    invoke-virtual {p0, v1, v2, p1, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->nativeTelemetry(JLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 973
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    .line 974
    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 975
    aput-object p1, v0, v2

    .line 977
    :goto_0
    array-length p1, p2

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, v1, 0x2

    .line 978
    aget-object v2, p2, v1

    aput-object v2, v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "oculus_aui_party"

    .line 981
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected native nativeCreateInstance(JJ)J
.end method

.method public onBeginFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public onDevicePreferences(Ljava/lang/String;I)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mVoiceSetting:Ljava/lang/String;

    .line 915
    iput p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mSessionsInVr:I

    return-void
.end method

.method public onEndFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public onGatekeeperUpdated(Ljava/lang/String;Z)V
    .locals 4

    .line 881
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz p2, :cond_0

    const-string v2, "pass"

    goto :goto_0

    :cond_0
    const-string v2, "fail"

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onGatekeeperUpdated: %s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "oculus_vrshell_core_debug_panel"

    .line 882
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 883
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->status_bar:I

    .line 884
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;

    if-eqz p2, :cond_1

    .line 886
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->enableDebugIcon()V

    goto :goto_1

    .line 888
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarView;->disableDebugIcon()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPermissions(ZZZZZZ)V
    .locals 9

    const-string v0, "dialog"

    .line 728
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 731
    instance-of v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    if-eqz v1, :cond_0

    .line 732
    new-instance v1, Lcom/oculus/vrshell/ShellPermissions;

    move-object v2, v1

    move v3, p2

    move v4, p5

    move v5, p3

    move v6, p6

    move v7, p1

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/oculus/vrshell/ShellPermissions;-><init>(ZZZZZZ)V

    .line 742
    new-instance p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;

    invoke-direct {p1, p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Landroid/view/View;Lcom/oculus/vrshell/ShellPermissions;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onVideoStatus(Ljava/lang/String;)V
    .locals 2

    .line 900
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    instance-of v1, v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener;

    if-eqz v1, :cond_0

    .line 901
    check-cast v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener;

    .line 902
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->getFromString(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener;->onVideoStatus(Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->pause()V

    .line 181
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    instance-of v1, v0, Lcom/oculus/panelapp/anytimeui/MountedStateListener;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lcom/oculus/panelapp/anytimeui/MountedStateListener;

    invoke-interface {v0}, Lcom/oculus/panelapp/anytimeui/MountedStateListener;->onBackground()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 188
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentDialog:Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    instance-of v1, v0, Lcom/oculus/panelapp/anytimeui/MountedStateListener;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Lcom/oculus/panelapp/anytimeui/MountedStateListener;

    invoke-interface {v0}, Lcom/oculus/panelapp/anytimeui/MountedStateListener;->onForeground()V

    :cond_0
    return-void
.end method

.method public setIPDAdjustSkipToState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mIPDAdjustSkipToState:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    return-void
.end method

.method public setIPDAdjustState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V
    .locals 2

    .line 990
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mIPDAdjustState:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    if-nez p2, :cond_0

    return-void

    .line 998
    :cond_0
    sget-object p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$5;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$IPDAdjustDialog$IPDAdjustState:[I

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    .line 1010
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown IPD adjust dialog state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/4 p1, 0x0

    .line 1007
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->setIsScreenLayerDialog(Z)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 1001
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->setIsScreenLayerDialog(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTaskBarState(I)V
    .locals 3

    .line 614
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskBarState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->setTaskBarState(I)V

    return-void
.end method

.method public showTooltip(Ljava/lang/String;)V
    .locals 3

    .line 839
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "showTooltip (configuring Android tooltip view) - %s"

    .line 841
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 839
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$4;

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$4;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Ljava/lang/String;)V

    const-string p1, "tooltip"

    const/4 v1, -0x1

    .line 856
    invoke-virtual {p0, p1, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->ensurePanelLayer(Ljava/lang/String;ILcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    return-void
.end method

.method public submitGuardianSurvey(Ljava/lang/String;ZZZZZZ)V
    .locals 14

    move-object v0, p1

    .line 353
    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v2, "submitGuardianSurvey (submitting guardian setup survey)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.vrbugreporter.BugReporterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyymmddhhmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Guardian Setup Relocalization Survey\n\nActiveMapId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nBug ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nSurvey Version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n\nSurvey Results:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Something else went wrong. "

    const-string v6, "[YES]\n"

    const-string v7, "[NO]\n"

    if-eqz p2, :cond_4

    .line 370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Setup was manually triggered\n"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "You want to correct the floor height. "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    move-object v3, v6

    goto :goto_0

    :cond_0
    move-object v3, v7

    :goto_0
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "The Guardian boundary moved from its original position. "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    move-object v3, v7

    :goto_1
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "You want to change the previous Guardian size. "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2

    move-object v3, v6

    goto :goto_2

    :cond_2
    move-object v3, v7

    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v7

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "manual_"

    goto/16 :goto_8

    .line 378
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Setup was triggered due to mapId not being found\n"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "I am setting up Guardian in a new room. "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    move-object v3, v6

    goto :goto_4

    :cond_5
    move-object v3, v7

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "I setup Guardian in this room previously and lighting has changed since then. "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_6

    move-object v3, v6

    goto :goto_5

    :cond_6
    move-object v3, v7

    :goto_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "I setup Guardian in this room previously and I am standing outside of the Guardian boundary that was previously setup. "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_7

    move-object v3, v6

    goto :goto_6

    :cond_7
    move-object v3, v7

    :goto_6
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_8

    goto :goto_7

    :cond_8
    move-object v6, v7

    :goto_7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "failed_"

    :goto_8
    const/16 v6, 0x12

    .line 390
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "version"

    aput-object v8, v6, v7

    .line 392
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string v8, "bug_id"

    aput-object v8, v6, v4

    if-eqz p7, :cond_9

    move-object v8, v2

    goto :goto_9

    :cond_9
    const-string v8, "not_available"

    :goto_9
    const/4 v10, 0x3

    aput-object v8, v6, v10

    const/4 v8, 0x4

    const-string v11, "map_id"

    aput-object v11, v6, v8

    const/4 v8, 0x5

    aput-object v0, v6, v8

    const/4 v0, 0x6

    const-string v8, "was_manual"

    aput-object v8, v6, v0

    const/4 v0, 0x7

    const-string v8, "true"

    const-string v11, "false"

    if-eqz p2, :cond_a

    move-object v12, v8

    goto :goto_a

    :cond_a
    move-object v12, v11

    :goto_a
    aput-object v12, v6, v0

    const/16 v0, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "option0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v0

    const/16 v0, 0x9

    if-eqz p3, :cond_b

    move-object v12, v8

    goto :goto_b

    :cond_b
    move-object v12, v11

    :goto_b
    aput-object v12, v6, v0

    const/16 v0, 0xa

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "option1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v0

    const/16 v0, 0xb

    if-eqz p4, :cond_c

    move-object v12, v8

    goto :goto_c

    :cond_c
    move-object v12, v11

    :goto_c
    aput-object v12, v6, v0

    const/16 v0, 0xc

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "option2"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v0

    const/16 v0, 0xd

    if-eqz p5, :cond_d

    move-object v12, v8

    goto :goto_d

    :cond_d
    move-object v12, v11

    :goto_d
    aput-object v12, v6, v0

    const/16 v0, 0xe

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "option3"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v0

    const/16 v0, 0xf

    if-eqz p6, :cond_e

    move-object v5, v8

    goto :goto_e

    :cond_e
    move-object v5, v11

    :goto_e
    aput-object v5, v6, v0

    const/16 v0, 0x10

    const-string v5, "allow_vision_info"

    aput-object v5, v6, v0

    const/16 v0, 0x11

    if-eqz p7, :cond_f

    goto :goto_f

    :cond_f
    move-object v8, v11

    :goto_f
    aput-object v8, v6, v0

    const-string v0, "oculus_vrshell_guardian_reloc_survey"

    move-object v5, p0

    .line 411
    invoke-virtual {p0, v0, v6}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p7, :cond_10

    .line 415
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.oculus.horizon.vrbugreporter.action.REQUEST"

    .line 416
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "BugReportId"

    .line 418
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "BugReportDetails"

    .line 419
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "AddVisionLogs"

    .line 420
    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 423
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    const-string v6, "\nPosting bug report to %s\nbugID: %s\ntext:\n %s"

    new-array v8, v10, [Ljava/lang/Object;

    .line 427
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    aput-object v2, v8, v9

    aput-object v3, v8, v4

    .line 425
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 423
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    .line 429
    :catch_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    .line 433
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    aput-object v2, v6, v9

    aput-object v3, v6, v4

    const-string v1, "\nFailed to post bug report to %s with bugID %s and text %s"

    .line 431
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public abstract updateActiveComponent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public updateBrightness(I)V
    .locals 3

    .line 499
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBrightness - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateBrightness(I)V

    return-void
.end method

.method public updateCaptureAllowed(ZZ)V
    .locals 3

    .line 522
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCaptureAllowed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " capturing - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateCaptureAllowed(ZZ)V

    return-void
.end method

.method public updateControllerBattery(Ljava/lang/String;I)V
    .locals 3

    .line 626
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateControllerBattery - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " percent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    .line 627
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 628
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateControllerBattery(Ljava/lang/String;F)V

    return-void
.end method

.method public updateDoNotDisturbMode(Z)V
    .locals 3

    .line 510
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDoNotDisturbMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateDoNotDisturbMode(Z)V

    return-void
.end method

.method public updateGuardianStatus(ZIZ)V
    .locals 3

    .line 572
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGuardianStatus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateGuardianStatus(ZIZ)V

    return-void
.end method

.method public updateLiveStreamStatus(ZZ)V
    .locals 3

    .line 545
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLiveStreamStatus - isLiveStreaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateLiveStreamStatus(ZZ)V

    return-void
.end method

.method public updateLocalStreamState(Z)V
    .locals 3

    .line 533
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalStreamState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateLocalStreamState(Z)V

    return-void
.end method

.method public abstract updateNavigationState(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public updateParty(Ljava/lang/String;)V
    .locals 1

    .line 657
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-direct {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentPartyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    const-string p1, "dialog"

    .line 659
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 662
    instance-of v0, p1, Lcom/oculus/panelapp/anytimeui/PartyUpdateListener;

    if-eqz v0, :cond_0

    .line 663
    check-cast p1, Lcom/oculus/panelapp/anytimeui/PartyUpdateListener;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentPartyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-interface {p1, v0}, Lcom/oculus/panelapp/anytimeui/PartyUpdateListener;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mCurrentPartyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V

    return-void
.end method

.method public updateUserInfo(Ljava/lang/String;)V
    .locals 1

    .line 638
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    invoke-direct {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mLocalUserInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    const-string p1, "dialog"

    .line 639
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 642
    instance-of v0, p1, Lcom/oculus/panelapp/anytimeui/LocalUserInfoListener;

    if-eqz v0, :cond_0

    .line 643
    check-cast p1, Lcom/oculus/panelapp/anytimeui/LocalUserInfoListener;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mLocalUserInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    invoke-interface {p1, v0}, Lcom/oculus/panelapp/anytimeui/LocalUserInfoListener;->setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V

    .line 647
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mLocalUserInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V

    return-void
.end method

.method public updateVideoCaptureState(Z)V
    .locals 3

    .line 558
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoCaptureState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->mMainView:Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->updateVideoCaptureState(Z)V

    return-void
.end method
