.class public Lcom/oculus/modules/InputDeviceModuleImpl;
.super Lcom/oculus/modules/codegen/InputDeviceModule;
.source "InputDeviceModuleImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/modules/codegen/InputDeviceModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGameControllerIdListImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Ljava/lang/String;>;>;"
    const v9, 0x1000010

    .line 13
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 14
    .local v2, "deviceIds":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    .line 16
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 17
    aget v1, v2, v3

    .line 18
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 19
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    .line 20
    .local v6, "sources":I
    and-int/lit16 v7, v6, 0x401

    const/16 v8, 0x401

    if-eq v7, v8, :cond_0

    and-int v7, v6, v9

    if-ne v7, v9, :cond_1

    .line 22
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "deviceId":I
    .end local v6    # "sources":I
    :cond_2
    invoke-interface {p1, v5}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
