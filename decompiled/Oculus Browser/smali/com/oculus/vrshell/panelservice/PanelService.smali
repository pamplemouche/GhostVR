.class public Lcom/oculus/vrshell/panelservice/PanelService;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static final CREATE_PANEL_APP_KEY_BUNDLE:Ljava/lang/String; = "panelBundle"

.field public static final CREATE_PANEL_APP_KEY_FD:Ljava/lang/String; = "panelServicePFD"

.field public static final CREATE_PANEL_APP_KEY_SURFACE:Ljava/lang/String; = "panelSurface"

.field public static final MSG_ACTIVITY_TOKEN:I = 0x3

.field public static final MSG_CREATE_PANEL_APP:I = 0x2

.field public static final MSG_SOCKET_PFD:I = 0x1

.field public static final PANEL_SURFACE_KEY_PREFIX:Ljava/lang/String; = "panelSurface:"

.field public static final TAG:Ljava/lang/String; = "CppPanelService"


# instance fields
.field public isDeveloperBuildAllowed:Z

.field public isGearVRDeveloperMode:Z

.field public messenger:Landroid/os/Messenger;

.field public unlockulusFailureMessage:Ljava/lang/String;

.field public vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "cpppanelservice"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isGearVRDeveloperMode:Z

    const-string v1, "UNKNOWN"

    .line 3
    iput-object v1, p0, Lcom/oculus/vrshell/panelservice/PanelService;->unlockulusFailureMessage:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isDeveloperBuildAllowed:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->messenger:Landroid/os/Messenger;

    .line 6
    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/vrshell/panelservice/PanelService;JJI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panelservice/PanelService;->nativeInitializePanelInstance(JJI)V

    return-void
.end method

.method private native nativeInitializePanelInstance(JJI)V
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createNativePanelAppInstance(Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)J
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Panel applications should provide an instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vrmode_developer_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isGearVRDeveloperMode:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 3
    :goto_1
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oculus/vrshell/panel/UnlockulusVerifier;->isUnlockulusUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/vrshell/panelservice/PanelService;->unlockulusFailureMessage:Ljava/lang/String;

    .line 4
    iget-boolean v3, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isGearVRDeveloperMode:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isDeveloperBuildAllowed:Z

    .line 5
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/panelservice/PanelService$IncomingHandler;-><init>(Lcom/oculus/vrshell/panelservice/PanelService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->messenger:Landroid/os/Messenger;

    .line 6
    new-instance v0, Lcom/oculus/vrshell/panel/PanelVerifier;

    iget-boolean v1, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isDeveloperBuildAllowed:Z

    invoke-direct {v0, p0, v1, v1}, Lcom/oculus/vrshell/panel/PanelVerifier;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onShellTokenReady(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method

.method public shouldSimulateLegacyPanelSurfaceAux()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public verifyVrShellUID(I)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/oculus/vrshell/panelservice/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    invoke-virtual {v2, p1}, Lcom/oculus/vrshell/panel/PanelVerifier;->checkApkSignature(I)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;

    move-result-object v2

    .line 3
    iget-object v3, v2, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lcom/oculus/vrshell/panelservice/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    invoke-virtual {v4, p1}, Lcom/oculus/vrshell/panel/PanelVerifier;->isVrRunnable(I)Z

    move-result v4

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 6
    iget-boolean v8, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isDeveloperBuildAllowed:Z

    .line 7
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v8, 0x1

    aput-object p1, v7, v8

    .line 9
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x2

    aput-object p1, v7, v10

    const/4 p1, 0x3

    aput-object v2, v7, p1

    sub-long/2addr v5, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v5, v0

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v7, v0

    const-string p1, "verifyVrShellUID(isDeveloperBuildAllowed=%s, uid=%d) => isVrRunnable=%s, apkSignatureResult=%s, time=%d ms"

    .line 11
    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CppPanelService"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, v2, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    const-string v0, "com.oculus.vrshell"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v10, [Ljava/lang/Object;

    aput-object v0, p1, v9

    aput-object v3, p1, v8

    const-string v0, "Expected connection to APK %s and got %s instead; failing authentication."

    .line 14
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    iget-boolean p1, v2, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->isTrusted:Z

    if-nez p1, :cond_4

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v9

    const-string v0, "Expected %s APK to be signed with trusted certificate; failing authentication."

    .line 16
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-boolean v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isDeveloperBuildAllowed:Z

    if-eqz v0, :cond_1

    return-object p1

    .line 18
    :cond_1
    invoke-static {v8}, Lcom/oculus/vrshell/panel/VerifierConstants;->getFirstPartyOculusStorePackages(Z)Ljava/util/Map;

    move-result-object v0

    .line 19
    iget-object v1, v2, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    .line 20
    :cond_2
    iget-object v1, v2, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 21
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v9

    .line 22
    iget-object p1, p0, Lcom/oculus/vrshell/panelservice/PanelService;->unlockulusFailureMessage:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v8

    const-string p1, "%s Enabling GearVR developer mode or fixing Unlockulus (%s) will fix this!"

    .line 24
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez v4, :cond_6

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v9

    const-string v0, "Expected APK %s to have valid OSIG; failing authentication."

    .line 25
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-boolean v0, p0, Lcom/oculus/vrshell/panelservice/PanelService;->isGearVRDeveloperMode:Z

    if-eqz v0, :cond_5

    const-string v0, " Did you forget to add your device OSIG to the assets/ directory when building it?"

    .line 27
    invoke-static {p1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, " Enabling GearVR developer mode may fix this!"

    .line 28
    invoke-static {p1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method
