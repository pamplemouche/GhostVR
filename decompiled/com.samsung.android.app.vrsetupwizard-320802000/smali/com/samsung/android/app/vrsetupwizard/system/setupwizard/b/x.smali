.class public Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;


# instance fields
.field a:Landroid/content/Intent;

.field private c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;

.field private e:I

.field private f:Z

.field private g:Ljava/util/Timer;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->f:Z

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->g:Ljava/util/Timer;

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->e:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-direct {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;-><init>()V

    sput-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;->b_(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->d()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->e:I

    return p0
.end method

.method private c()V
    .locals 4

    const-string v0, "[MccTransaction] getMccCheckResultFromGalaxyAppsClient"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->e()V

    :try_start_0
    const-string v0, "[MccTransaction] Getting mcc from ODC"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->g:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/y;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/y;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MccTransaction] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->d()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1cc

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c2

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(I)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a:Landroid/content/Intent;

    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.openlib.CountrySearchExService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a:Landroid/content/Intent;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/z;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v2, "callback_messenger"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->h:Z

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MccTransaction] addDownloadInstallCallback : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "[MccTransaction] startMccTransaction"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->c()V

    return-void
.end method
