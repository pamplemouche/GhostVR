.class Lcom/oculus/horizon/widget/RatingView$1;
.super Ljava/lang/Object;
.source "RatingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/RatingView;->setIsIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/RatingView;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/RatingView;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 174
    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/RatingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/RatingView;->getNumStars()I

    move-result v2

    iget-object v3, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    invoke-virtual {v3}, Lcom/oculus/horizon/widget/RatingView;->getStepSize()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oculus/horizon/widget/RatingView;->access$000(FIF)F

    move-result v0

    .line 178
    :goto_0
    if-ne v1, v4, :cond_0

    .line 179
    iget-object v1, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    invoke-static {v1, v0}, Lcom/oculus/horizon/widget/RatingView;->access$102(Lcom/oculus/horizon/widget/RatingView;F)F

    .line 180
    iget-object v1, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    invoke-static {v1, v0}, Lcom/oculus/horizon/widget/RatingView;->access$200(Lcom/oculus/horizon/widget/RatingView;F)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    invoke-static {v1, v0}, Lcom/oculus/horizon/widget/RatingView;->access$300(Lcom/oculus/horizon/widget/RatingView;F)V

    .line 184
    return v4

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/RatingView$1;->this$0:Lcom/oculus/horizon/widget/RatingView;

    .line 177
    invoke-static {v0}, Lcom/oculus/horizon/widget/RatingView;->access$100(Lcom/oculus/horizon/widget/RatingView;)F

    move-result v0

    goto :goto_0
.end method
