.class Lcom/oculus/horizon/legacy/social/view/UserViewHolder$1;
.super Ljava/lang/Object;
.source "UserViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenProfile(Lcom/oculus/horizon/api/common/user/User;)V

    .line 95
    return-void
.end method
