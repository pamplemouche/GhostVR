.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;
.super Ljava/lang/Object;
.source "AnytimeUIDialogConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogData"
.end annotation


# instance fields
.field public final HEIGHT:I

.field public final HIT_TESTING_BEHAVIOR:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

.field public final RESIZE_BEHAVIOR:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

.field public final SHAPE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public final VIEW_ID:I

.field public final WIDTH:I


# direct methods
.method public constructor <init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V
    .locals 7

    .line 402
    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;)V

    return-void
.end method

.method public constructor <init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->VIEW_ID:I

    .line 388
    iput p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->WIDTH:I

    .line 389
    iput p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->HEIGHT:I

    .line 390
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->RESIZE_BEHAVIOR:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    .line 391
    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->HIT_TESTING_BEHAVIOR:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    .line 392
    iput-object p6, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->SHAPE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    return-void
.end method
