.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;
.super Lcom/oculus/vrshell/panelservice/PanelService;
.source "AnytimeUIAndroidPanelService.java"


# instance fields
.field mApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/oculus/vrshell/panelservice/PanelService;-><init>()V

    return-void
.end method

.method private showForegroundNotification()V
    .locals 3

    .line 51
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->systemux_foreground_service_notification_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x4

    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected createNativePanelAppInstance(Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")J"
        }
    .end annotation

    const-string v0, "_oc_ff:aui_v2"

    .line 32
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;

    .line 35
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeUIAndroidPanelAppV2;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->mApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;

    .line 39
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v4, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->mApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->mApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->inflateDefaultLayers()V

    .line 42
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->mApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getNativePointer()J

    move-result-wide p1

    return-wide p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "vrshellanytimeui"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    invoke-super {p0}, Lcom/oculus/vrshell/panelservice/PanelService;->onCreate()V

    .line 21
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oculus.hardware.standalone_vr"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->showForegroundNotification()V

    :cond_0
    return-void
.end method

.method protected onShellTokenReady(Landroid/os/IBinder;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelService;->mApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->onShellTokenReady(Landroid/os/IBinder;)V

    return-void
.end method
