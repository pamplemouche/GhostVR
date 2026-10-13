.class Lcom/oculus/modules/QuickPromotionModuleImpl$2;
.super Ljava/lang/Object;
.source "QuickPromotionModuleImpl.java"

# interfaces
.implements Lcom/oculus/panellib/GraphQLUtil$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/QuickPromotionModuleImpl;->markPromotionShownImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

.field final synthetic val$logData:Ljava/lang/String;

.field final synthetic val$promotionID:Ljava/lang/String;

.field final synthetic val$trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/QuickPromotionModuleImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/QuickPromotionModuleImpl;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$2;->this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$2;->val$promotionID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$2;->val$trigger:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$2;->val$logData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-static {}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$2;->val$promotionID:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$2;->val$trigger:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$2;->val$logData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->newViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->log()V

    .line 517
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 521
    invoke-static {}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "markPromotionShown() successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method
