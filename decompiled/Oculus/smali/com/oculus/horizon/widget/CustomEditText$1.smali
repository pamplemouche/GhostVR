.class Lcom/oculus/horizon/widget/CustomEditText$1;
.super Lcom/oculus/horizon/widget/CustomEditText$SimpleTextWatcher;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/CustomEditText;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/CustomEditText;)V
    .locals 1

    .prologue
    .line 246
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomEditText$1;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/CustomEditText$SimpleTextWatcher;-><init>(Lcom/oculus/horizon/widget/CustomEditText;Lcom/oculus/horizon/widget/CustomEditText$1;)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 249
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText$1;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v1}, Lcom/oculus/horizon/widget/CustomEditText;->access$100(Lcom/oculus/horizon/widget/CustomEditText;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$1;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v0}, Lcom/oculus/horizon/widget/CustomEditText;->access$200(Lcom/oculus/horizon/widget/CustomEditText;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$1;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v0}, Lcom/oculus/horizon/widget/CustomEditText;->access$200(Lcom/oculus/horizon/widget/CustomEditText;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$1;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v0}, Lcom/oculus/horizon/widget/CustomEditText;->access$200(Lcom/oculus/horizon/widget/CustomEditText;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomEditText$1;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v3}, Lcom/oculus/horizon/widget/CustomEditText;->access$100(Lcom/oculus/horizon/widget/CustomEditText;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method
