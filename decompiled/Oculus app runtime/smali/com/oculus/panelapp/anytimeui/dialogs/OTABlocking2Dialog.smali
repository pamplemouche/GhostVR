.class public Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "OTABlocking2Dialog.java"


# static fields
.field private static final HIGH_PRI_APPS_EMPTY_SENTINEL:Ljava/lang/String; = "$"

.field private static final HIGH_PRI_APPS_PACKAGES_KEY:Ljava/lang/String; = "high_priority_apps_pkgs"

.field private static final POLL_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHighPriAppsPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHighPriAppsProgress:F

.field private volatile mHighPriAppsProgressPolling:Z

.field private mOTAProgress:F

.field private mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

.field private final mUpdateHighPriAppsProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->TAG:Ljava/lang/String;

    const-string p2, "OTABlocking2Dialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgressPolling:Z

    .line 46
    new-instance p1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mUpdateHighPriAppsProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgressPolling:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsPackages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsPackages:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)F
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->queryHighPriAppsProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgress:F

    return p0
.end method

.method static synthetic access$302(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgress:F

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->updateProgressBarIfNeeded()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mUpdateHighPriAppsProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private queryHighPriAppsProgress()F
    .locals 8

    .line 165
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplication(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v5

    .line 174
    iget-wide v6, v5, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    long-to-float v6, v6

    add-float/2addr v4, v6

    .line 175
    iget-wide v5, v5, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    long-to-float v5, v5

    add-float/2addr v3, v5

    goto :goto_0

    :cond_1
    cmpg-float v0, v3, v2

    if-gtz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    div-float/2addr v4, v3

    :goto_1
    cmpg-float v0, v4, v2

    if-gez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    cmpl-float v0, v4, v1

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    return v1
.end method

.method private startHighPriAppsProgressPolling()V
    .locals 3

    .line 84
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgressPolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgressPolling:Z

    .line 86
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mUpdateHighPriAppsProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopHighPriAppsProgressPolling()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgressPolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgressPolling:Z

    .line 101
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mUpdateHighPriAppsProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateProgressBarIfNeeded()V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    const-string v1, " & "

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->getProgressRatio()F

    move-result v0

    .line 185
    iget v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mOTAProgress:F

    iget v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgress:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 187
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating progress bar with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mOTAProgress:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgress:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    invoke-virtual {v0, v2}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setProgressRatio(F)V

    .line 189
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->invalidate()V

    goto :goto_0

    .line 194
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring progress bar update because no progress bar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mOTAProgress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgress:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize()V

    .line 63
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBackground(Ljava/lang/String;)V

    .line 65
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->ota_blocking2_dialog_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    .line 66
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setProgressRatio(F)V

    .line 68
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mProgressBar:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setVisibility(I)V

    .line 70
    :cond_0
    iput v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mOTAProgress:F

    .line 71
    iput v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mHighPriAppsProgress:F

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onAttachedToWindow()V

    .line 77
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->startHighPriAppsProgressPolling()V

    .line 80
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->suppressToasts()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onDetachedFromWindow()V

    .line 93
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->stopHighPriAppsProgressPolling()V

    .line 95
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->unsuppressToasts()V

    return-void
.end method

.method public setUpdateOTAProgress(F)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->mOTAProgress:F

    .line 107
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->updateProgressBarIfNeeded()V

    return-void
.end method

.method public updateHighPriAppsProgress()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/oculus/vrshell/panels/ThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    return-void
.end method
