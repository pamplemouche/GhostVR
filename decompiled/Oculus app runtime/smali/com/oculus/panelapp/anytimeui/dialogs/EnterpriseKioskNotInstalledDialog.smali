.class public final Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "EnterpriseKioskNotInstalledDialog.java"


# static fields
.field private static final CHECK_KIOSK_APP_INSTALLED_INTERVAL_MS:I = 0x3a98

.field private static final ENVIRONMENT_ARG_ENTERPRISE_CONFIGURATION_MODE_INDEX:Ljava/lang/String; = "_oc_shell_enterprise_configuration_mode_index"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mModeIndex:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->TAG:Ljava/lang/String;

    const-string v0, "EnterpriseKioskNotInstalledDialog dialog constructed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mModeIndex:I

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimer:Ljava/util/Timer;

    .line 47
    new-instance p1, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;

    invoke-direct {p1, p0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->cleanUpTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->kioskAppIsInstalled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->cleanUpAndDismissDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cleanUpAndDismissDialog()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->cleanUpTimer()V

    .line 96
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "env resetBackground"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueRawCommand(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private cleanUpTimer()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 88
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimerTask:Ljava/util/TimerTask;

    .line 90
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method private kioskAppIsInstalled()Z
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->isInEnterpriseMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->getConfiguration(Landroid/content/Context;)Lcom/oculus/os/enterprise/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Configuration;->getModes()[Lcom/oculus/os/enterprise/Mode;

    move-result-object v0

    iget v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mModeIndex:I

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Mode;->getDefaultApplication()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method private onConfigureClicked()V
    .locals 3

    .line 102
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->cleanUpAndDismissDialog()V

    .line 105
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->ENTERPRISE_KEYPAD:Lcom/oculus/vrshell/SystemUXRoute;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 8

    .line 70
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBackground(Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "_oc_shell_enterprise_configuration_mode_index"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mModeIndex:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :cond_0
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->enterprise_kiosk_not_installed_link:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/-$$Lambda$EnterpriseKioskNotInstalledDialog$7xW5h_uj9nGHV2IFSEMf4FLFTKU;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/-$$Lambda$EnterpriseKioskNotInstalledDialog$7xW5h_uj9nGHV2IFSEMf4FLFTKU;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3a98

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public synthetic lambda$initialize$8$EnterpriseKioskNotInstalledDialog(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseKioskNotInstalledDialog;->onConfigureClicked()V

    return-void
.end method
