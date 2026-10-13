.class Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$1;
.super Ljava/lang/Object;
.source "ProfileFragmentAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->makeFriendRequestHeaderParamsProvider()Lcom/oculus/horizon/legacy/social/adapters/FriendRequestHeaderParamsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/model/FriendRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$100(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/oculus/horizon/api/common/user/User;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$1;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$000(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    return-object v0
.end method
