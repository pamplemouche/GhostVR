.class final Lcom/oculus/horizon/store/ControllerWarningUtil$2;
.super Ljava/lang/Object;
.source "ControllerWarningUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/ControllerWarningUtil;->getPrioritySortedInputDeviceList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/library/model/InputDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/library/model/InputDevice;Lcom/oculus/library/model/InputDevice;)I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p1, Lcom/oculus/library/model/InputDevice;->tag:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->from(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    move-result-object v0

    .line 65
    iget-object v1, p2, Lcom/oculus/library/model/InputDevice;->tag:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->from(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    move-result-object v1

    .line 67
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_1
    iget v0, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->priority:I

    iget v1, v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->priority:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcom/oculus/library/model/InputDevice;

    check-cast p2, Lcom/oculus/library/model/InputDevice;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/store/ControllerWarningUtil$2;->compare(Lcom/oculus/library/model/InputDevice;Lcom/oculus/library/model/InputDevice;)I

    move-result v0

    return v0
.end method
