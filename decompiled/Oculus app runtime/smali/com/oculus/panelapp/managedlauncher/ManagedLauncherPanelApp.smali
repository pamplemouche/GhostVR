.class public final Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "ManagedLauncherPanelApp.java"


# static fields
.field private static final MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final OVERRIDE_CONFIG_FILE:Ljava/lang/String; = "/sdcard/Oculus/demo_apps.config"

.field private static TAG:Ljava/lang/String; = null

.field private static final UNLOCK_TIMER_DURATION:I = 0x1388


# instance fields
.field private mMainView:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

.field private final unlockTimerFrameCallback:Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;

.field private unlockTimerStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    const-class v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->TAG:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/managedlauncher/R$style;->PanelAppTheme:I

    const-string v2, "#main"

    const/16 v3, 0x2b8

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 0
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

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 38
    new-instance p1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;)V

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->unlockTimerFrameCallback:Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;

    .line 72
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->unlockTimerFrameCallback:Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->addPanelFrameCallback(Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->unlockTimerStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;J)J
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->unlockTimerStartTime:J

    return-wide p1
.end method

.method private loadConfig(Landroid/content/Context;)Lcom/oculus/panelapp/managedlauncher/Config;
    .locals 6

    .line 133
    invoke-static {p1}, Lcom/oculus/os/enterprise/EnterpriseServer;->isInEnterpriseMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/Config;->readEnterprise(Landroid/content/Context;)Lcom/oculus/panelapp/managedlauncher/Config;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Oculus/demo_apps.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 138
    sget-object v2, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->TAG:Ljava/lang/String;

    const-string v4, "Reading config from file /sdcard/Oculus/demo_apps.config"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 140
    :try_start_1
    invoke-static {v2}, Lcom/oculus/panelapp/managedlauncher/Config;->read(Ljava/io/InputStream;)Lcom/oculus/panelapp/managedlauncher/Config;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    :goto_0
    if-eqz v4, :cond_1

    .line 141
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 142
    sget-object v2, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/managedlauncher/R$raw;->fallback_apps:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 146
    :try_start_7
    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/Config;->read(Ljava/io/InputStream;)Lcom/oculus/panelapp/managedlauncher/Config;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_3

    .line 147
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v3

    .line 145
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v3, :cond_4

    .line 147
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_3

    :catch_4
    move-exception p1

    :try_start_b
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_3
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception p1

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private native nativeCreateInstance(JJ)J
.end method

.method private native nativeUnlock(J)V
.end method

.method private native nativeUnlockGuardian(J)V
.end method


# virtual methods
.method protected createNativeInstance()J
    .locals 4

    .line 77
    sget-object v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    int-to-long v0, v0

    sget-object v2, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v2, v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 102
    sget-object v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2203c5c

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "#main"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-nez p2, :cond_3

    .line 107
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->mMainView:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    if-nez p1, :cond_2

    .line 113
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/managedlauncher/R$layout;->managed_launcher_panel:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->mMainView:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    .line 114
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->mMainView:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-direct {p0, p3}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->loadConfig(Landroid/content/Context;)Lcom/oculus/panelapp/managedlauncher/Config;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->initialize(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;Lcom/oculus/panelapp/managedlauncher/Config;)V

    .line 116
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->mMainView:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    return-object p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown layerName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 0

    .line 82
    sget-object p1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1
.end method

.method public onBackground()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->mMainView:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->onBackground()V

    :cond_0
    return-void
.end method

.method public onForeground()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->mMainView:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->onForeground()V

    :cond_0
    return-void
.end method

.method unlock()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->nativeUnlock(J)V

    return-void
.end method

.method unlockGuardian()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->nativeUnlockGuardian(J)V

    return-void
.end method
