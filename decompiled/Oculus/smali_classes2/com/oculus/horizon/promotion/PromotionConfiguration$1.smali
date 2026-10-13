.class Lcom/oculus/horizon/promotion/PromotionConfiguration$1;
.super Ljava/lang/Object;
.source "PromotionConfiguration.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/promotion/PromotionConfiguration;->fetchAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/promotion/PromotionConfiguration;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/promotion/PromotionConfiguration;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oculus/horizon/promotion/PromotionConfiguration$1;->this$0:Lcom/oculus/horizon/promotion/PromotionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/oculus/horizon/promotion/PromotionConfiguration$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x1

    sget v1, Lcom/oculus/horizon/HorizonModule$UL_id;->$ul_$xXXcom_oculus_horizon_promotion_PromotionSharedPreferencesHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/promotion/PromotionConfiguration$1;->this$0:Lcom/oculus/horizon/promotion/PromotionConfiguration;

    invoke-static {v2}, Lcom/oculus/horizon/promotion/PromotionConfiguration;->access$000(Lcom/oculus/horizon/promotion/PromotionConfiguration;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;->clearCache()V

    .line 42
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/HorizonModule$UL_id;->$ul_$xXXcom_oculus_horizon_promotion_PromotionManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/promotion/PromotionConfiguration$1;->this$0:Lcom/oculus/horizon/promotion/PromotionConfiguration;

    invoke-static {v2}, Lcom/oculus/horizon/promotion/PromotionConfiguration;->access$000(Lcom/oculus/horizon/promotion/PromotionConfiguration;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/promotion/PromotionManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/promotion/PromotionManager;->fetchForAllSurfaces()V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
