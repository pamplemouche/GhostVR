.class Lcom/oculus/horizon/feed/view/StoryViewHolder$1;
.super Ljava/lang/Object;
.source "StoryViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/feed/view/StoryViewHolder;->initButtonOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$1;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$1;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$200(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 80
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method
