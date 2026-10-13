.class Lcom/oculus/vrshell/panels/AndroidPanelLayer$1;
.super Landroid/content/ContextWrapper;
.source "AndroidPanelLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/AndroidPanelLayer;->wrapPresentationContext()Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/AndroidPanelLayer;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/AndroidPanelLayer;Landroid/content/Context;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$1;->this$0:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "window"

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSystemService(WINDOW_SERVICE)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$1;->this$0:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-static {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->access$100(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "layout_inflater"

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-static {}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSystemService(LAYOUT_INFLATER_SERVICE)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$1;->this$0:Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-static {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->access$200(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 369
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
