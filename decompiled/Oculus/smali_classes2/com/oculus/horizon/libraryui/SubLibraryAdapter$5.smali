.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$5;
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
    .line 215
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$5;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$5;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$5;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$5;->val$app:Lcom/oculus/library/model/App;

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$600(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Lcom/oculus/library/model/App;)V

    .line 219
    return-void
.end method
