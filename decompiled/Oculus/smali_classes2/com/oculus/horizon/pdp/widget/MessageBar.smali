.class public Lcom/oculus/horizon/pdp/widget/MessageBar;
.super Landroid/widget/RelativeLayout;
.source "MessageBar.java"


# instance fields
.field private final mDescription:Landroid/widget/TextView;

.field private final mImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/pdp/widget/MessageBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/pdp/widget/MessageBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    sget v1, Lcom/oculus/horizon/R$layout;->widget_message_bar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    sget v0, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/MessageBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mImage:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/MessageBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mDescription:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/MessageBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    sget v1, Lcom/oculus/horizon/R$dimen;->pdp_horizontal_padding_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 44
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setPadding(IIII)V

    .line 45
    sget v0, Lcom/oculus/horizon/R$color;->oculus_black_8:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setBackgroundResource(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public setDescription(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    return-void
.end method

.method public setImage(I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 62
    return-void
.end method

.method public setImageRightMargin(I)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 67
    iget-object v1, p0, Lcom/oculus/horizon/pdp/widget/MessageBar;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method
