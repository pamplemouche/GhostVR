.class Lcom/facebook/react/views/textinput/ReactTextInputManager$3;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

.field final synthetic val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

.field final synthetic val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

    iput-object p2, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 905
    and-int/lit16 v0, p2, 0xff

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->getBlurOnSubmit()Z

    move-result v2

    .line 907
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->isMultiline()Z

    move-result v3

    .line 918
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-class v4, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 919
    invoke-virtual {v0, v4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 921
    new-instance v4, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;

    iget-object v5, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 923
    invoke-virtual {v5}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v6}, Lcom/facebook/react/views/textinput/ReactEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/facebook/react/views/textinput/ReactTextInputSubmitEditingEvent;-><init>(ILjava/lang/String;)V

    .line 921
    invoke-virtual {v0, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 925
    if-eqz v2, :cond_1

    .line 926
    iget-object v0, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$3;->val$editText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v0}, Lcom/facebook/react/views/textinput/ReactEditText;->clearFocus()V

    .line 930
    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_3

    .line 946
    :cond_2
    :goto_0
    return v1

    .line 942
    :cond_3
    const/4 v0, 0x5

    if-eq p2, v0, :cond_4

    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

    :cond_4
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method
