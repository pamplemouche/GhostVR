.class public Lcom/oculus/horizon/pdp/DeveloperFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "DeveloperFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->DEVELOPER_INFO:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/DeveloperFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 38
    sget v0, Lcom/oculus/horizon/R$layout;->developer_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/DeveloperFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "developer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;

    .line 41
    const-string v1, "developer is required"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget v1, Lcom/oculus/horizon/R$id;->header:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    sget v2, Lcom/oculus/horizon/R$id;->details:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/pdp/widget/DetailsView;

    .line 46
    iget-object v5, v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v5, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v6, Lcom/oculus/horizon/R$string;->pdp_label_publisher:I

    .line 53
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->publisher:Ljava/lang/String;

    .line 54
    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v5

    .line 56
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v5, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v6, Lcom/oculus/horizon/R$string;->pdp_label_category:I

    .line 60
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->category:Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v5

    .line 63
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v5, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v6, Lcom/oculus/horizon/R$string;->pdp_label_genres:I

    .line 67
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->genres:Ljava/util/List;

    .line 68
    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValues(Ljava/util/List;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v5

    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v5, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v6, Lcom/oculus/horizon/R$string;->pdp_label_released:I

    .line 74
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->releaseDate:Ljava/lang/String;

    .line 75
    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v5

    .line 76
    invoke-virtual {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v5

    .line 77
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v5, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v5}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v6, Lcom/oculus/horizon/R$string;->pdp_label_website:I

    .line 81
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v3

    iget-object v0, v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->website:Ljava/lang/String;

    .line 82
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v2, v1}, Lcom/oculus/horizon/pdp/widget/DetailsView;->setDetails(Ljava/util/List;)V

    .line 88
    return-object v4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/DeveloperFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_header_developer:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 100
    return-void
.end method
