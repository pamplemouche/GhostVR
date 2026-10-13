.class Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;
.super Ljava/lang/Object;
.source "MobileConfigUpdaterJobService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;->this$0:Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;

    iput-object p2, p0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;->this$0:Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;

    iget-object v1, p0, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/mobileconfig/updater/MobileConfigUpdaterJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
