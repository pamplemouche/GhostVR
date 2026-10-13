.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;
.super Ljava/lang/Object;
.source "ProfilePictureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Lcom/oculus/horizon/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    .line 133
    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/view/TextureView;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    .line 134
    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    .line 135
    invoke-static {v3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    .line 136
    invoke-static {v4}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    .line 132
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/camera/CameraManager;->flipCamera(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;II)V

    .line 137
    return-void
.end method
