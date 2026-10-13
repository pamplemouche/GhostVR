.class public Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;
.super Landroid/widget/RelativeLayout;
.source "SelectableProfilePictureView.java"


# instance fields
.field private mProfilePicture:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    sget v1, Lcom/oculus/horizon/R$layout;->fbconnect_selectable_profile_picture_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    sget v0, Lcom/oculus/horizon/R$id;->profile_picture:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->mProfilePicture:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    if-nez p2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v0, Lcom/oculus/horizon/R$styleable;->SelectableProfilePictureView:[I

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 50
    sget v0, Lcom/oculus/horizon/R$id;->brand_logo:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    sget v2, Lcom/oculus/horizon/R$styleable;->SelectableProfilePictureView_iconSrc:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 52
    if-eq v2, v3, :cond_2

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    :cond_2
    sget v0, Lcom/oculus/horizon/R$id;->brand_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    sget v2, Lcom/oculus/horizon/R$styleable;->SelectableProfilePictureView_subtitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/SelectableProfilePictureView;->mProfilePicture:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object v0
.end method
