.class Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PrivacyPolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PrivacyPolicyFragment;

.field final synthetic val$content:Landroid/widget/TextView;

.field final synthetic val$errorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field final synthetic val$loadingIndicator:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PrivacyPolicyFragment;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/oculus/horizon/widget/EmptyErrorView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->this$0:Lcom/oculus/horizon/settings/PrivacyPolicyFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$loadingIndicator:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$content:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$errorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$loadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$errorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$loadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$content:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->val$content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;->getData()Lcom/oculus/horizon/api/tos/TermsOfServiceResponse$Data;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse$Data;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;->onResponse(Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;)V

    return-void
.end method
