.class final Lcom/oculus/vrshell/panels/ViewState$1;
.super Ljava/lang/Object;
.source "ViewState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ViewState;->setViewStateListeners(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;Landroid/view/View$OnHoverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic val$viewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ViewState$1;->val$viewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ViewState$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ViewState$1;->val$viewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    invoke-static {p1, v0}, Lcom/oculus/vrshell/panels/ViewState;->handleOnClick(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;)V

    .line 44
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ViewState$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
