.class Lcom/oculus/durableiap/DurableIAPJobService$1;
.super Ljava/lang/Object;
.source "DurableIAPJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/durableiap/DurableIAPJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/durableiap/DurableIAPJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/durableiap/DurableIAPJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oculus/durableiap/DurableIAPJobService$1;->this$0:Lcom/oculus/durableiap/DurableIAPJobService;

    iput-object p2, p0, Lcom/oculus/durableiap/DurableIAPJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/durableiap/DurableIAPJobService$1;->this$0:Lcom/oculus/durableiap/DurableIAPJobService;

    invoke-static {v0}, Lcom/oculus/durableiap/DurableIAPJobService;->access$200(Lcom/oculus/durableiap/DurableIAPJobService;)Lcom/oculus/durableiap/DurableIAPStorage;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/oculus/durableiap/DurableIAPStorage;->refetchPurchases()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/durableiap/DurableIAPJobService$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/durableiap/DurableIAPJobService$1$1;-><init>(Lcom/oculus/durableiap/DurableIAPJobService$1;)V

    .line 40
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 56
    return-void
.end method
