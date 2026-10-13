.class final Lcom/oculus/horizon/store/ControllerWarningUtil$1;
.super Ljava/lang/Object;
.source "ControllerWarningUtil.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Folder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/ControllerWarningUtil;->getSupportedDevicesSequence(Ljava/util/List;ILandroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Folder",
        "<",
        "Lcom/oculus/library/model/InputDevice;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$separatorTemplateResourceID:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oculus/horizon/store/ControllerWarningUtil$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/oculus/horizon/store/ControllerWarningUtil$1;->val$separatorTemplateResourceID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic function(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/oculus/library/model/InputDevice;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/store/ControllerWarningUtil$1;->function(Lcom/oculus/library/model/InputDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public function(Lcom/oculus/library/model/InputDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/ControllerWarningUtil$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/oculus/horizon/store/ControllerWarningUtil;->getBestInputDeviceName(Lcom/oculus/library/model/InputDevice;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/oculus/horizon/store/ControllerWarningUtil$1;->val$context:Landroid/content/Context;

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/oculus/horizon/store/ControllerWarningUtil$1;->val$separatorTemplateResourceID:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
