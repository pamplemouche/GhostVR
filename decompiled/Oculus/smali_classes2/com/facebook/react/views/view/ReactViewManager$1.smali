.class Lcom/facebook/react/views/view/ReactViewManager$1;
.super Ljava/lang/Object;
.source "ReactViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/view/ReactViewManager;->setFocusable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/view/ReactViewManager;

.field final synthetic val$view:Lcom/facebook/react/views/view/ReactViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/view/ReactViewManager;Lcom/facebook/react/views/view/ReactViewGroup;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->this$0:Lcom/facebook/react/views/view/ReactViewManager;

    iput-object p2, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    .line 252
    invoke-virtual {v0}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 253
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 254
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/facebook/react/views/view/ViewGroupClickEvent;

    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewManager$1;->val$view:Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {v2}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/facebook/react/views/view/ViewGroupClickEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 256
    return-void
.end method
