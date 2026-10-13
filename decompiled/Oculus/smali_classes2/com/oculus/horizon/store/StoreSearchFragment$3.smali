.class Lcom/oculus/horizon/store/StoreSearchFragment$3;
.super Ljava/lang/Object;
.source "StoreSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSearchFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSearchFragment;->access$200(Lcom/oculus/horizon/store/StoreSearchFragment;)Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->dismissWindow()V

    .line 135
    const/4 v0, 0x0

    return v0
.end method
