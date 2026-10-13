.class Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;
.super Ljava/lang/Object;
.source "StoryViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/feed/view/StoryViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;Lcom/oculus/horizon/feed/view/StoryViewHolder$1;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;-><init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$500(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$500(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    .line 149
    invoke-static {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$500(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$500(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_position"

    iget-object v2, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    iget-object v2, v2, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 155
    invoke-virtual {v2}, Lcom/oculus/horizon/widget/MediaView;->getVideoCurrentPosition()I

    move-result v2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$500(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
