.class public Lcom/oculus/horizon/widget/OculusPopupMenu;
.super Ljava/lang/Object;
.source "OculusPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;,
        Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;,
        Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;

.field private final mAnchor:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mHasContentWidth:Z

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/oculus/horizon/widget/OculusMenu;

.field private final mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnMenuDismissListener:Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOnMenuItemClickListener:Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private final mPopupStyleRes:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    const v0, 0x1010300

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/oculus/horizon/widget/OculusPopupMenu$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/OculusPopupMenu$1;-><init>(Lcom/oculus/horizon/widget/OculusPopupMenu;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 64
    new-instance v0, Lcom/oculus/horizon/widget/OculusPopupMenu$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/OculusPopupMenu$2;-><init>(Lcom/oculus/horizon/widget/OculusPopupMenu;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 80
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mAnchor:Landroid/view/View;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopupMaxWidth:I

    .line 86
    iput p3, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopupStyleAttr:I

    .line 87
    iput p4, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopupStyleRes:I

    .line 89
    new-instance v0, Lcom/oculus/horizon/widget/OculusMenu;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/widget/OculusMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mMenu:Lcom/oculus/horizon/widget/OculusMenu;

    .line 90
    new-instance v0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mMenu:Lcom/oculus/horizon/widget/OculusMenu;

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mAdapter:Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnMenuItemClickListener:Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mAdapter:Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnMenuDismissListener:Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;

    return-object v0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureContentWidth()I
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 153
    iget-object v6, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mAdapter:Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;

    .line 154
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 155
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 156
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v5, v0

    move v2, v0

    move-object v4, v3

    move v1, v0

    .line 157
    :goto_0
    if-ge v5, v9, :cond_1

    .line 158
    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 159
    if-eq v0, v2, :cond_3

    move v2, v0

    move-object v0, v3

    .line 164
    :goto_1
    iget-object v4, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 165
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mMeasureParent:Landroid/view/ViewGroup;

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v6, v5, v0, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 169
    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 172
    iget v10, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopupMaxWidth:I

    if-lt v0, v10, :cond_2

    .line 173
    iget v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopupMaxWidth:I

    .line 179
    :cond_1
    return v1

    .line 174
    :cond_2
    if-le v0, v1, :cond_4

    .line 157
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mMenu:Lcom/oculus/horizon/widget/OculusMenu;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    return-void
.end method

.method public setOnMenuDismissListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnMenuDismissListener:Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;

    .line 111
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnMenuItemClickListener:Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;

    .line 107
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 114
    invoke-direct {p0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopupStyleAttr:I

    iget v4, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopupStyleRes:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mAdapter:Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 127
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mHasContentWidth:Z

    if-nez v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->measureContentWidth()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mContentWidth:I

    .line 129
    iput-boolean v5, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mHasContentWidth:Z

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    iget v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mContentWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method
