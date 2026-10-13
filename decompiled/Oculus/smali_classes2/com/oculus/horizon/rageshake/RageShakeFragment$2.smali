.class Lcom/oculus/horizon/rageshake/RageShakeFragment$2;
.super Ljava/lang/Object;
.source "RageShakeFragment.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/rageshake/RageShakeFragment;->initiateBugReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/oculus/horizon/rageshake/BugReport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/rageshake/RageShakeFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    iput-object p2, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->setLoading(Z)V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->dismiss()V

    .line 88
    return-void
.end method

.method public onSuccess(Lcom/oculus/horizon/rageshake/BugReport;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->setLoading(Z)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/oculus/horizon/rageshake/BugReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v1, "report"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->dismiss()V

    .line 82
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lcom/oculus/horizon/rageshake/BugReport;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/rageshake/RageShakeFragment$2;->onSuccess(Lcom/oculus/horizon/rageshake/BugReport;)V

    return-void
.end method
