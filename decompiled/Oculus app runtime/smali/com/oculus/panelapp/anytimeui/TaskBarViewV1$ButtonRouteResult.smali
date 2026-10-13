.class Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;
.super Ljava/lang/Object;
.source "TaskBarViewV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonRouteResult"
.end annotation


# instance fields
.field final mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field final mDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->this$0:Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 576
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$ButtonRouteResult;->mDetailBar:Lcom/oculus/panelapp/anytimeui/AnytimeUIBarView;

    return-void
.end method
