.class Lcom/oculus/horizon/legacy/feed/FeedFragment$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/feed/FeedFragment;->fetchFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/api/feed/FeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$800(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    sget-object v1, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->LOADED:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$900(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_generic_title:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    :goto_0
    invoke-static {}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    sget-object v1, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->ERROR:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$1000(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/api/feed/FeedResponse;)V
    .locals 5

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    sget-object v1, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->ERROR:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$000(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    sget-object v1, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->LOADED:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$100(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$200(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/oculus/horizon/feed/model/Feed;->fromResponse(Lcom/oculus/horizon/api/feed/FeedResponse;)Lcom/oculus/horizon/feed/model/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/Feed;->getStories()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->setData(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$300(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$400(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->getData()Ljava/util/List;

    move-result-object v2

    .line 132
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$500(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feedbuilder/FeedItem;

    invoke-interface {v0}, Lcom/oculus/horizon/feedbuilder/FeedItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$600(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->this$0:Lcom/oculus/horizon/legacy/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->access$702(Lcom/oculus/horizon/legacy/feed/FeedFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Lcom/oculus/horizon/api/feed/FeedResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;->onResponse(Lcom/oculus/horizon/api/feed/FeedResponse;)V

    return-void
.end method
