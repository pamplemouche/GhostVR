.class Lcom/oculus/antipiracy/AntiPiracyJobService$1;
.super Ljava/lang/Object;
.source "AntiPiracyJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/antipiracy/AntiPiracyJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/antipiracy/AntiPiracyJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/antipiracy/AntiPiracyJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oculus/antipiracy/AntiPiracyJobService$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyJobService;

    iput-object p2, p0, Lcom/oculus/antipiracy/AntiPiracyJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;

    invoke-direct {v0, p0}, Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;-><init>(Lcom/oculus/antipiracy/AntiPiracyJobService$1;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/antipiracy/AntiPiracyJobService$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/antipiracy/AntiPiracyJobService$1$1;-><init>(Lcom/oculus/antipiracy/AntiPiracyJobService$1;)V

    .line 50
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 66
    return-void
.end method
