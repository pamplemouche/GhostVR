.class public Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactDrawerLayoutManager$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter",
        "<",
        "Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;",
        "Lcom/facebook/react/views/drawer/ReactDrawerLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "accessibilityActions"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "accessibilityHint"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "accessibilityLabel"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "accessibilityLiveRegion"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "accessibilityRole"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "accessibilityState"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "accessibilityStates"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "backgroundColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "drawerLockMode"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "drawerPosition"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "drawerWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "elevation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "importantForAccessibility"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "nativeID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "renderToHardwareTextureAndroid"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "rotation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "scaleX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "scaleY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "testID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "translateX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "translateY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "zIndex"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;

    check-cast p2, Lcom/facebook/react/views/drawer/ReactDrawerLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager$$PropsSetter;->setProperty(Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;Lcom/facebook/react/views/drawer/ReactDrawerLayout;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;Lcom/facebook/react/views/drawer/ReactDrawerLayout;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 15
    const/4 v3, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 89
    :goto_1
    return-void

    .line 15
    :sswitch_0
    const-string v4, "accessibilityActions"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "accessibilityHint"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "accessibilityLabel"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "accessibilityLiveRegion"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "accessibilityRole"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "accessibilityState"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "accessibilityStates"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "backgroundColor"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "drawerLockMode"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "drawerPosition"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "drawerWidth"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :sswitch_b
    const-string v4, "elevation"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

    goto :goto_0

    :sswitch_c
    const-string v4, "importantForAccessibility"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "nativeID"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "opacity"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "renderToHardwareTextureAndroid"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "rotation"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "scaleX"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "scaleY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "testID"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "transform"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "translateX"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "translateY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v4, "zIndex"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_0

    .line 17
    :pswitch_0
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 20
    :pswitch_1
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :pswitch_2
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :pswitch_3
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 29
    :pswitch_4
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 32
    :pswitch_5
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 35
    :pswitch_6
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setViewStates(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 38
    :pswitch_7
    if-nez p4, :cond_1

    :goto_2
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setBackgroundColor(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_1
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_2

    .line 41
    :pswitch_8
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setDrawerLockMode(Lcom/facebook/react/views/drawer/ReactDrawerLayout;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 44
    :pswitch_9
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p4}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setDrawerPosition(Lcom/facebook/react/views/drawer/ReactDrawerLayout;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 47
    :pswitch_a
    if-nez p4, :cond_2

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_3
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->getDrawerWidth(Lcom/facebook/react/views/drawer/ReactDrawerLayout;F)V

    goto/16 :goto_1

    :cond_2
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_3

    .line 50
    :pswitch_b
    if-nez p4, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setElevation(Lcom/facebook/react/views/drawer/ReactDrawerLayout;F)V

    goto/16 :goto_1

    :cond_3
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_4

    .line 53
    :pswitch_c
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 56
    :pswitch_d
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setNativeId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 59
    :pswitch_e
    if-nez p4, :cond_4

    move v0, v2

    :goto_5
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setOpacity(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_4
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_5

    .line 62
    :pswitch_f
    if-nez p4, :cond_5

    :goto_6
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setRenderToHardwareTexture(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_5
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    .line 65
    :pswitch_10
    if-nez p4, :cond_6

    :goto_7
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setRotation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_6
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_7

    .line 68
    :pswitch_11
    if-nez p4, :cond_7

    :goto_8
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setScaleX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_7
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_8

    .line 71
    :pswitch_12
    if-nez p4, :cond_8

    :goto_9
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setScaleY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_8
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_9

    .line 74
    :pswitch_13
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 77
    :pswitch_14
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 80
    :pswitch_15
    if-nez p4, :cond_9

    :goto_a
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setTranslateX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_9
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_a

    .line 83
    :pswitch_16
    if-nez p4, :cond_a

    :goto_b
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setTranslateY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_a
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_b

    .line 86
    :pswitch_17
    if-nez p4, :cond_b

    :goto_c
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;->setZIndex(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_c

    .line 15
    :sswitch_data_0
    .sparse-switch
        -0x66a2c736 -> :sswitch_15
        -0x66a2c735 -> :sswitch_16
        -0x4b8807f5 -> :sswitch_e
        -0x3621dfb2 -> :sswitch_11
        -0x3621dfb1 -> :sswitch_12
        -0x34488ed3 -> :sswitch_13
        -0x2b988b88 -> :sswitch_17
        -0x60f430b -> :sswitch_1
        -0x60aa11c -> :sswitch_4
        -0x4d24f13 -> :sswitch_f
        -0x266f082 -> :sswitch_10
        -0x42d1a3 -> :sswitch_b
        0x22936ee -> :sswitch_3
        0xffd3355 -> :sswitch_a
        0x297a753a -> :sswitch_9
        0x2c861b47 -> :sswitch_c
        0x3ebe6b6c -> :sswitch_14
        0x445b6e46 -> :sswitch_2
        0x44c6b3e3 -> :sswitch_5
        0x4cb7f6d5 -> :sswitch_7
        0x540fc8f0 -> :sswitch_6
        0x59bdabcf -> :sswitch_0
        0x6eb2c17f -> :sswitch_8
        0x79eeaf72 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
