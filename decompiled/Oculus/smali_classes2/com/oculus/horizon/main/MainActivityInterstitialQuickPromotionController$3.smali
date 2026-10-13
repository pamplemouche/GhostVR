.class Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;
.super Ljava/lang/Object;
.source "MainActivityInterstitialQuickPromotionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->getButtonAction(Lcom/oculus/horizon/promotion/Promotion$PromotionAction;Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

.field final synthetic val$action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$promotion:Lcom/oculus/horizon/promotion/Promotion;

.field final synthetic val$trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;Lcom/oculus/horizon/promotion/Promotion$PromotionAction;Ljava/lang/String;Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    iput-object p2, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    iput-object p3, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$actionName:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    iput-object p5, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$trigger:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$action:Lcom/oculus/horizon/promotion/Promotion$PromotionAction;

    invoke-static {v0, v1}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$200(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;Lcom/oculus/horizon/promotion/Promotion$PromotionAction;)V

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->this$0:Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;

    iget-object v1, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$actionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    iget-object v3, p0, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController$3;->val$trigger:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;->access$300(Lcom/oculus/horizon/main/MainActivityInterstitialQuickPromotionController;Ljava/lang/String;Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;)V

    .line 211
    return-void
.end method
