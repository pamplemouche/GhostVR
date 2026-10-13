.class Lcom/oculus/horizon/widget/OculusMediaController$1;
.super Ljava/lang/Object;
.source "OculusMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/OculusMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/OculusMediaController;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/OculusMediaController;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusMediaController$1;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$1;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$1;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;->togglePausePlay(Landroid/view/View;)V

    .line 57
    :cond_0
    return-void
.end method
