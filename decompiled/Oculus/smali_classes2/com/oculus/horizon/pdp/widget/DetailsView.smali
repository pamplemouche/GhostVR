.class public Lcom/oculus/horizon/pdp/widget/DetailsView;
.super Landroid/widget/LinearLayout;
.source "DetailsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;
    }
.end annotation


# instance fields
.field private mDetailFormatResId:I

.field private mDetailLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/widget/DetailsView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/widget/DetailsView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/widget/DetailsView;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/oculus/horizon/R$layout;->detail_view:I

    iput v0, p0, Lcom/oculus/horizon/pdp/widget/DetailsView;->mDetailLayoutResId:I

    .line 45
    sget v0, Lcom/oculus/horizon/R$string;->pdp_detail_format:I

    iput v0, p0, Lcom/oculus/horizon/pdp/widget/DetailsView;->mDetailFormatResId:I

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/DetailsView;->setOrientation(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public setDetails(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/DetailsView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_1

    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    .line 56
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/DetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v7, p0, Lcom/oculus/horizon/pdp/widget/DetailsView;->mDetailLayoutResId:I

    invoke-virtual {v1, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/pdp/widget/DetailsView;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;->getValues()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v7}, Lcom/oculus/horizon/util/string/StringUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 65
    iget v8, p0, Lcom/oculus/horizon/pdp/widget/DetailsView;->mDetailFormatResId:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v9, v3

    const/4 v0, 0x1

    aput-object v7, v9, v0

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method
