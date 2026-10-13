.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$7;
.super Ljava/lang/Object;
.source "SubLibraryAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->showContextMenu(Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;Lcom/oculus/library/model/App;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

.field final synthetic val$app:Lcom/oculus/library/model/App;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$7;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$7;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$7;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$7;->val$app:Lcom/oculus/library/model/App;

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$800(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Landroid/view/MenuItem;Lcom/oculus/library/model/App;)Z

    move-result v0

    return v0
.end method
