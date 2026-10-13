.class Lcom/oculus/horizon/help/HelpFragment$3;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/help/HelpFragment;->initiateBugReport()V
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
.field final synthetic this$0:Lcom/oculus/horizon/help/HelpFragment;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/help/HelpFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/help/HelpFragment$3;->this$0:Lcom/oculus/horizon/help/HelpFragment;

    iput-object p2, p0, Lcom/oculus/horizon/help/HelpFragment$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/help/HelpFragment$3;->this$0:Lcom/oculus/horizon/help/HelpFragment;

    .line 127
    invoke-virtual {v0}, Lcom/oculus/horizon/help/HelpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->help_report_a_bug_error_text:I

    const/4 v2, 0x0

    .line 126
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public onSuccess(Lcom/oculus/horizon/rageshake/BugReport;)V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/help/HelpFragment$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/oculus/horizon/rageshake/BugReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v1, "report"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    const-string v1, "should_hide_screenshot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/oculus/horizon/help/HelpFragment$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Lcom/oculus/horizon/rageshake/BugReport;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/help/HelpFragment$3;->onSuccess(Lcom/oculus/horizon/rageshake/BugReport;)V

    return-void
.end method
