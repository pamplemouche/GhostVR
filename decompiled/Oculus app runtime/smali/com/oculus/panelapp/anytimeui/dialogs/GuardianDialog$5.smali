.class Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$5;
.super Ljava/lang/Object;
.source "GuardianDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 625
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)[Z

    move-result-object v0

    rem-int/lit8 p1, p1, 0x5

    aput-boolean p2, v0, p1

    return-void
.end method
