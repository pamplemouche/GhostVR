.class Lcom/oculus/panelapp/debug/XrspTab$1;
.super Ljava/lang/Object;
.source "XrspTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/XrspTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/XrspTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/XrspTab;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oculus/panelapp/debug/XrspTab$1;->this$0:Lcom/oculus/panelapp/debug/XrspTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/oculus/panelapp/debug/XrspTab$1;->this$0:Lcom/oculus/panelapp/debug/XrspTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/XrspTab;->access$300(Lcom/oculus/panelapp/debug/XrspTab;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oculus/panelapp/debug/XrspDebugInfo;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
