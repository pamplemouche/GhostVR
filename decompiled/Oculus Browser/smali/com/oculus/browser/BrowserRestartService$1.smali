.class public Lcom/oculus/browser/BrowserRestartService$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/BrowserRestartService;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$restartIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/BrowserRestartService;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/BrowserRestartService$1;->this$0:Lcom/oculus/browser/BrowserRestartService;

    iput-object p2, p0, Lcom/oculus/browser/BrowserRestartService$1;->val$restartIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/oculus/browser/BrowserRestartService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/BrowserRestartService$1;->this$0:Lcom/oculus/browser/BrowserRestartService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "Restart intent is sent for "

    .line 2
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrowserRestartService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/BrowserRestartService$1;->val$restartIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.vrshell"

    const-string v4, "com.oculus.vrshell.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/oculus/browser/BrowserRestartService$1;->val$restartIntent:Landroid/content/Intent;

    const-string v2, "apk://"

    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/oculus/browser/BrowserRestartService$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/browser/BrowserRestartService$1;->val$restartIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object v0, p0, Lcom/oculus/browser/BrowserRestartService$1;->this$0:Lcom/oculus/browser/BrowserRestartService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
