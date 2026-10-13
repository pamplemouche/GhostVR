.class public Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;
.super Lwa0;
.source "PG"


# static fields
.field public static final didNotLaunchBrowserCanHandle:I = 0x2

.field public static final didNotLaunchBrowserInAppMode:I = 0x3

.field public static final launchApplication:I = 0x1


# instance fields
.field public final browserLauncher:Ljava/lang/String;

.field public mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field public final oculusStoreIntentSchema:Ljava/lang/String;

.field public final storeHost:Ljava/lang/String;

.field public final storeRoute:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oculus/browser/PanelApp;

.field public final vrshellIntentaction:Ljava/lang/String;

.field public final vrshellPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelApp;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    .line 2
    invoke-direct {p0, p2}, Lwa0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    const-string p1, "com.oculus.os.vrbrowserlauncher"

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->browserLauncher:Ljava/lang/String;

    const-string p1, "oculusstore"

    .line 4
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->oculusStoreIntentSchema:Ljava/lang/String;

    const-string p1, "com.oculus.vrshell.intent.action.LAUNCH"

    .line 5
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->vrshellIntentaction:Ljava/lang/String;

    const-string p1, "com.oculus.vrshell"

    .line 6
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->vrshellPackage:Ljava/lang/String;

    const-string p1, "systemux://store"

    .line 7
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->storeRoute:Ljava/lang/String;

    const-string p1, "item"

    .line 8
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->storeHost:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public isChromeAppInForeground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldStartApp(Landroid/content/Intent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v2}, Lcom/oculus/browser/PanelApp;->access$800(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/TabModelManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/browser/TabModelManager;->isSingleTabMode()Z

    move-result v2

    const-string v3, "PanelApp"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v2

    iget-object v4, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    .line 6
    invoke-static {v4}, Lcom/oculus/browser/PanelApp;->access$000(Lcom/oculus/browser/PanelApp;)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 7
    invoke-interface {v2, v4, v5, v0, v6}, Lcom/oculus/browser/PanelApp$Natives;->reportIntentLaunchTelemetry(JLjava/lang/String;I)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent launch for schema "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lwa0;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring intent launch as not in webtask mode or tab is hidden"

    .line 11
    invoke-static {v3, v2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object p1

    iget-object v2, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    .line 13
    invoke-static {v2}, Lcom/oculus/browser/PanelApp;->access$000(Lcom/oculus/browser/PanelApp;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    .line 14
    invoke-interface {p1, v2, v3, v0, v4}, Lcom/oculus/browser/PanelApp$Natives;->reportIntentLaunchTelemetry(JLjava/lang/String;I)V

    :cond_1
    return v1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;Z)Z
    .locals 8

    const-string p2, "com.oculus.os.vrbrowserlauncher"

    const-string v0, "com.oculus.vrshell"

    const-string v1, "oculusstore"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lwa0;->getAvailableContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const-string v6, "PanelApp"

    if-eqz v4, :cond_2

    .line 4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "OculusStore intent flow"

    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v6, p2, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance p2, Landroid/content/Intent;

    const-string v3, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intent_data"

    const-string v3, "systemux://store"

    .line 10
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "item"

    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v4}, Lcom/oculus/browser/PanelApp;->access$000(Lcom/oculus/browser/PanelApp;)J

    move-result-wide v6

    invoke-interface {v3, v6, v7, v1, v5}, Lcom/oculus/browser/PanelApp$Natives;->reportIntentLaunchTelemetry(JLjava/lang/String;I)V

    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    const-string v1, "uri"

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$600(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return v5

    :cond_1
    return v2

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$800(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/TabModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->isSingleTabMode()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "In Single tab mode"

    new-array v1, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {v6, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 24
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 29
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 31
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    const/4 p2, 0x1

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_7

    const-string p2, "Allow self to open url, Browser is one of the multiple handlers. Using standard nativation"

    new-array v0, v2, [Ljava/lang/Object;

    .line 32
    invoke-static {v6, p2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object p2

    iget-object v0, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    .line 34
    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$000(Lcom/oculus/browser/PanelApp;)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 35
    invoke-interface {p2, v0, v1, v3, v4}, Lcom/oculus/browser/PanelApp$Natives;->reportIntentLaunchTelemetry(JLjava/lang/String;I)V

    return v2

    .line 36
    :cond_7
    invoke-virtual {p0, p1}, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->shouldStartApp(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v5

    :cond_8
    :goto_1
    const-string p2, "Allow self to open url, Browser is the primary handler. Using standard nativation"

    new-array v0, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {v6, p2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 38
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    :cond_a
    return v2

    .line 39
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object p2

    iget-object v0, p0, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$000(Lcom/oculus/browser/PanelApp;)J

    move-result-wide v0

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 42
    invoke-interface {p2, v0, v1, v3, v4}, Lcom/oculus/browser/PanelApp$Natives;->reportIntentLaunchTelemetry(JLjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 43
    :catch_0
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    :cond_c
    :goto_2
    return v2
.end method
