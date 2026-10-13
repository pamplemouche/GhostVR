.class Lcom/oculus/durableiap/DurableIAPStorage$2;
.super Ljava/lang/Object;
.source "DurableIAPStorage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/durableiap/DurableIAPStorage;->refetchPurchases()Lbolts/Task;
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
.field final synthetic this$0:Lcom/oculus/durableiap/DurableIAPStorage;


# direct methods
.method constructor <init>(Lcom/oculus/durableiap/DurableIAPStorage;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/oculus/durableiap/DurableIAPStorage$2;->this$0:Lcom/oculus/durableiap/DurableIAPStorage;

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
    .line 213
    invoke-virtual {p0}, Lcom/oculus/durableiap/DurableIAPStorage$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oculus/durableiap/DurableIAPStorage$2;->this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    invoke-static {v0}, Lcom/oculus/durableiap/DurableIAPStorage;->access$100(Lcom/oculus/durableiap/DurableIAPStorage;)Lcom/oculus/durableiap/net/DurableIAPMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/durableiap/net/DurableIAPMethods;->getDurableIAP()Lcom/oculus/durableiap/net/IAPEntitlementsResponse;

    move-result-object v1

    .line 218
    const/4 v0, 0x0

    .line 219
    iget-object v2, p0, Lcom/oculus/durableiap/DurableIAPStorage$2;->this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    invoke-virtual {v2}, Lcom/oculus/durableiap/DurableIAPStorage;->clearPurchases()V

    .line 221
    iget-object v1, v1, Lcom/oculus/durableiap/net/IAPEntitlementsResponse;->entitlements:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppEntitlements;

    iget-object v1, v1, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppEntitlements;->active_android_entitlements:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlements;

    iget-object v1, v1, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlements;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlement;

    .line 222
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v1, v0, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlement;->item:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppItem;

    iget-object v1, v1, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppItem;->iap_entitlements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$IAPEntitlement;

    .line 224
    sget-object v6, Lcom/oculus/durableiap/net/IAPEntitlementsResponse;->ACTIVE_STATE_PERMANENT:Ljava/lang/String;

    iget-object v7, v1, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$IAPEntitlement;->active_state:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    invoke-static {v1}, Lcom/oculus/durableiap/DurableIAPStorage;->access$200(Lcom/oculus/durableiap/net/IAPEntitlementsResponse$IAPEntitlement;)Lcom/oculus/durableiap/Purchase;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    .line 230
    iget-object v2, p0, Lcom/oculus/durableiap/DurableIAPStorage$2;->this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    iget-object v0, v0, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$ActiveAndroidEntitlement;->item:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppItem;

    iget-object v0, v0, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$AppItem;->grouping:Lcom/oculus/durableiap/net/IAPEntitlementsResponse$Grouping;

    iget-object v0, v0, Lcom/oculus/durableiap/net/IAPEntitlementsResponse$Grouping;->id:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/oculus/durableiap/DurableIAPStorage;->setPurchases(Ljava/lang/String;Ljava/util/List;)V

    move v2, v1

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    invoke-static {}, Lcom/oculus/durableiap/DurableIAPStorage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Updated %d purchases."

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    const/4 v0, 0x0

    return-object v0
.end method
