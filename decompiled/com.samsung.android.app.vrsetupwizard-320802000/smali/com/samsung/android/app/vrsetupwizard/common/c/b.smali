.class public Lcom/samsung/android/app/vrsetupwizard/common/c/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "[ExtukManager]"

.field private static volatile b:Lcom/samsung/android/app/vrsetupwizard/common/c/b;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->e:Z

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/c/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/c/b;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/c/b;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->f:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method public static a()Lcom/samsung/android/app/vrsetupwizard/common/c/b;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    invoke-direct {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;-><init>()V

    sput-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/b;

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
    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->e:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "460"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "461"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->c:Landroid/content/Context;

    const-string v1, "com.samsung.android.deviceidservice"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->b(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "init()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->e:Z

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->b()V

    return-void
.end method
