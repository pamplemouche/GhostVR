.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;
.super Ljava/lang/Object;
.source "SocialProfileDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 238
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->val$context:Landroid/content/Context;

    .line 239
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 240
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->val$avatarPictureView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
