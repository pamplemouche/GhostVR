.class Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$2;
.super Ljava/lang/Object;
.source "AnytimeUINotifsBarView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->inflateCTAViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;->access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUINotifsBarView;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/oculus/vrshell/panels/ViewState;->handleOnHover(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method
