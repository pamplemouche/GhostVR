.class Lcom/oculus/horizon/help/HelpFragment$1;
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
    .line 67
    iput-object p1, p0, Lcom/oculus/horizon/help/HelpFragment$1;->this$0:Lcom/oculus/horizon/help/HelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://support.oculus.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    iget-object v1, p0, Lcom/oculus/horizon/help/HelpFragment$1;->this$0:Lcom/oculus/horizon/help/HelpFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/help/HelpFragment;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
