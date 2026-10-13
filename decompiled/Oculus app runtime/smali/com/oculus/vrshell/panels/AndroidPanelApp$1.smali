.class Lcom/oculus/vrshell/panels/AndroidPanelApp$1;
.super Ljava/lang/Object;
.source "AndroidPanelApp.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/AndroidPanelApp;->attachResizeLayoutListener(Lcom/oculus/vrshell/panels/AndroidPanelLayer;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/oculus/vrshell/panels/AndroidPanelApp;

.field final synthetic val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

.field final synthetic val$resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/AndroidPanelApp;Lcom/oculus/vrshell/panels/AndroidPanelLayer;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->this$0:Lcom/oculus/vrshell/panels/AndroidPanelApp;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 392
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mWidth:I

    .line 393
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mHeight:I

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->hasPresentation()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 412
    iget-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    iget-object p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 413
    invoke-virtual {p3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-virtual {p4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getHeight()I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->access$000(Landroid/view/View;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;II)Landroid/util/Size;

    move-result-object p2

    .line 414
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 415
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 417
    iget p4, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mWidth:I

    if-ne p3, p4, :cond_1

    iget p4, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mHeight:I

    if-eq p2, p4, :cond_2

    .line 418
    :cond_1
    iget-object p4, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-virtual {p4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object p4

    .line 420
    invoke-static {}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->access$100()Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x5

    new-array p6, p6, [Ljava/lang/Object;

    const/4 p7, 0x0

    aput-object p4, p6, p7

    const/4 p4, 0x1

    iget p7, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mWidth:I

    .line 423
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p6, p4

    const/4 p4, 0x2

    iget p7, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mHeight:I

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p6, p4

    const/4 p4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p6, p4

    const/4 p4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p6, p4

    const-string p4, "Layout change has caused layer \"%s\" to be resized from %d X %d to %d X %d"

    .line 421
    invoke-static {p4, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 419
    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iput p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mWidth:I

    .line 426
    iput p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mHeight:I

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 432
    iget-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->this$0:Lcom/oculus/vrshell/panels/AndroidPanelApp;

    invoke-virtual {p2}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getNativePointer()J

    move-result-wide p3

    iget-object p5, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-virtual {p5}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object p5

    const-string p6, "layerResize"

    invoke-static {p2, p3, p4, p6, p5}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->access$200(Lcom/oculus/vrshell/panels/AndroidPanelApp;JLjava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    iget p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mWidth:I

    iget p4, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->mHeight:I

    invoke-virtual {p2, p3, p4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setSize(II)V

    .line 435
    iget-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-virtual {p2, p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setContentView(Landroid/view/View;)V

    .line 437
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->this$0:Lcom/oculus/vrshell/panels/AndroidPanelApp;

    iget-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;->val$layer:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-static {p1, p2}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->access$300(Lcom/oculus/vrshell/panels/AndroidPanelApp;Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V

    :cond_2
    return-void
.end method
