.class Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "NuxLegalNoticesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->prefetchNuxData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$000(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$100(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$400(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Lcom/oculus/horizon/widget/EmptyErrorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 84
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$000(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$100(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$200(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$200(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;->getData()Lcom/oculus/horizon/api/tos/TermsOfServiceResponse$Data;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse$Data;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->this$0:Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->access$300(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;->onResponse(Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;)V

    return-void
.end method
