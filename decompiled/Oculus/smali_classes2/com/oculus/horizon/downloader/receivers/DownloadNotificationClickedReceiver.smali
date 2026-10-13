.class public Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "DownloadNotificationClickedReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mAppContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;

    sput-object v0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)Lcom/facebook/inject/InjectionContext;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->mAppContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 4

    .prologue
    .line 31
    invoke-static {p1, p0}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)V

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "extra_click_download_ids"

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 57
    sget-object v1, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->TAG:Ljava/lang/Class;

    const-string v2, "Download notification clicked, downloadIds: %s"

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    new-instance v1, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;-><init>(Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;Landroid/content/Context;[J)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
