.class public Lcom/oculus/errorreporting/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonLiteralLogTagArgument"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;
    }
.end annotation


# static fields
.field private static sErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporter;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/oculus/errorreporting/ErrorReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 131
    return-void
.end method

.method private static getBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 2

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p0, p1}, Lcom/facebook/common/errorreporting/SoftError;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p2}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setCause(Ljava/lang/Throwable;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p3}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setFailHarder(Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setSamplingFrequency(I)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static getBuilder(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/oculus/errorreporting/ErrorReporter;->getBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://ghostvr.pamplemouche.com/mobile/generic_android_crash_logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/oculus/errorreporting/ErrorReporter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oculus/errorreporting/ErrorReporter;->getInstance(Ljavax/inject/Provider;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstance(Ljavax/inject/Provider;)Lcom/oculus/errorreporting/ErrorReporter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/oculus/errorreporting/ErrorReporter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    const-class v1, Lcom/oculus/errorreporting/ErrorReporter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/errorreporting/ErrorReporter;->sErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReporter;->newFbErrorReporter(Ljavax/inject/Provider;)Lcom/facebook/common/errorreporting/FbErrorReporter;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oculus/errorreporting/ErrorReporter;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    sput-object v0, Lcom/oculus/errorreporting/ErrorReporter;->sErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    .line 66
    :cond_0
    sget-object v0, Lcom/oculus/errorreporting/ErrorReporter;->sErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initCrashReporting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    invoke-static {p1}, Lcom/oculus/errorreporting/ErrorReporter;->getDefaultEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->initCrashReportingInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/acra/ErrorReporter;

    .line 164
    return-void
.end method

.method public static initCrashReporting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/inject/Provider;Ljava/util/Map;)V
    .locals 4
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/errorreporting/ErrorReporter;->initCrashReportingInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 193
    if-eqz p4, :cond_0

    .line 194
    invoke-virtual {v0, p4}, Lcom/facebook/acra/ErrorReporter;->setUserId(Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 202
    :cond_2
    invoke-static {p5}, Lcom/oculus/errorreporting/ErrorReporter;->getInstance(Ljavax/inject/Provider;)Lcom/oculus/errorreporting/ErrorReporter;

    .line 203
    return-void
.end method

.method public static initCrashReporting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/inject/Provider;Ljava/util/Map;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p1}, Lcom/oculus/errorreporting/ErrorReporter;->getDefaultEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 173
    invoke-static/range {v0 .. v6}, Lcom/oculus/errorreporting/ErrorReporter;->initCrashReporting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/inject/Provider;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method private static initCrashReportingInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/acra/ErrorReporter;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/facebook/acra/config/DefaultAcraConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/facebook/acra/config/DefaultAcraConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 208
    invoke-static {v0}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/config/AcraReportingConfig;)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 210
    const-string v1, "app"

    invoke-static {v1, p2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "fb_app_id"

    invoke-static {v1, p1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-object v0
.end method

.method private static newFbErrorReporter(Ljavax/inject/Provider;)Lcom/facebook/common/errorreporting/FbErrorReporter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/common/errorreporting/FbErrorReporter;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    invoke-static {v0}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object v1

    .line 71
    if-eqz p0, :cond_0

    .line 72
    new-instance v1, Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/oculus/errorreporting/ErrorReporter$EmployeeProvider;-><init>(Ljavax/inject/Provider;Lcom/oculus/errorreporting/ErrorReporter$1;)V

    .line 74
    :cond_0
    new-instance v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    sget-boolean v2, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/inject/util/Providers;->of(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/oculus/errorreporting/ErrorReportingExecutorFactory;->getSingleThreadExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 79
    invoke-static {}, Lcom/oculus/errorreporting/ErrorReportingExecutorFactory;->getMonotonicClock()Lcom/facebook/common/time/MonotonicClock;

    move-result-object v4

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Ljava/util/Random;)V

    .line 81
    return-object v0
.end method

.method private softReport(Lcom/facebook/common/errorreporting/SoftError;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/errorreporting/ErrorReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-interface {v0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 155
    return-void
.end method

.method public static softReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/oculus/errorreporting/ErrorReporter;->getInstance()Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/oculus/errorreporting/ErrorReporter;->getBuilder(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 107
    return-void
.end method

.method public static softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/oculus/errorreporting/ErrorReporter;->getInstance()Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/oculus/errorreporting/ErrorReporter;->getBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 112
    return-void
.end method


# virtual methods
.method public putCurrentUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oculus/errorreporting/ErrorReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-interface {v0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->putCurrentUserId(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public softError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oculus/errorreporting/ErrorReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/oculus/errorreporting/ErrorReporter;->getBuilder(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 135
    return-void
.end method

.method public softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oculus/errorreporting/ErrorReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Lcom/oculus/errorreporting/ErrorReporter;->getBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 139
    return-void
.end method

.method public softErrorWithCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oculus/errorreporting/ErrorReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/oculus/errorreporting/ErrorReporter;->getBuilder(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 143
    return-void
.end method

.method public softErrorWithCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oculus/errorreporting/ErrorReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Lcom/oculus/errorreporting/ErrorReporter;->getBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 147
    return-void
.end method
