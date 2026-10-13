.class Lcom/oculus/horizon/help/HelpFragment$2;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/help/HelpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/help/HelpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/help/HelpFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oculus/horizon/help/HelpFragment$2;->this$0:Lcom/oculus/horizon/help/HelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/help/HelpFragment$2;->this$0:Lcom/oculus/horizon/help/HelpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/help/HelpFragment;->access$000(Lcom/oculus/horizon/help/HelpFragment;)V

    .line 87
    return-void
.end method
