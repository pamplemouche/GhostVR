.class Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;
.super Ljava/lang/Object;
.source "AnytimeUIButtonBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonRouteResult"
.end annotation


# instance fields
.field final mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

.field final mRouteMatchLength:I

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mButton:Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 146
    iput p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView$ButtonRouteResult;->mRouteMatchLength:I

    return-void
.end method
