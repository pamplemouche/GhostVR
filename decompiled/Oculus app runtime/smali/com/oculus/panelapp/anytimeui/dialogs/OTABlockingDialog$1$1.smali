.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1$1;
.super Ljava/lang/Object;
.source "OTABlockingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)V

    return-void
.end method
