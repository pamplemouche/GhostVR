.class public Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;
.super Landroid/widget/LinearLayout;
.source "SortFilterDropDownMenuWidget.java"


# instance fields
.field private mListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field private mMenuId:I

.field private mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

.field private final mSortViewText:Landroid/widget/TextView;

.field private final mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->init(Landroid/content/Context;)V

    .line 34
    sget v0, Lcom/oculus/horizon/R$id;->selector_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mTitleText:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/oculus/horizon/R$id;->selector_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mSortViewText:Landroid/widget/TextView;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->init(Landroid/content/Context;)V

    .line 43
    sget v0, Lcom/oculus/horizon/R$id;->selector_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mTitleText:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/oculus/horizon/R$id;->selector_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mSortViewText:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->init(Landroid/content/Context;)V

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->selector_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mTitleText:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->selector_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mSortViewText:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->getSortListener()Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->showSortMenu(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mSortViewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-object v0
.end method

.method private getSortListener()Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$2;-><init>(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 59
    sget v0, Lcom/oculus/horizon/R$layout;->widget_sort_filter_drop_down_menu:I

    invoke-static {p1, v0, p0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setOrientation(I)V

    .line 61
    new-instance v0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$1;-><init>(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private maybeInitializeMenu(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 3
    .param p1    # Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 79
    iget v1, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mMenuId:I

    iget-object v2, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v2}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 82
    return-void
.end method

.method private showSortMenu(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->maybeInitializeMenu(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    .line 73
    return-void
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->maybeInitializeMenu(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 91
    return-void
.end method

.method public setMenuId(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mMenuId:I

    .line 95
    return-void
.end method

.method public setOption(I)V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->maybeInitializeMenu(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 112
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 113
    iget-object v1, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mSortViewText:Landroid/widget/TextView;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mSortViewText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
