.class public Lcom/oculus/panelapp/debug/XrspTab;
.super Landroid/widget/LinearLayout;
.source "XrspTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mTaskScheduled:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;

.field private mUiThreadRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/panelapp/debug/XrspTab;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/XrspTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/debug/XrspTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTaskScheduled:Z

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/XrspTab;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance p1, Lcom/oculus/panelapp/debug/XrspTab$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/debug/XrspTab$1;-><init>(Lcom/oculus/panelapp/debug/XrspTab;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/XrspTab;->mUiThreadRunnable:Ljava/lang/Runnable;

    .line 31
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTimer:Ljava/util/Timer;

    .line 32
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/XrspTab;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/debug/XrspTab;)Ljava/lang/Runnable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mUiThreadRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/XrspTab;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/XrspTab;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 2

    .line 38
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_xrsp_textview:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/XrspTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/XrspTab;->setVisibility(I)V

    .line 41
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_xrsp:I

    const-string v0, "xrsp"

    const-string v1, "XRSP"

    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized onGlobalLayout()V
    .locals 8

    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTaskScheduled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/XrspTab;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTaskScheduled:Z

    .line 49
    new-instance v0, Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;-><init>(Lcom/oculus/panelapp/debug/XrspTab;Lcom/oculus/panelapp/debug/XrspTab$1;)V

    iput-object v0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTimerTask:Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;

    .line 50
    iget-object v2, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTimerTask:Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTaskScheduled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/XrspTab;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTimerTask:Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;->cancel()Z

    .line 54
    iget-object v0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/oculus/panelapp/debug/XrspTab;->mTaskScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
