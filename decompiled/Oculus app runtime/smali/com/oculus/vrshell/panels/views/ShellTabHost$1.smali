.class Lcom/oculus/vrshell/panels/views/ShellTabHost$1;
.super Ljava/lang/Object;
.source "ShellTabHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/views/ShellTabHost;

.field final synthetic val$tabIndex:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/views/ShellTabHost;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellTabHost$1;->this$0:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    iput p2, p0, Lcom/oculus/vrshell/panels/views/ShellTabHost$1;->val$tabIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellTabHost$1;->this$0:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    iget v0, p0, Lcom/oculus/vrshell/panels/views/ShellTabHost$1;->val$tabIndex:I

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->setCurrentTab(I)V

    return-void
.end method
