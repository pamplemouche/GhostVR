.class public Lcom/oculus/horizon/pdp/widget/IARCDetailsView;
.super Landroid/widget/LinearLayout;
.source "IARCDetailsView.java"


# instance fields
.field private final mIarcSectionDescriptors:Landroid/widget/TextView;

.field private final mIarcSectionImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mIarcSectionInteractiveElements:Landroid/widget/TextView;

.field private final mIarcSectionRating:Landroid/widget/TextView;

.field private mItem:Lcom/oculus/horizon/api/common/Item;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget v0, Lcom/oculus/horizon/R$layout;->iarc_details_view:I

    invoke-static {p1, v0, p0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/oculus/horizon/R$id;->iarc_section_image:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    sget v0, Lcom/oculus/horizon/R$id;->iarc_section_rating:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionRating:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/oculus/horizon/R$id;->iarc_section_descriptors:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionDescriptors:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/oculus/horizon/R$id;->iarc_section_interactive_elements:I

    .line 45
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionInteractiveElements:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/oculus/horizon/pdp/widget/IARCDetailsView$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView$1;-><init>(Lcom/oculus/horizon/pdp/widget/IARCDetailsView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/widget/IARCDetailsView;)Lcom/oculus/horizon/api/common/Item;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mItem:Lcom/oculus/horizon/api/common/Item;

    return-object v0
.end method


# virtual methods
.method public updateIarc(Lcom/oculus/horizon/api/common/Item;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 60
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    if-eqz v0, :cond_4

    .line 61
    iput-object p1, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 62
    invoke-virtual {p0, v4}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->setVisibility(I)V

    .line 63
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_image_large:Lcom/oculus/horizon/api/common/Item$AgeRatingImage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_image_large:Lcom/oculus/horizon/api/common/Item$AgeRatingImage;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AgeRatingImage;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_image_large:Lcom/oculus/horizon/api/common/Item$AgeRatingImage;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$AgeRatingImage;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 69
    :goto_0
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionRating:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_1
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->descriptors:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_delimiter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$IARCRating;->descriptors:Ljava/util/ArrayList;

    aput-object v2, v1, v4

    .line 76
    invoke-static {v0, v1}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionDescriptors:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_2
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->interactive_elements:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_delimiter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$IARCRating;->interactive_elements:Ljava/util/ArrayList;

    aput-object v2, v1, v4

    .line 85
    invoke-static {v0, v1}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionInteractiveElements:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_3
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionRating:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionDescriptors:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->mIarcSectionInteractiveElements:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {p0, v3}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->setVisibility(I)V

    goto :goto_3
.end method
