.class Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;
.super Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.source "ShortcutInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->installShortcut(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/shortcut/ShortcutInstallerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->this$0:Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    iput-object p2, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->val$displayName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->this$0:Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    iget-object v0, v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportShortcutInstallFailed(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected onNewResultImpl(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->this$0:Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    iget-object v0, v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mIntentHelper:Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;

    iget-object v1, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->this$0:Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    iget-object v2, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->val$displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/oculus/horizon/shortcut/ShortcutIntentHelper;->installShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->this$0:Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    iget-object v0, v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportShortcutInstalled(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->this$0:Lcom/oculus/horizon/shortcut/ShortcutInstallerService;

    iget-object v0, v0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/shortcut/ShortcutInstallerService$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportShortcutInstallFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
