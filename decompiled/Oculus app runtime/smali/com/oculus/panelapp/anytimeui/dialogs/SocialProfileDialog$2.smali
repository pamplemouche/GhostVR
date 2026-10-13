.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;
.super Ljava/lang/Object;
.source "SocialProfileDialog.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->setProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

.field final synthetic val$profileImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;->val$profileImageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 6

    .line 208
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    .line 210
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    .line 211
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    .line 212
    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x48

    const/4 v5, 0x4

    .line 211
    invoke-virtual {v2, v3, v4, v5}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getRoundedImageBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 208
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load profile picture with url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;->val$profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 191
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;Landroid/graphics/Bitmap;)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
