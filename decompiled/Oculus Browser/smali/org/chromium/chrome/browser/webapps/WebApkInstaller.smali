.class public Lorg/chromium/chrome/browser/webapps/WebApkInstaller;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public final b:LaP0;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;->a:J

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;->b:LaP0;

    return-void

    .line 4
    :cond_0
    throw p2
.end method

.method private checkFreeSpace()V
    .locals 2

    .line 1
    new-instance v0, LiP0;

    invoke-direct {v0, p0}, LiP0;-><init>(Lorg/chromium/chrome/browser/webapps/WebApkInstaller;)V

    sget-object v1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {v0, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/webapps/WebApkInstaller;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;-><init>(J)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;->a:J

    return-void
.end method

.method private installWebApkAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {p2, p1}, LYT;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;->a(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;->a(I)V

    const-string p2, "WebApk.Install.GooglePlayInstallResult"

    const/16 p3, 0x10

    .line 5
    invoke-static {p2, p1, p3}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private updateAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebApkInstaller;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MQ3SBZxh(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method
