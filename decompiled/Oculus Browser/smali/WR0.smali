.class public LWR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKR0;


# instance fields
.field public final a:Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;

.field public final b:LLR0;

.field public final c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;LLR0;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LWR0;->a:Lorg/chromium/components/background_task_scheduler/BackgroundTaskJobService;

    .line 3
    iput-object p2, p0, LWR0;->b:LLR0;

    .line 4
    iput-object p3, p0, LWR0;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    new-instance v0, LVR0;

    invoke-direct {v0, p0, p1}, LVR0;-><init>(LWR0;Z)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->c(Ljava/lang/Runnable;)V

    return-void
.end method
