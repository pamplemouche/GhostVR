.class Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$3;
.super Ljava/lang/Object;
.source "SystemDialogStandardLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

.field final synthetic val$onButtonClickedListener:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$3;->this$0:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$3;->val$onButtonClickedListener:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$3;->val$onButtonClickedListener:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;->onAccept()V

    return-void
.end method
