.class Lcom/oculus/horizon/pdp/ReviewFragment$1;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/ReviewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/ReviewFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ReviewFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Lcom/oculus/horizon/widget/RatingView;F)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ReviewFragment;->access$000(Lcom/oculus/horizon/pdp/ReviewFragment;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 103
    return-void
.end method
