.class Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;
.super Ljava/lang/Object;
.source "MainActivityBottomNavTooltipQuickPromotionController.java"

# interfaces
.implements Lcom/oculus/horizon/widget/PopupBubble$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->getTooltipForPromotion(Landroid/view/View;Lcom/oculus/horizon/navbaraction/Action;Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;)Lcom/oculus/horizon/widget/PopupBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

.field final synthetic val$action:Lcom/oculus/horizon/navbaraction/Action;

.field final synthetic val$promotion:Lcom/oculus/horizon/promotion/Promotion;

.field final synthetic val$trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;Ljava/lang/String;Lcom/oculus/horizon/promotion/Promotion;Lcom/oculus/horizon/navbaraction/Action;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    iput-object p2, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$trigger:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    iput-object p4, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$action:Lcom/oculus/horizon/navbaraction/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpsellClicked(Z)V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    .line 142
    invoke-virtual {v1}, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->getSurfaceId()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$trigger:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    const-string v4, "primary"

    .line 141
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/promotion/PromotionManager;->markPromotionAction(ILjava/lang/String;Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->access$100(Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;)V

    .line 144
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->access$200(Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;)Lcom/oculus/horizon/main/BottomNavHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$action:Lcom/oculus/horizon/navbaraction/Action;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->onActionSelected(Lcom/oculus/horizon/navbaraction/Action;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onUpsellDismissed()V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->access$000(Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    .line 153
    invoke-virtual {v1}, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->getSurfaceId()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$trigger:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    const-string v4, "dismiss"

    .line 152
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/promotion/PromotionManager;->markPromotionAction(ILjava/lang/String;Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController$1;->this$0:Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;->access$100(Lcom/oculus/horizon/main/MainActivityBottomNavTooltipQuickPromotionController;)V

    .line 155
    return-void
.end method
