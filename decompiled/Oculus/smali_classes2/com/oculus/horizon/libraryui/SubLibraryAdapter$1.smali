.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$1;
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
    .line 145
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$1;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$100(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$1;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->cancelDownload(Ljava/lang/String;)Z

    .line 149
    return-void
.end method
