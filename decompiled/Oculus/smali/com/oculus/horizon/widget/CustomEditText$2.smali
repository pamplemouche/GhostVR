.class Lcom/oculus/horizon/widget/CustomEditText$2;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 265
    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v0, p2}, Lcom/oculus/horizon/widget/CustomEditText;->access$300(Lcom/oculus/horizon/widget/CustomEditText;Z)V

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v1}, Lcom/oculus/horizon/widget/CustomEditText;->access$400(Lcom/oculus/horizon/widget/CustomEditText;)Z

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/oculus/horizon/widget/CustomEditText;->access$500(Lcom/oculus/horizon/widget/CustomEditText;ZZ)V

    .line 271
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v0, p2}, Lcom/oculus/horizon/widget/CustomEditText;->access$600(Lcom/oculus/horizon/widget/CustomEditText;Z)V

    .line 272
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v0}, Lcom/oculus/horizon/widget/CustomEditText;->access$700(Lcom/oculus/horizon/widget/CustomEditText;)Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomEditText$2;->this$0:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-static {v0}, Lcom/oculus/horizon/widget/CustomEditText;->access$700(Lcom/oculus/horizon/widget/CustomEditText;)Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0
.end method
