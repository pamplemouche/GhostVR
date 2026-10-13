.class Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "ChromecastLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/chromecast/ChromecastLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v0}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$200(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportChromecastRouteAdded()V

    .line 165
    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$302(Lcom/oculus/horizon/chromecast/ChromecastLauncher;Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/CastDevice;

    .line 173
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v1}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$300(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v1}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$400(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v0}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$200(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v1}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$500(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportChromecastUpdateNeeded(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    .line 186
    invoke-static {v1}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$600(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Landroid/content/Context;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    iget-object v2, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v2}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$300(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$700(Lcom/oculus/horizon/chromecast/ChromecastLauncher;Lcom/google/android/gms/cast/CastDevice;)V

    .line 196
    iget-object v1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v1}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$200(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$2;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v2}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$500(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportChromecastStarted(Ljava/lang/String;I)V

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 192
    const-string v2, "ChromecastLauncher"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    return-void
.end method
