.class public Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;
.super Landroidx/fragment/app/Fragment;
.source "RageShakeListenerFragment.java"

# interfaces
.implements Lcom/squareup/seismic/ShakeDetector$Listener;


# instance fields
.field mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClock:Lcom/oculus/time/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLastShakeTime:J

.field private mShakeCount:I

.field private mShakeDetector:Lcom/squareup/seismic/ShakeDetector;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/horizon/rageshake/BugReporter;->$ul_$xXXcom_oculus_horizon_rageshake_BugReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/rageshake/BugReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    invoke-static {p0}, Lcom/oculus/time/Clock;->$ul_$xXXcom_oculus_time_Clock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/time/Clock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mClock:Lcom/oculus/time/Clock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private askForBugReportActivity()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mBugReporter:Lcom/oculus/horizon/rageshake/BugReporter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/rageshake/BugReporter;->askForBugReport(Landroidx/fragment/app/FragmentActivity;)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public hearShake()V
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mClock:Lcom/oculus/time/Clock;

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->uptime()J

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mLastShakeTime:J

    sub-long v2, v0, v2

    .line 70
    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 71
    iget v2, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mShakeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mShakeCount:I

    .line 75
    :goto_0
    iput-wide v0, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mLastShakeTime:J

    .line 76
    iget v0, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mShakeCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->askForBugReportActivity()V

    .line 79
    :cond_0
    return-void

    .line 73
    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mShakeCount:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Lcom/squareup/seismic/ShakeDetector;

    invoke-direct {v0, p0}, Lcom/squareup/seismic/ShakeDetector;-><init>(Lcom/squareup/seismic/ShakeDetector$Listener;)V

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mShakeDetector:Lcom/squareup/seismic/ShakeDetector;

    .line 17
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;)V

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mShakeDetector:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector;->stop()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 46
    iget-object v1, p0, Lcom/oculus/horizon/rageshake/RageShakeListenerFragment;->mShakeDetector:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector;->start(Landroid/hardware/SensorManager;)Z

    .line 47
    return-void
.end method
