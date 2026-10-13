.class Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$2;
.super Ljava/lang/Object;
.source "HomeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Resume Pressed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->onResume()V

    .line 96
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$200()V

    return-void
.end method
