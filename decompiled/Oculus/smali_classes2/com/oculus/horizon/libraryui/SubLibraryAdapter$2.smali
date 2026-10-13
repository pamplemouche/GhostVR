.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$2;
.super Ljava/lang/Object;
.source "SubLibraryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->onBindViewHolder(Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;I)V
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
    .line 161
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$2;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$200(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 165
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    .line 166
    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$300(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$2;->val$app:Lcom/oculus/library/model/App;

    iget-object v2, v2, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newApplicationPdpFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 168
    return-void
.end method
