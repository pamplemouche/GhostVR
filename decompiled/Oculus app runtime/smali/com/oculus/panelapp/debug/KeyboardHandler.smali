.class public Lcom/oculus/panelapp/debug/KeyboardHandler;
.super Ljava/lang/Object;
.source "KeyboardHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/KeyboardHandler$KeyboardCommandListener;
    }
.end annotation


# static fields
.field public static kKeyboardCookie:Ljava/lang/String; = "com.oculus.panelapp.debug"


# instance fields
.field mDebugPanel:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

.field mLastFocused:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mLastFocused:Landroid/view/View;

    .line 16
    iput-object p1, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mDebugPanel:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 68
    iput-object p2, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mLastFocused:Landroid/view/View;

    .line 70
    instance-of p1, p2, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mDebugPanel:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keyboard open "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oculus/panelapp/debug/KeyboardHandler;->kKeyboardCookie:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueRawCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mDebugPanel:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keyboard close "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oculus/panelapp/debug/KeyboardHandler;->kKeyboardCookie:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueRawCommand(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateKeyboardCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mLastFocused:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/debug/KeyboardHandler;->kKeyboardCookie:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mLastFocused:Landroid/view/View;

    check-cast p2, Landroid/widget/EditText;

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7190c196

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x93b0ba1

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "BACKSPACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "DISMISS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 57
    :cond_5
    invoke-virtual {p2}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    .line 50
    :cond_6
    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 51
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 53
    :cond_7
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 60
    :goto_1
    instance-of v0, p2, Lcom/oculus/panelapp/debug/KeyboardHandler$KeyboardCommandListener;

    if-eqz v0, :cond_8

    .line 61
    check-cast p2, Lcom/oculus/panelapp/debug/KeyboardHandler$KeyboardCommandListener;

    .line 62
    invoke-interface {p2, p1}, Lcom/oculus/panelapp/debug/KeyboardHandler$KeyboardCommandListener;->onKeyboardCommand(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public updateKeyboardText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mLastFocused:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/debug/KeyboardHandler;->kKeyboardCookie:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/oculus/panelapp/debug/KeyboardHandler;->mLastFocused:Landroid/view/View;

    check-cast p2, Landroid/widget/EditText;

    .line 30
    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 31
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    invoke-interface {v0, v1, p2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    invoke-interface {v0, p2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_0
    return-void
.end method
