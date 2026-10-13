.class Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$2;
.super Ljava/lang/Object;
.source "ProfileFragmentAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/adapters/ProfileHeaderParamsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->makeProfileHeaderParamsProvider()Lcom/oculus/horizon/legacy/social/adapters/ProfileHeaderParamsProvider;
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
    .line 325
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$2;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeightInPx()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$2;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$400(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)I

    move-result v0

    return v0
.end method

.method public getUser()Lcom/oculus/horizon/api/common/user/User;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$2;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$000(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    return-object v0
.end method

.method public isFillingParent()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$2;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$200(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$2;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$300(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
