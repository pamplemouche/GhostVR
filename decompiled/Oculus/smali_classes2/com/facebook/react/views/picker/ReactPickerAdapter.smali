.class Lcom/facebook/react/views/picker/ReactPickerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReactPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/react/views/picker/ReactPickerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPrimaryTextColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/views/picker/ReactPickerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const-string v0, "layout_inflater"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/react/views/picker/ReactPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method

.method private getView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/picker/ReactPickerItem;

    .line 41
    if-nez p2, :cond_4

    .line 42
    if-eqz p4, :cond_1

    const v1, 0x1090009

    .line 46
    :goto_0
    iget-object v3, p0, Lcom/facebook/react/views/picker/ReactPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 48
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    const/4 v1, 0x1

    move v4, v1

    move-object v1, v2

    move v2, v4

    .line 52
    :goto_1
    check-cast v1, Landroid/widget/TextView;

    .line 53
    iget-object v3, v0, Lcom/facebook/react/views/picker/ReactPickerItem;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    if-nez p4, :cond_2

    iget-object v3, p0, Lcom/facebook/react/views/picker/ReactPickerAdapter;->mPrimaryTextColor:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 55
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPickerAdapter;->mPrimaryTextColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    :cond_0
    :goto_2
    return-object v1

    .line 42
    :cond_1
    const v1, 0x1090008

    goto :goto_0

    .line 56
    :cond_2
    iget-object v3, v0, Lcom/facebook/react/views/picker/ReactPickerItem;->color:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 57
    iget-object v0, v0, Lcom/facebook/react/views/picker/ReactPickerItem;->color:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_4
    move-object v1, p2

    goto :goto_1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/react/views/picker/ReactPickerAdapter;->mPrimaryTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/react/views/picker/ReactPickerAdapter;->mPrimaryTextColor:Ljava/lang/Integer;

    .line 72
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/ReactPickerAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method
