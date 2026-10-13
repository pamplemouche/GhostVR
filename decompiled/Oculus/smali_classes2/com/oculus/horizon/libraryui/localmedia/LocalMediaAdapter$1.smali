.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;
.super Ljava/lang/Object;
.source "LocalMediaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->getOnClickListener(Lcom/oculus/localmedia/MediaItem;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

.field final synthetic val$mediaItem:Lcom/oculus/localmedia/MediaItem;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;Lcom/oculus/localmedia/MediaItem;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    .line 113
    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaItem;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    invoke-virtual {v2}, Lcom/oculus/localmedia/MediaItem;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    .line 114
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 116
    :goto_0
    new-instance v2, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->access$200(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    .line 119
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    .line 120
    invoke-virtual {v3}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->access$100(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 121
    invoke-static {v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->access$100(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    .line 122
    invoke-virtual {v4}, Lcom/oculus/localmedia/MediaItem;->isVideo()Z

    move-result v4

    .line 118
    invoke-static {v0, v3, v1, v4}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->newInstance(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 117
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 124
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter$1;->val$mediaItem:Lcom/oculus/localmedia/MediaItem;

    .line 115
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
