.class Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
.super Ljava/lang/Object;
.source "UploadServiceProcessUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadServiceProcessUtil"

.field static final UPLOAD_SERVICE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "UploadServiceProcessUtil.class"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mHostOfUploadService:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->UPLOAD_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private determineHostOfService(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x204

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 76
    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 77
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v3, v3, v1

    .line 78
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object p1, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 84
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 87
    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "UploadServiceProcessUtil"

    const-string v1, "Unable to find the UploadService! Services registered: %s"

    .line 84
    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 72
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized getHostOfUploadService()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mHostOfUploadService:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->UPLOAD_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->determineHostOfService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mHostOfUploadService:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mHostOfUploadService:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
    .locals 2

    const-class v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    .line 33
    :cond_0
    sget-object p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isCurrentProcessHostOfService()Z
    .locals 1

    .line 41
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->isSpecifiedProcessHostOfUploadService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isSpecifiedProcessHostOfUploadService(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->getHostOfUploadService()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
