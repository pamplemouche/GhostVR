.class Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$1;
.super Ljava/lang/Object;
.source "SortFilterDropDownMenuWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->init(Landroid/content/Context;)V
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
    .line 62
    iput-object p1, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$1;->this$0:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$1;->this$0:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget$1;->this$0:Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->access$000(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;)Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->access$100(Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 66
    return-void
.end method
