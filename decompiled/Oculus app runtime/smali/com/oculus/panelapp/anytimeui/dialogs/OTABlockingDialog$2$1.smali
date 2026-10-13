.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;
.super Ljava/lang/Object;
.source "OTABlockingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$202(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;I)I

    .line 228
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$204(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)I

    .line 231
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    .line 232
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;->appStoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;->googlePlayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    .line 238
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$anim;->fade_and_translate_in:I

    .line 237
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 239
    invoke-static {v0, v1}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->setInterpolator(Landroid/view/animation/Animation;Z)V

    .line 240
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
