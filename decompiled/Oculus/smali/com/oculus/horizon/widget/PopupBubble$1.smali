.class Lcom/oculus/horizon/widget/PopupBubble$1;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/PopupBubble;-><init>(Landroid/graphics/Point;Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble$Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/PopupBubble;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/oculus/horizon/widget/PopupBubble$1;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$1;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble;->hide()V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$1;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-static {v0}, Lcom/oculus/horizon/widget/PopupBubble;->access$000(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$1;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-static {v0}, Lcom/oculus/horizon/widget/PopupBubble;->access$100(Lcom/oculus/horizon/widget/PopupBubble;)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_5

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 105
    iget-object v3, p0, Lcom/oculus/horizon/widget/PopupBubble$1;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-static {v3}, Lcom/oculus/horizon/widget/PopupBubble;->access$200(Lcom/oculus/horizon/widget/PopupBubble;)Landroid/view/View;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 110
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 112
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_4

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/oculus/horizon/widget/PopupBubble$1;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-static {v3}, Lcom/oculus/horizon/widget/PopupBubble;->access$000(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$Callback;

    move-result-object v3

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    invoke-interface {v3, v1}, Lcom/oculus/horizon/widget/PopupBubble$Callback;->onUpsellClicked(Z)V

    move v1, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$1;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-static {v0}, Lcom/oculus/horizon/widget/PopupBubble;->access$000(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/widget/PopupBubble$Callback;->onUpsellDismissed()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
