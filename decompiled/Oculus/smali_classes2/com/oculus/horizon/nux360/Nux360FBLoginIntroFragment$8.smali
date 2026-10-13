.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;
.super Landroid/text/style/ClickableSpan;
.source "Nux360FBLoginIntroFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createSpannable(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

.field final synthetic val$clickType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    iput-object p2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->val$clickType:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1600(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->val$clickType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 428
    :cond_1
    :goto_1
    return-void

    .line 419
    :sswitch_0
    const-string v2, "tos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1700(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oculus/horizon/navigation/IntentFactory;->newLegalActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 424
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1700(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$8;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oculus/horizon/navigation/IntentFactory;->newLegalActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 419
    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_1
        0x1c158 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 433
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 434
    return-void
.end method
