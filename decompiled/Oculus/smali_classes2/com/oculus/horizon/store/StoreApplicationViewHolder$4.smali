.class Lcom/oculus/horizon/store/StoreApplicationViewHolder$4;
.super Ljava/lang/Object;
.source "StoreApplicationViewHolder.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Folder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreApplicationViewHolder;->maybeShowControllerWarningAndStartPurchaseAndInstallationProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Folder",
        "<",
        "Lcom/oculus/library/model/InputDevice;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$4;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/library/model/InputDevice;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 263
    iget-object v0, p1, Lcom/oculus/library/model/InputDevice;->tag:Ljava/lang/String;

    .line 264
    invoke-static {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->from(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    move-result-object v3

    .line 265
    if-nez v3, :cond_0

    .line 268
    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    sget v1, Lcom/oculus/horizon/samsung/SamsungModule$UL_id;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$4;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    .line 271
    invoke-static {v2}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$200(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    const/4 v1, 0x3

    sget v2, Lcom/oculus/android/AndroidModule$UL_id;->$ul_$xXXandroid_bluetooth_BluetoothAdapter$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$4;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    .line 272
    invoke-static {v4}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$200(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/facebook/inject/InjectionContext;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    sget v4, Lcom/oculus/horizon/bluetooth/BluetoothModule$UL_id;->$ul_$xXXcom_oculus_horizon_bluetooth_InputDeviceHelper$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$4;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    .line 273
    invoke-static {v5}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$200(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/facebook/inject/InjectionContext;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/bluetooth/InputDeviceHelper;

    .line 269
    invoke-static {v3, v0, v1, v2}, Lcom/oculus/horizon/store/ControllerWarningUtil;->hasPairedDevice(Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;Lcom/oculus/horizon/samsung/GearVRControllerHelper;Landroid/bluetooth/BluetoothAdapter;Lcom/oculus/horizon/bluetooth/InputDeviceHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 268
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic function(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    check-cast p1, Lcom/oculus/library/model/InputDevice;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/store/StoreApplicationViewHolder$4;->function(Lcom/oculus/library/model/InputDevice;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
