.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;
.super Ljava/lang/Object;
.source "SocialReceiveInviteDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 498
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 500
    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;

    iget-object v3, v3, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 501
    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/16 v5, 0x48

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v5, v6}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getRoundedImageBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 498
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->invalidate()V

    return-void
.end method
