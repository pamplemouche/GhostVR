.class final Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReportsSenderWorker"
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mGenerator:Lcom/facebook/acra/FileGenerator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReportFileUnderConstruction:Lcom/facebook/acra/Spool$FileBeingProduced;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReportTypesToSend:[Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingProduced;)V
    .locals 1
    .param p1, "this$0"    # Lcom/facebook/acra/ErrorReporter;
    .param p2, "inMemoryReportToSend"    # Lcom/facebook/acra/CrashReportData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "reportFileUnderConstruction"    # Lcom/facebook/acra/Spool$FileBeingProduced;

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingProduced;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 866
    return-void
.end method

.method private constructor <init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingProduced;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    .locals 2
    .param p1, "this$0"    # Lcom/facebook/acra/ErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "inMemoryReportToSend"    # Lcom/facebook/acra/CrashReportData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "reportFileUnderConstruction"    # Lcom/facebook/acra/Spool$FileBeingProduced;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "reportTypesToSend"    # [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .prologue
    const/4 v1, 0x0

    .line 878
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    .line 879
    const-string v0, "ReportsSenderWorker"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 852
    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    .line 853
    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mGenerator:Lcom/facebook/acra/FileGenerator;

    .line 880
    iput-object p2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

    .line 881
    iput-object p3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportFileUnderConstruction:Lcom/facebook/acra/Spool$FileBeingProduced;

    .line 882
    iput-object p4, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 883
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    .locals 1
    .param p1, "this$0"    # Lcom/facebook/acra/ErrorReporter;
    .param p2, "reportTypesToSend"    # [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .prologue
    const/4 v0, 0x0

    .line 872
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingProduced;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 873
    return-void
.end method

.method static synthetic access$1300(Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;)Lcom/facebook/acra/CrashReportData;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

    return-object v0
.end method

.method private acquireWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 950
    new-instance v0, Lcom/facebook/acra/util/PackageManagerWrapper;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->access$400(Lcom/facebook/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 951
    .local v0, "pm":Lcom/facebook/acra/util/PackageManagerWrapper;
    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v3}, Lcom/facebook/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 952
    const/4 v2, 0x0

    .line 963
    :goto_0
    return-object v2

    .line 955
    :cond_0
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    .line 956
    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->access$400(Lcom/facebook/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 957
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "ACRA wakelock"

    .line 958
    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 961
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 962
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method


# virtual methods
.method doSend()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->access$800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 891
    const/4 v2, 0x0

    .line 893
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->acquireWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 894
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

    if-nez v3, :cond_2

    .line 895
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    const v4, 0x7fffffff

    iget-object v5, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mGenerator:Lcom/facebook/acra/FileGenerator;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportTypesToSend:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/facebook/acra/ErrorReporter;->prepareReports(ILcom/facebook/acra/FileGenerator;Z[Lcom/facebook/acra/ErrorReporter$CrashReportType;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 914
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 917
    :cond_1
    return-void

    .line 903
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mInMemoryReportToSend:Lcom/facebook/acra/CrashReportData;

    .line 904
    .local v0, "crashReport":Lcom/facebook/acra/CrashReportData;
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->access$400(Lcom/facebook/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "uploadedByProcess":Ljava/lang/String;
    const-string v3, "UPLOADED_BY_PROCESS"

    invoke-virtual {v0, v3, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-static {v3, v0}, Lcom/facebook/acra/ErrorReporter;->access$100(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;)V

    .line 908
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportFileUnderConstruction:Lcom/facebook/acra/Spool$FileBeingProduced;

    if-eqz v3, :cond_0

    .line 909
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportFileUnderConstruction:Lcom/facebook/acra/Spool$FileBeingProduced;

    iget-object v3, v3, Lcom/facebook/acra/Spool$FileBeingProduced;->fileName:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 913
    .end local v0    # "crashReport":Lcom/facebook/acra/CrashReportData;
    .end local v1    # "uploadedByProcess":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 914
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    throw v3
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public routeReportToFile(Lcom/facebook/acra/FileGenerator;)V
    .locals 0
    .param p1, "generator"    # Lcom/facebook/acra/FileGenerator;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mGenerator:Lcom/facebook/acra/FileGenerator;

    .line 887
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 921
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    monitor-enter v2

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->access$908(Lcom/facebook/acra/ErrorReporter;)I

    .line 923
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->doSend()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 932
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportFileUnderConstruction:Lcom/facebook/acra/Spool$FileBeingProduced;

    invoke-static {v1, v2}, Lcom/facebook/acra/ErrorReporter;->access$1000(Lcom/facebook/acra/ErrorReporter;Ljava/io/Closeable;)V

    .line 935
    :goto_0
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    monitor-enter v2

    .line 936
    :try_start_2
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->access$910(Lcom/facebook/acra/ErrorReporter;)I

    .line 937
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 938
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->access$1100(Lcom/facebook/acra/ErrorReporter;)V

    .line 939
    return-void

    .line 923
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 927
    :catch_0
    move-exception v0

    .line 930
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_4
    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->exception:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 932
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportFileUnderConstruction:Lcom/facebook/acra/Spool$FileBeingProduced;

    invoke-static {v1, v2}, Lcom/facebook/acra/ErrorReporter;->access$1000(Lcom/facebook/acra/ErrorReporter;Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->this$0:Lcom/facebook/acra/ErrorReporter;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->mReportFileUnderConstruction:Lcom/facebook/acra/Spool$FileBeingProduced;

    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->access$1000(Lcom/facebook/acra/ErrorReporter;Ljava/io/Closeable;)V

    throw v1

    .line 937
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
