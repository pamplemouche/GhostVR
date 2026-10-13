.class Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
.super Ljava/lang/Object;
.source "UploadServiceProcessUtil.java"


# static fields
.field static final UPLOAD_SERVICE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "UploadServiceProcessUtil.class"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mHostOfUploadService:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->UPLOAD_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private determineHostOfService(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x204

    .line 70
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 101
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_4

    move v0, v1

    .line 102
    :goto_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 103
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v4, v4, v0

    .line 104
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 117
    :goto_1
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 81
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 85
    :cond_0
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1

    .line 86
    const-string v0, "UploadServiceProcessUtil"

    const-string v3, "DeadObjectException when trying to get package manager from context"

    invoke-static {v0, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 87
    goto :goto_1

    .line 89
    :cond_1
    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "UploadServiceProcessUtil"

    const-string v3, "TransactionTooLargeException Exception when trying to get package manager from context"

    invoke-static {v0, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 95
    goto :goto_1

    .line 98
    :cond_2
    throw v1

    .line 102
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_4
    const-string v0, "UploadServiceProcessUtil"

    const-string v4, "Unable to find the UploadService! Services registered: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 113
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 110
    invoke-static {v0, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 117
    goto :goto_1
.end method

.method private declared-synchronized getHostOfUploadService()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mHostOfUploadService:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->UPLOAD_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->determineHostOfService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mHostOfUploadService:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->mHostOfUploadService:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
    .locals 3

    .prologue
    .line 32
    const-class v1, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;

    .line 35
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isCurrentProcessHostOfService()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->isSpecifiedProcessHostOfUploadService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isSpecifiedProcessHostOfUploadService(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadServiceProcessUtil;->getHostOfUploadService()Ljava/lang/String;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
