.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;
.super Ljava/lang/Object;
.source "ProfilePicturePreselectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    .line 187
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    .line 167
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$400(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->getItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    .line 168
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    .line 169
    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;->pictureResId:I

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$700(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startSaveProfilePicture(Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method
