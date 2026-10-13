.class Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$1;
.super Ljava/lang/Object;
.source "PermissionRequestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    const-string v0, "deny"

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;Ljava/lang/String;)V

    return-void
.end method
