.class public Lcom/oculus/browser/GatekeeperProjects;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static allDefaultValues:[Z

.field public static allProjectNames:[Ljava/lang/String;


# instance fields
.field public defaultValue:Z

.field public projectName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v8, "oculus_browser_telemetry_opt_out_setting"

    const-string v9, "oculus_browser_visualize_webui_exceptions"

    const-string v0, "oculus_browser_breakpad"

    const-string v1, "oculus_browser_collapsible_ui"

    const-string v2, "oculus_browser_dark_ui"

    const-string v3, "oculus_browser_desktop_mode_default"

    const-string v4, "oculus_browser_internal_settings_page"

    const-string v5, "oculus_browser_multi_panel"

    const-string v6, "oculus_browser_ntp_inject_popular_shelf"

    const-string v7, "oculus_browser_show_default_zoom_setting"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/browser/GatekeeperProjects;->allProjectNames:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/browser/GatekeeperProjects;->allDefaultValues:[Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/GatekeeperProjects;->projectName:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/oculus/browser/GatekeeperProjects;->defaultValue:Z

    return-void
.end method

.method public static Breakpad()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_breakpad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static CollapsibleUi()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_collapsible_ui"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static DarkUi()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_dark_ui"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static DesktopModeDefault()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_desktop_mode_default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static InternalSettingsPage()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_internal_settings_page"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static MultiPanel()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_multi_panel"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static NtpInjectPopularShelf()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_ntp_inject_popular_shelf"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static ShowDefaultZoomSetting()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_show_default_zoom_setting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static TelemetryOptOutSetting()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_telemetry_opt_out_setting"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static VisualizeWebuiExceptions()Lcom/oculus/browser/GatekeeperProjects;
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/GatekeeperProjects;

    const-string v1, "oculus_browser_visualize_webui_exceptions"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/browser/GatekeeperProjects;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public getAllDefaultValues()[Z
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/GatekeeperProjects;->allDefaultValues:[Z

    return-object v0
.end method

.method public getAllProjectNames()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/GatekeeperProjects;->allProjectNames:[Ljava/lang/String;

    return-object v0
.end method
