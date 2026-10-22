.class Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DogfoodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuildInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/oculus/panelapp/dogfood/DogfoodView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    .line 268
    sget p1, Lcom/oculus/panelapp/dogfood/R$layout;->build_info_item:I

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_build_info_label:I

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$400(Lcom/oculus/panelapp/dogfood/DogfoodView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$400(Lcom/oculus/panelapp/dogfood/DogfoodView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 266
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->getItem(I)Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 289
    :cond_0
    iget-object p3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p3}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$400(Lcom/oculus/panelapp/dogfood/DogfoodView;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    .line 291
    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_build_info_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 292
    sget v1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_build_info_version:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 293
    sget v2, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_open_tab_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 294
    sget v3, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_uninstall_button:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://ghostvr.pamplemouche.com/mobile_builds/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {v5}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$700(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    move-result-object v5

    sget-object v6, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_PACKAGE_INSTALLER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v5, v6}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_1

    .line 298
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 299
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    :cond_1
    invoke-static {}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1300()[Ljava/lang/String;

    move-result-object v5

    aget-object p1, v5, p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 303
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 304
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 306
    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 307
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    new-instance p1, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$1;

    invoke-direct {p1, p0, v4}, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$1;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance p1, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$2;

    invoke-direct {p1, p0, p3}, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$2;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :goto_0
    iget-object p1, p3, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object p1, p3, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
