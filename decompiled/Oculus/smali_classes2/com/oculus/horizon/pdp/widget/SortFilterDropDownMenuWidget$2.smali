.class Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$2;
.super Ljava/lang/Object;
.source "SortFilterDropDownMenuWidget.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->getSortListener()Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$2;->this$0:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$2;->this$0:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->access$200(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$2;->this$0:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->access$300(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 123
    return v1

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
