.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;
.super Ljava/lang/Object;
.source "SocialPartyDialog.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

.field final synthetic val$resources:Landroid/content/res/Resources;

.field final synthetic val$tempDefaultProfile:Landroid/graphics/Bitmap;

.field final synthetic val$urls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;[Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/res/Resources;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->val$urls:[Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->val$tempDefaultProfile:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 173
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->val$urls:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->val$tempDefaultProfile:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->val$resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 183
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    move-result-object v2

    const/16 v3, 0x48

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v3, v4, v5}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getCombinedProfilePictureBitmap(Ljava/util/List;II[Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 179
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->invalidate()V

    return-void
.end method

.method public onFailImage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 191
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnytimeUIGroupImageView.onFailImage() with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onLoadImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
