.class public Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;
.super Lcom/oculus/panelapp/keyboardv2/KeyboardView;
.source "KeyboardPopupView.java"

# interfaces
.implements Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;


# instance fields
.field private panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$attr;->keyboardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    .line 30
    invoke-virtual {p0, p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->setOnKeyboardActionListener(Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;)V

    return-void
.end method

.method public onHoverEnter(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->onHoverEnter(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    .line 70
    iget-boolean p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->isExitKey:Z

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hidePopupLayer()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hidePopupLayer()V

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverExit()V
    .locals 0

    return-void
.end method

.method public onKey(I[I)V
    .locals 0

    return-void
.end method

.method public onLongPress(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPress(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 0

    return-void
.end method

.method public onRelease(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 6

    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    :goto_0
    if-nez v0, :cond_1

    .line 50
    iget-object v0, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    :cond_1
    if-eqz v0, :cond_2

    .line 52
    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "apk:///assets/keyboard/press.ogg"

    aput-object v5, v3, v4

    const-string v4, "audioPlay %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->commitTextInput(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->panelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->onRelease(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    :cond_2
    return-void
.end method
