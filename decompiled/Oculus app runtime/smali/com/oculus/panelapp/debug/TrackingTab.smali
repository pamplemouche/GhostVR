.class Lcom/oculus/panelapp/debug/TrackingTab;
.super Landroid/widget/LinearLayout;
.source "TrackingTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDebugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

.field private mDebugInfo:Lcom/oculus/panelapp/debug/TrackingDebugInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mTaskScheduled:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;

.field private mUiThreadRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/oculus/panelapp/debug/TrackingTab;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/TrackingTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/debug/TrackingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTaskScheduled:Z

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance p1, Lcom/oculus/panelapp/debug/TrackingTab$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/debug/TrackingTab$1;-><init>(Lcom/oculus/panelapp/debug/TrackingTab;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mUiThreadRunnable:Ljava/lang/Runnable;

    .line 30
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTimer:Ljava/util/Timer;

    .line 31
    new-instance p1, Lcom/oculus/panelapp/debug/TrackingDebugInfo;

    invoke-direct {p1}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mDebugInfo:Lcom/oculus/panelapp/debug/TrackingDebugInfo;

    .line 32
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/TrackingTab;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/debug/TrackingTab;)Ljava/lang/Runnable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mUiThreadRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/TrackingTab;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/TrackingTab;)Lcom/oculus/panelapp/debug/TrackingDebugInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mDebugInfo:Lcom/oculus/panelapp/debug/TrackingDebugInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/debug/TrackingTab;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 2

    .line 37
    check-cast p1, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mDebugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    .line 39
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_tracking_textview:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/TrackingTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/TrackingTab;->setVisibility(I)V

    .line 42
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_tracking:I

    const-string v0, "tracking"

    const-string v1, "Tracking"

    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized onGlobalLayout()V
    .locals 8

    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTaskScheduled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/TrackingTab;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mDebugInfo:Lcom/oculus/panelapp/debug/TrackingDebugInfo;

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->start()Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTaskScheduled:Z

    .line 50
    new-instance v0, Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;-><init>(Lcom/oculus/panelapp/debug/TrackingTab;Lcom/oculus/panelapp/debug/TrackingTab$1;)V

    iput-object v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTimerTask:Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;

    .line 51
    iget-object v2, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTimerTask:Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTaskScheduled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/TrackingTab;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTimerTask:Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;->cancel()Z

    .line 55
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 56
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mDebugInfo:Lcom/oculus/panelapp/debug/TrackingDebugInfo;

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->stop()Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/oculus/panelapp/debug/TrackingTab;->mTaskScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
