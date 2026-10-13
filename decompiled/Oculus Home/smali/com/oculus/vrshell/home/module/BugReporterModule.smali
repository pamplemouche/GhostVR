.class Lcom/oculus/vrshell/home/module/BugReporterModule;
.super Ljava/lang/Object;
.source "BugReporterModule.java"


# static fields
.field private static final BUG_REPORTER_ACTION_ADD_DETAILS:Ljava/lang/String; = "com.oculus.horizon.vrbugreporter.action.ADD_DETAILS"

.field private static final BUG_REPORTER_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final BUG_REPORTER_SERVICE_NAME:Ljava/lang/String; = "com.oculus.horizon.vrbugreporter.BugReporterService"

.field private static final CORE_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field private static MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/String;

    const-string v1, "BugReporter"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/module/BugReporterModule;->MODULE_NAME:Ljava/lang/String;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oculus.horizon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oculus.mediaplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oculus.vrshell"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oculus.vrshell.home"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oculus.systemactivities"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oculus.systemdriver"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/vrshell/home/module/BugReporterModule;->CORE_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/BugReporterModule;->mContext:Landroid/content/Context;

    .line 61
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/BugReporterModule;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "postBugReport"

    const-string v3, "+sssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/oculus/vrshell/home/module/BugReporterModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public postBugReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "bugID"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "audioClipFile"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 78
    sget-object v3, Lcom/oculus/vrshell/home/module/BugReporterModule;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "postBugReport()"

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oculus.horizon"

    const-string v4, "com.oculus.horizon.vrbugreporter.BugReporterService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v0, "bugReporterService":Landroid/content/ComponentName;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.oculus.horizon.vrbugreporter.action.ADD_DETAILS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    const-string v3, "BugReportId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "BugReportDetails"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    if-eqz p3, :cond_0

    .line 90
    const-string v3, "AudioClipFile"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/BugReporterModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    sget-object v3, Lcom/oculus/vrshell/home/module/BugReporterModule;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "Posting bug report to %s with bugID %s and text %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-wide v4, p0, Lcom/oculus/vrshell/home/module/BugReporterModule;->RVRCtxTag:J

    const-string v3, "[]"

    invoke-static {v4, v5, p4, v3}, Lcom/oculus/vrshell/home/module/BugReporterModule;->nativeInvokeCallback(JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/vrshell/home/module/BugReporterModule;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "Failed to post bug report to %s with bugID %s and text %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-wide v4, p0, Lcom/oculus/vrshell/home/module/BugReporterModule;->RVRCtxTag:J

    const-string v3, "[]"

    invoke-static {v4, v5, p5, v3}, Lcom/oculus/vrshell/home/module/BugReporterModule;->nativeInvokeCallback(JILjava/lang/String;)V

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
