.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;
.super Ljava/lang/Object;
.source "SocialReceiveInviteDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->val$activityImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 309
    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->val$activityImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 313
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->val$activityImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->val$activityImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
