.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12$1;
.super Ljava/lang/Object;
.source "SocialSendInviteDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12;->val$iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$12$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
