.class Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$5;
.super Ljava/lang/Object;
.source "ProfileHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$5;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$5;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenPrivacySettings()V

    .line 250
    return-void
.end method
