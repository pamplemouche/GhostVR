.class Lcom/oculus/horizon/widget/PopupBubble$2;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/PopupBubble;->show()V
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
    .line 136
    iput-object p1, p0, Lcom/oculus/horizon/widget/PopupBubble$2;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$2;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-static {v0}, Lcom/oculus/horizon/widget/PopupBubble;->access$300(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$2;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble$2;->this$0:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-static {v0}, Lcom/oculus/horizon/widget/PopupBubble;->access$400(Lcom/oculus/horizon/widget/PopupBubble;)V

    .line 143
    return-void
.end method
