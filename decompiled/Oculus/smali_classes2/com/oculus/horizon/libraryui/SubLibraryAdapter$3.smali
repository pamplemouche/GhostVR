.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;
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

.field final synthetic val$viewHolder:Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;->val$viewHolder:Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;

    iput-object p3, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;->val$viewHolder:Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$3;->val$viewHolder:Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;

    iget-object v3, v3, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;->contextButton:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$400(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Lcom/oculus/horizon/libraryui/SubLibraryAdapter$SubLibraryViewHolder;Lcom/oculus/library/model/App;Landroid/view/View;)V

    .line 176
    return-void
.end method
