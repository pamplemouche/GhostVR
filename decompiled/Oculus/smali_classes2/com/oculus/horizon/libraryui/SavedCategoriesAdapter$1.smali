.class Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$1;
.super Ljava/lang/Object;
.source "SavedCategoriesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;->onBindViewHolder(Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

.field final synthetic val$category:Lcom/oculus/horizon/libraryui/SavedCategory;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;Lcom/oculus/horizon/libraryui/SavedCategory;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$1;->val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;->access$000(Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;)Lcom/oculus/horizon/libraryui/SavedPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$1;->val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SavedPresenter;->diveIntoCategory(Lcom/oculus/horizon/libraryui/SavedCategory;)V

    .line 121
    return-void
.end method
