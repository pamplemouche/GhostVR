.class public Lcom/facebook/react/views/picker/ReactPicker;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "ReactPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    }
.end annotation


# instance fields
.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mItems:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/views/picker/ReactPickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStagedItems:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/views/picker/ReactPickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStagedPrimaryTextColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStagedSelection:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final measureAndLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 28
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$1;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 72
    new-instance v0, Lcom/facebook/react/views/picker/ReactPicker$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/picker/ReactPicker$2;-><init>(Lcom/facebook/react/views/picker/ReactPicker;)V

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    .line 56
    iput p2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/picker/ReactPicker;)Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object v0
.end method


# virtual methods
.method commitStagedData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0, v4}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/picker/ReactPickerAdapter;

    .line 138
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getSelectedItemPosition()I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    if-eq v2, v3, :cond_0

    .line 140
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    iput-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    .line 141
    iput-object v4, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    .line 142
    if-nez v0, :cond_3

    .line 143
    new-instance v0, Lcom/facebook/react/views/picker/ReactPickerAdapter;

    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/facebook/react/views/picker/ReactPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 152
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/views/picker/ReactPicker;->setSelection(IZ)V

    .line 154
    iput-object v4, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    .line 159
    invoke-virtual {v0}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->getPrimaryTextColor()Ljava/lang/Integer;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 160
    iget-object v1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->setPrimaryTextColor(Ljava/lang/Integer;)V

    .line 161
    iput-object v4, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 165
    return-void

    .line 146
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->clear()V

    .line 147
    iget-object v2, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItems:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->addAll(Ljava/util/Collection;)V

    .line 148
    invoke-virtual {v0}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getMode()I
    .locals 1
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 169
    iget v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mMode:I

    return v0
.end method

.method public getOnSelectListener()Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 96
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatSpinner;->onLayout(ZIIII)V

    .line 102
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPicker;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 103
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->requestLayout()V

    .line 91
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/picker/ReactPicker;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method public setOnSelectListener(Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;)V
    .locals 0
    .param p1    # Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mOnSelectListener:Lcom/facebook/react/views/picker/ReactPicker$OnSelectListener;

    .line 107
    return-void
.end method

.method setStagedItems(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/views/picker/ReactPickerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedItems:Ljava/util/List;

    .line 116
    return-void
.end method

.method setStagedPrimaryTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedPrimaryTextColor:Ljava/lang/Integer;

    .line 127
    return-void
.end method

.method setStagedSelection(I)V
    .locals 1

    .prologue
    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPicker;->mStagedSelection:Ljava/lang/Integer;

    .line 123
    return-void
.end method
