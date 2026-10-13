.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;
.super Ljava/lang/Object;
.source "OTABlockingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->setupAppStoreLanguages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
