.class Lcom/oculus/modules/QuickPromotionModuleImpl$4;
.super Ljava/lang/Object;
.source "QuickPromotionModuleImpl.java"

# interfaces
.implements Lcom/oculus/panellib/GraphQLUtil$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/QuickPromotionModuleImpl;->fetchForSurface(Lokhttp3/OkHttpClient;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

.field final synthetic val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

.field final synthetic val$surfaceID:I

.field final synthetic val$trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/QuickPromotionModuleImpl;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/QuickPromotionModuleImpl;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iput p2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    iput-object p3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 641
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

    .line 642
    iget v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    iget-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    const-string v2, "exception"

    invoke-static {v0, v1, v2, p1}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionFetchFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    invoke-virtual {v0}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->markSurfaceComplete()V

    .line 651
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 655
    const-string v3, "viewer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 656
    .local v2, "viewer":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 657
    invoke-static {}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onFailure: missing viewer tag"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    const-string v5, "missing viewer tag"

    invoke-static {v3, v4, v5, v6}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionFetchFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iget v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    invoke-static {v3, v4}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$100(Lcom/oculus/modules/QuickPromotionModuleImpl;I)V

    .line 666
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    if-eqz v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    invoke-virtual {v3}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->markSurfaceComplete()V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    const-string v3, "eligible_promotions"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 672
    .local v1, "eligiblePromotions":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 673
    invoke-static {}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onFailure: missing eligible_promotions tag"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    const-string v5, "missing eligible_promotion tag"

    invoke-static {v3, v4, v5, v6}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionFetchFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iget v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    invoke-static {v3, v4}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$100(Lcom/oculus/modules/QuickPromotionModuleImpl;I)V

    .line 682
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    if-eqz v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    invoke-virtual {v3}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->markSurfaceComplete()V

    goto :goto_0

    .line 687
    :cond_2
    const-string v3, "edges"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 688
    .local v0, "edges":Lorg/json/JSONArray;
    if-nez v0, :cond_3

    .line 689
    invoke-static {}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onFailure: missing edges tag"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    const-string v5, "missing edges tag"

    invoke-static {v3, v4, v5, v6}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionFetchFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iget v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    invoke-static {v3, v4}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$100(Lcom/oculus/modules/QuickPromotionModuleImpl;I)V

    .line 698
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    if-eqz v3, :cond_0

    .line 699
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    invoke-virtual {v3}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->markSurfaceComplete()V

    goto :goto_0

    .line 703
    :cond_3
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iget v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    invoke-static {v3, v4, v0}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$200(Lcom/oculus/modules/QuickPromotionModuleImpl;ILorg/json/JSONArray;)V

    .line 705
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 706
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->this$0:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oculus/modules/QuickPromotionModuleImpl;->access$300(Lcom/oculus/modules/QuickPromotionModuleImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    :cond_4
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    if-eqz v3, :cond_5

    .line 710
    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$callback:Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    invoke-virtual {v3}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->markSurfaceComplete()V

    .line 714
    :cond_5
    iget v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$surfaceID:I

    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$4;->val$trigger:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionFetchSuccess(ILjava/lang/String;)V

    goto :goto_0
.end method
