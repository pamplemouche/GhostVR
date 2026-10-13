.class Lcom/oculus/horizon/widget/NumericKeyboard$2;
.super Ljava/lang/Object;
.source "NumericKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/NumericKeyboard;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/NumericKeyboard;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/NumericKeyboard;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oculus/horizon/widget/NumericKeyboard$2;->this$0:Lcom/oculus/horizon/widget/NumericKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/oculus/horizon/widget/NumericKeyboard;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/widget/NumericKeyboard$2;->this$0:Lcom/oculus/horizon/widget/NumericKeyboard;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/NumericKeyboard;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 98
    return-void
.end method
