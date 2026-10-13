.class Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;
.super Ljava/lang/Object;
.source "ProfilePictureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$renderFlags:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    .line 148
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->getImplementationRenderFlags()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->this$0:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->access$000(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->this$0:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iget-boolean v2, v2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$online:Z

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iget-boolean v3, v3, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$selected:Z

    .line 157
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->access$100(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->this$0:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->access$200(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
