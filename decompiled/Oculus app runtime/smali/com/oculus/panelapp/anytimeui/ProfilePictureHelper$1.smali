.class Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;
.super Ljava/lang/Object;
.source "ProfilePictureHelper.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$online:Z

.field final synthetic val$renderFlags:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;ZZLandroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->this$0:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$renderFlags:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    iput-boolean p3, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$online:Z

    iput-boolean p4, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$selected:Z

    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 164
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageViewFromUrl.onFailure() with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 142
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;-><init>(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
