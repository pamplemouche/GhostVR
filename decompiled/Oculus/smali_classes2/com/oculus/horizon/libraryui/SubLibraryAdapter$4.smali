.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$4;
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
    .line 207
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$4;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$4;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$4;->val$app:Lcom/oculus/library/model/App;

    iget-object v0, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$500(Ljava/lang/String;)V

    .line 211
    return-void
.end method
