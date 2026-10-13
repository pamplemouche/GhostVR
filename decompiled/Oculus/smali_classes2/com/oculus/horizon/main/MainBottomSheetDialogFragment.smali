.class public Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "MainBottomSheetDialogFragment.java"


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/navbaraction/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveAction:Lcom/oculus/horizon/navbaraction/Action;

.field private mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

.field private mOnTabClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mOnTabClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/oculus/horizon/R$layout;->main_bottom_nav_sheet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/BottomNavHelper;->onBottomSheetClosed()V

    .line 78
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->dismiss()V

    .line 70
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 38
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mActions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 42
    check-cast v0, Landroid/widget/GridLayout;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 44
    iget-object v1, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/navbaraction/Action;

    .line 45
    sget v4, Lcom/oculus/horizon/R$layout;->widget_bottom_nav_sheet_action:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 47
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    new-instance v5, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment$1;-><init>(Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v1, v4}, Lcom/oculus/horizon/navbaraction/Action;->update(Landroid/view/View;)V

    .line 57
    iget-object v5, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mActiveAction:Lcom/oculus/horizon/navbaraction/Action;

    if-ne v1, v5, :cond_2

    .line 58
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 60
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setup(Lcom/oculus/horizon/main/BottomNavHelper;Ljava/util/List;Lcom/oculus/horizon/navbaraction/Action;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/main/BottomNavHelper;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/navbaraction/Action;",
            ">;",
            "Lcom/oculus/horizon/navbaraction/Action;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p2, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mActions:Ljava/util/List;

    .line 86
    iput-object p4, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mOnTabClickListener:Landroid/view/View$OnClickListener;

    .line 87
    iput-object p1, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    .line 88
    iput-object p3, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->mActiveAction:Lcom/oculus/horizon/navbaraction/Action;

    .line 89
    return-void
.end method
