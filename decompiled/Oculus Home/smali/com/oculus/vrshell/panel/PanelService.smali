.class public abstract Lcom/oculus/vrshell/panel/PanelService;
.super Landroid/app/Service;
.source "PanelService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;
    }
.end annotation


# static fields
.field public static final ACTIVITY_TOKEN_KEY_TOKEN:Ljava/lang/String; = "panelToken"

.field public static final CREATE_PANEL_APP_DEFAULT_SURFACE:Ljava/lang/String; = "#main"

.field public static final CREATE_PANEL_APP_KEY_BUNDLE:Ljava/lang/String; = "panelBundle"

.field public static final CREATE_PANEL_APP_KEY_FD:Ljava/lang/String; = "panelServicePFD"

.field public static final CREATE_PANEL_APP_KEY_SURFACE:Ljava/lang/String; = "panelSurface"

.field public static final CREATE_PANEL_APP_SURFACE_KEY_PREFIX:Ljava/lang/String; = "panelSurface:"

.field public static final MSG_ACTIVITY_TOKEN:I = 0x3

.field public static final MSG_CREATE_PANEL_APP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanelService"


# instance fields
.field private isDeveloperBuildAllowed:Z

.field private isGearVRDeveloperMode:Z

.field protected messenger:Landroid/os/Messenger;

.field private unlockulusFailureMessage:Ljava/lang/String;

.field private vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 146
    iput-boolean v1, p0, Lcom/oculus/vrshell/panel/PanelService;->isGearVRDeveloperMode:Z

    .line 147
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelService;->unlockulusFailureMessage:Ljava/lang/String;

    .line 148
    iput-boolean v1, p0, Lcom/oculus/vrshell/panel/PanelService;->isDeveloperBuildAllowed:Z

    .line 149
    iput-object v2, p0, Lcom/oculus/vrshell/panel/PanelService;->messenger:Landroid/os/Messenger;

    .line 150
    iput-object v2, p0, Lcom/oculus/vrshell/panel/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/panel/PanelService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/panel/PanelService;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panel/PanelService;->verifyVrShellUID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private verifyVrShellUID(I)Ljava/lang/String;
    .locals 20
    .param p1, "uid"    # I

    .prologue
    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 204
    .local v8, "startTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/vrshell/panel/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/oculus/vrshell/panel/PanelVerifier;->checkApkSignature(I)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;

    move-result-object v6

    .line 205
    .local v6, "sci":Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;
    iget-object v12, v6, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    invoke-static {v12}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    .local v5, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/vrshell/panel/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/oculus/vrshell/panel/PanelVerifier;->isVrRunnable(I)Z

    move-result v2

    .line 207
    .local v2, "isVrRunnable":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 209
    .local v10, "stopTime":J
    const-string v12, "PanelService"

    const-string v13, "verifyVrShellUID(isDeveloperBuildAllowed=%s, uid=%d) => isVrRunnable=%s, apkSignatureResult=%s, time=%d ms"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/vrshell/panel/PanelService;->isDeveloperBuildAllowed:Z

    move/from16 v16, v0

    .line 213
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 214
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 215
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v6, v14, v15

    const/4 v15, 0x4

    sub-long v16, v10, v8

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    .line 217
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    .line 211
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 209
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v12, v6, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    const-string v13, "com.oculus.vrshell"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 220
    const-string v12, "Expected connection to APK %s and got %s instead; failing authentication."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "com.oculus.vrshell"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 263
    :cond_0
    :goto_0
    return-object v4

    .line 226
    :cond_1
    iget-boolean v12, v6, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->isTrusted:Z

    if-nez v12, :cond_2

    .line 227
    const-string v12, "Expected APK %s to be signed with trusted certificate; failing authentication."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "com.oculus.vrshell"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oculus/vrshell/panel/PanelService;->isDeveloperBuildAllowed:Z

    if-nez v12, :cond_0

    .line 235
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/oculus/vrshell/panel/VerifierConstants;->getFirstPartyOculusStorePackages(Z)Ljava/util/Map;

    move-result-object v3

    .line 236
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/pm/Signature;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v12, v6, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 240
    iget-object v12, v6, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 241
    .local v7, "ss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 245
    const-string v12, "%s Enabling GearVR developer mode or fixing Unlockulus (%s) will fix this!"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oculus/vrshell/panel/PanelService;->unlockulusFailureMessage:Ljava/lang/String;

    .line 248
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 245
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 251
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/pm/Signature;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v7    # "ss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    if-nez v2, :cond_4

    .line 252
    const-string v12, "Expected APK %s to have valid OSIG; failing authentication."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "com.oculus.vrshell"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .restart local v4    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oculus/vrshell/panel/PanelService;->isGearVRDeveloperMode:Z

    if-eqz v12, :cond_3

    .line 257
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Did you forget to add your device OSIG to the assets/ directory when building it?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 260
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Enabling GearVR developer mode may fix this!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 263
    .end local v4    # "msg":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract createPanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method protected getDefaultLibraryName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/oculus/vrshell/panel/PanelService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "packageComponents":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    const-string v0, "PanelService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/oculus/vrshell/panel/PanelService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    const-string v2, "PanelService"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/panel/PanelService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vrmode_developer_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/oculus/vrshell/panel/PanelService;->isGearVRDeveloperMode:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_1
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oculus/vrshell/panel/UnlockulusVerifier;->isUnlockulusUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/vrshell/panel/PanelService;->unlockulusFailureMessage:Ljava/lang/String;

    .line 168
    iget-boolean v2, p0, Lcom/oculus/vrshell/panel/PanelService;->isGearVRDeveloperMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oculus/vrshell/panel/PanelService;->unlockulusFailureMessage:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/oculus/vrshell/panel/PanelService;->isDeveloperBuildAllowed:Z

    .line 170
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;

    iget-boolean v2, p0, Lcom/oculus/vrshell/panel/PanelService;->isGearVRDeveloperMode:Z

    invoke-direct {v1, p0, v2}, Lcom/oculus/vrshell/panel/PanelService$PanelMessageHandler;-><init>(Lcom/oculus/vrshell/panel/PanelService;Z)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelService;->messenger:Landroid/os/Messenger;

    .line 171
    new-instance v0, Lcom/oculus/vrshell/panel/PanelVerifier;

    iget-boolean v1, p0, Lcom/oculus/vrshell/panel/PanelService;->isDeveloperBuildAllowed:Z

    iget-boolean v2, p0, Lcom/oculus/vrshell/panel/PanelService;->isDeveloperBuildAllowed:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/vrshell/panel/PanelVerifier;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/oculus/vrshell/panel/PanelService;->vrShellVerifier:Lcom/oculus/vrshell/panel/PanelVerifier;

    .line 172
    return-void

    :cond_2
    move v2, v0

    .line 161
    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "PanelService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method protected onShellTokenReady(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 268
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    .line 181
    const-string v0, "PanelService"

    const-string v1, "onStartCommand(%x, %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v5
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    const-string v0, "PanelService"

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
