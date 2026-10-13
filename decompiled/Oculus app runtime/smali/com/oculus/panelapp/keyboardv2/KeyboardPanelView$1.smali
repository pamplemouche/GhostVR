.class Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView$1;
.super Ljava/lang/Object;
.source "KeyboardPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->setKeyboard(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView$1;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView$1;->val$panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView$1;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-static {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->access$000(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;)Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->reset()V

    .line 59
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView$1;->val$panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->stopTranscription()V

    return-void
.end method
