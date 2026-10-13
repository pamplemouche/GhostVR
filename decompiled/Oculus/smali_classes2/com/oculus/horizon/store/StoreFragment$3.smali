.class Lcom/oculus/horizon/store/StoreFragment$3;
.super Lcom/oculus/horizon/common/UICallback;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreFragment;->fetchStores()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/store/StoresResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->showErrorState()V

    .line 347
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/store/StoresResponse;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 319
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$300(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/store/StoresManager;->getStoreModel()Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oculus/horizon/store/StoreFragment;->access$202(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/store/StoreModel;)Lcom/oculus/horizon/store/StoreModel;

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 321
    const/4 v0, 0x0

    .line 322
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    if-eqz v2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$400(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/style/StyleManager;->setStyleTheme(Lcom/oculus/model/StyleTheme;)V

    .line 324
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 325
    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    invoke-static {v2}, Lcom/oculus/horizon/style/StyleManager;->getResourceIdentifierForStyle(Lcom/oculus/model/StyleTheme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    move v0, v1

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreModel;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    if-eqz v2, :cond_1

    .line 329
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$400(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreModel;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/style/StyleManager;->setHeaderAsset(Lcom/oculus/horizon/store/StoreAssetMedia;)V

    move v0, v1

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreModel;->footerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    if-eqz v2, :cond_4

    .line 333
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$400(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreModel;->footerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/style/StyleManager;->setFooterAsset(Lcom/oculus/horizon/store/StoreAssetMedia;)V

    .line 336
    :goto_0
    if-eqz v1, :cond_2

    .line 337
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreFragment;->access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreFragment;->access$502(Lcom/oculus/horizon/store/StoreFragment;I)I

    .line 340
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$3;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$600(Lcom/oculus/horizon/store/StoreFragment;)V

    .line 342
    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Lcom/oculus/horizon/api/store/StoresResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreFragment$3;->onResponse(Lcom/oculus/horizon/api/store/StoresResponse;)V

    return-void
.end method
