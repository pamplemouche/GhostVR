.class public Lcom/oculus/horizon/shortcut/ShortcutInstallerService;
.super Landroid/app/IntentService;
.source "ShortcutInstallerService.java"

# interfaces
.implements Lcom/facebook/common/callercontext/CallerContextable;


# static fields
.field private static final CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mIntentHelper:Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/shortcut/ShortcutInstallerService;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/shortcut/ShortcutInstallerService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/shortcut/ShortcutInstallerService;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;->$ul_$xXXcom_oculus_horizon_shortcut_ShortcutIntentHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mIntentHelper:Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;

    invoke-static {p0}, Lcom/oculus/horizon/fresco/FrescoModule;->$ul_$xXXcom_facebook_imagepipeline_core_ImagePipeline$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    .line 35
    invoke-static {v0}, Lcom/facebook/common/callercontext/CallerContext;->fromClass(Ljava/lang/Class;)Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

    .line 37
    const-class v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "ShortcutInstallerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private installShortcut(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent is missing extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "icon_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    .line 89
    :cond_1
    sget-object v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent is missing package_name or icon_uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    const-string v3, "display_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 95
    const/high16 v4, 0x1050000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 97
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    new-instance v4, Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-direct {v4, v3, v3}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    .line 98
    invoke-virtual {v2, v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    sget-object v4, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

    .line 101
    invoke-virtual {v3, v2, v4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v2

    new-instance v3, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;-><init>(Lcom/oculus/horizon/shortcut/ShortcutInstallerService;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 102
    invoke-interface {v2, v3, v0}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method private uninstallShortcut(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent is missing extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-nez v1, :cond_1

    .line 132
    sget-object v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent is missing package_name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    const-string v2, "display_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mIntentHelper:Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;

    invoke-virtual {v2, p0, v1, v0}, Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;->uninstallShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportShortcutUninstalled(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportShortcutUninstallFailed(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 32
    invoke-static {p0, p0}, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/shortcut/ShortcutInstallerService;)V

    .line 62
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 66
    const-string v0, "com.oculus.horizon.intent.action.INSTALL_SHORTCUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->installShortcut(Landroid/content/Intent;)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "com.oculus.horizon.intent.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0, p1}, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->uninstallShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized intent action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
