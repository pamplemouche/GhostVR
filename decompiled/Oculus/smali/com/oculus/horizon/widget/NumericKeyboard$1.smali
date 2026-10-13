.class Lcom/oculus/horizon/widget/NumericKeyboard$1;
.super Ljava/lang/Object;
.source "NumericKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 77
    iput-object p1, p0, Lcom/oculus/horizon/widget/NumericKeyboard$1;->this$0:Lcom/oculus/horizon/widget/NumericKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 82
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
