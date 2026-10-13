.class Lcom/oculus/panelapp/keyboardv2/KeyboardView$1;
.super Landroid/os/Handler;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/keyboardv2/KeyboardView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/keyboardv2/KeyboardView;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView$1;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView$1;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->access$100(Lcom/oculus/panelapp/keyboardv2/KeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardView$1;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-static {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->access$000(Lcom/oculus/panelapp/keyboardv2/KeyboardView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    .line 167
    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
