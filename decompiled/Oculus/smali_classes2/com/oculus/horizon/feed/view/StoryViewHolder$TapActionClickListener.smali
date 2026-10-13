.class Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;
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
    name = "TapActionClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;Lcom/oculus/horizon/feed/view/StoryViewHolder$1;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;-><init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$300(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;->this$0:Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-static {v3}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$300(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled deep-link"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
